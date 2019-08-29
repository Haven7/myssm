package com.tedu.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tedu.model.Product;
import com.tedu.service.IProductService;

@Controller
public class IndexController {
	private IProductService productService;

	@Resource
	public void setProductService(IProductService productService) {
		this.productService = productService;
	}
	
	@RequestMapping(value="/index.html", method=RequestMethod.GET)
	public String index(Model model) {
		List<Product> products = productService.listAllProduct();
		for(Product product:products) {
			System.out.println(product.getImgs().get(0).getName() + "---------------------");
		}
		model.addAttribute("products", products);
		return "client/index";
	}
}
