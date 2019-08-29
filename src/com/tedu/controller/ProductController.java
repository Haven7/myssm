package com.tedu.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.tedu.model.Category;
import com.tedu.model.Img;
import com.tedu.model.Product;
import com.tedu.service.ICategoryService;
import com.tedu.service.IImgService;
import com.tedu.service.IProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
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
	 * 后台跳转到添加商品页面
	 * 对类别的添加
	 */
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add(Model model) {
		//获取所有的类别
		List<Category> categories = categoryService.list();
		model.addAttribute("categories", categories);
		model.addAttribute(new Product());
		return "admin/product/add";
	}
	
	/**
	 * 后台具体的添加商品操作
	 * 
	 * 做了修改传递了状态参数
	 */
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(Product product,Integer status, Integer cid, MultipartFile files[], HttpServletRequest req) {
		//获取商品类别
		Category category = categoryService.load(cid);
		product.setCategory(category);
		//获取商品状态
		product.setStatus(status);
		//保存商品
		productService.add(product);
		//获取商品图片上传的路径
		String path = req.getSession().getServletContext().getRealPath("/image");
		if(files != null) {
			for(MultipartFile file:files) {
				//得到图片的名字
				String fileName = file.getOriginalFilename();
				File f = new File(path + "/" + fileName);
				try {
					FileUtils.copyInputStreamToFile(file.getInputStream(), f);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Img img = new Img();
				img.setName(fileName);
				img.setProduct(product);
				imgService.add(img);
			}
		}
		return "redirect:/product/products";
	}

	
	/**
	 * 前台查询商品详细信息
	 */
	@RequestMapping(value="/{id}/item", method=RequestMethod.GET)
	public String productItem(@PathVariable int id, Model model) {
		Product product = productService.productItem(id);
		model.addAttribute(product);
		return "client/product_item";
	}
	/**
	 * 后台查询所有商品
	 */
	@RequestMapping(value="/products", method=RequestMethod.GET)
	public String list(Model model) {
		//----------------------------------------狄克
		List<Product> products = productService.list();
		model.addAttribute("products", products);
		return "admin/product/list";
	}
	
	@RequestMapping(value="/{id}/delete", method=RequestMethod.DELETE)
	public String delete(@PathVariable int id) {
		//先删除所有含有product_id的图片，才不会冲突--狄克
		imgService.alldelete(id);
		productService.delete(id);
		return "redirect:/product/products";
	}
}
