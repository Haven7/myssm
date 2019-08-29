package com.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tedu.dao.ICategoryDao;
import com.tedu.model.Category;
import com.tedu.service.ICategoryService;
@Service
public class CategoryService implements ICategoryService {
	private ICategoryDao categoryDao;
	@Resource
	public void setCategoryDao(ICategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	@Override
	public void add(Category category) {
		// TODO Auto-generated method stub
		categoryDao.add(category);
	}
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		categoryDao.delete(id);
	}
	@Override
	public void update(Category category) {
		// TODO Auto-generated method stub
		categoryDao.update(category);
	}
	@Override
	public Category load(int id) {
		// TODO Auto-generated method stub
		return categoryDao.load(id);
	}
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categoryDao.list();
	}
	
	
}
