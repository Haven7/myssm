package com.tedu.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tedu.model.Category;
import com.tedu.model.Product;
import com.tedu.service.ICategoryService;
import com.tedu.service.IImgService;
import com.tedu.service.IProductService;
import com.tedu.service.impl.ImgService;
import com.tedu.service.impl.ProductService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	private ICategoryService categoryService;
	private IProductService productService;
	private IImgService imgService;

	@Resource
	public void setCategoryService(ICategoryService categoryService) {
		this.categoryService = categoryService;
	}
	@Resource
	public void setProductService(IProductService productService) {
		this.productService = productService;
	}
	
	@Resource
	public void setImgService(IImgService imgService) {
		this.imgService = imgService;
	}
	/**
	 * 跳转到类别添加页面
	 */
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute(new Category());
		return "admin/category/add";
	}

	/**
	 * 保存商品类别
	 */
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(Category category) {
		categoryService.add(category);
		return "redirect:/category/categories";
	}
	/**
	 * 跳转到商品类别列表页面
	 */
	@RequestMapping(value="/categories", method=RequestMethod.GET)
	public String list(Model model) {
		List<Category> categories = categoryService.list();
		model.addAttribute("categories", categories);
		return "admin/category/list";
	}
	
	
	/**
	 * 删除商品类别
	 */
	@RequestMapping(value="/{id}/delete", method=RequestMethod.DELETE)
	public String delete(@PathVariable int id) {
		//获取所有该类别的商品id，循环删除图片       狄克
		/*listCategoryProduct写在product.xml中，用于查询相应类的商品*/
		List<Product> products=productService.listCategoryProduct(id);
		for(int i=0;i<products.size();i++) {
			System.out.println(products.get(i).getId()+"+++++++++++++++++++++++++++++++");
			imgService.alldelete(products.get(i).getId());
		}
		
		//删除与该类别有关的产品--狄克

		productService.alldelete(id);
		categoryService.delete(id);
		return "redirect:/category/categories";
	}
}
