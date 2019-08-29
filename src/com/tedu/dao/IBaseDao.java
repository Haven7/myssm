package com.tedu.dao;

import java.util.List;

public interface IBaseDao<T> {
	public void add(T t);
	public void delete(int id);
	public void update(T t);
	public T load(int id);
	public List<T> list();
	//-----------------------狄克
	public void alldelete(int id);
}
