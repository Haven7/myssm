package com.tedu.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tedu.dao.IBaseDao;
import com.tedu.model.Product;

public class BaseDao<T> implements IBaseDao<T> {
	private SqlSessionFactory sqlSessionFactory;
	
	@Resource
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	protected SqlSession openSession() {
		return sqlSessionFactory.openSession();
	}
	/**
	 * 获取泛型的Class类(运行时类)对象
	 */
	private Class<?> clz;
	private Class<?> getClz() {
		if(clz == null) {
			clz = (Class<?>) ((ParameterizedType)this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
		}
		return clz;
	}
	@Override
	public void add(T t) {
		openSession().insert(getClz().getName() + ".add", t);
	}

	@Override
	public void delete(int id) {
		openSession().delete(getClz().getName() + ".delete", id);
	}
	

	@Override
	public void update(T t) {
		openSession().update(getClz().getName() + ".update", t);
	}

	@Override
	public T load(int id) {
		// TODO Auto-generated method stub
		return openSession().selectOne(getClz().getName() + ".load", id);
	}

	@Override
	public List<T> list() {
		// TODO Auto-generated method stub
		return openSession().selectList(getClz().getName() + ".list");
	}
	//---------------------------------------狄克
		@Override
		public void alldelete(int id) {
			openSession().delete(getClz().getName() + ".alldelete", id);
		}


}
