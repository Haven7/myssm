package com.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tedu.dao.IProductDao;
import com.tedu.model.Product;
import com.tedu.service.IProductService;
@Service
public class ProductService implements IProductService {
	private IProductDao productDao;
	@Resource
	public void setProductDao(IProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public void add(Product product) {
		// TODO Auto-generated method stub
		productDao.add(product);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		productDao.delete(id);
	}
	

	@Override
	public void update(Product product) {
		// TODO Auto-generated method stub
		productDao.update(product);
	}

	@Override
	public Product load(int id) {
		// TODO Auto-generated method stub
		return productDao.load(id);
	}

	@Override
	public List<Product> list() {
		// TODO Auto-generated method stub
		return productDao.list();
	}

	@Override
	public List<Product> listAllProduct() {
		// TODO Auto-generated method stub
		return productDao.listAllProduct();
	}
	
	@Override
	public Product productItem(int id) {
		// TODO Auto-generated method stub
		return productDao.productItem(id);
	}
	
	//------------------------------狄克
		@Override
	public void alldelete(int id) {
		// TODO Auto-generated method stub
		productDao.alldelete(id);
	}
		//------------------------------狄克
		@Override
	public List<Product> listCategoryProduct(int id) {
		// TODO Auto-generated method stub
		return productDao.listCategoryProduct(id);
	}	
		

}
