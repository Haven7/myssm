package com.tedu.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tedu.dao.IProductDao;
import com.tedu.model.Product;
@Repository
public class ProductDao extends BaseDao<Product> implements IProductDao {

	/**
	 * 前台首页获取所有上架商品
	 */
	@Override
	public List<Product> listAllProduct() {
		List<Product> products = openSession().selectList(Product.class.getName() + ".listAllProduct");
		return products;
	}

	/**
	 * 前台查询商品详细信息
	 */
	@Override
	public Product productItem(int id) {
		Product product = openSession().selectOne(Product.class.getName() + ".productItem", id);
		return product;
	}
     /*	    返回相应类别id的列表                     狄克*/
	@Override
	public List<Product> listCategoryProduct(int id) {
		List<Product> products = openSession().selectList(Product.class.getName() + ".listCategoryProduct", id);
		return products;
	}
	

}
