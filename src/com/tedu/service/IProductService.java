package com.tedu.service;

import java.util.List;

import com.tedu.model.Product;

public interface IProductService {
	public void add(Product product);
	public void delete(int id);
	public void update(Product product);
	public Product load(int id);
	public List<Product> list();
	public List<Product> listAllProduct();
	public Product productItem(int id);
	public void alldelete(int id);
	
	public List<Product> listCategoryProduct(int id);
}
