package com.tedu.dao;

import java.util.List;

import com.tedu.model.Product;

public interface IProductDao extends IBaseDao<Product> {
	public List<Product> listAllProduct();
	public Product productItem(int id);
	
	//          狄克
	public List<Product> listCategoryProduct(int id);
}
