package com.tedu.service;

import java.util.List;

import com.tedu.model.Product;
import com.tedu.model.User;

public interface IUserService {
	public void add(User user);
	public void delete(int id);
	public void update(User user);
	public User load(int id);
	public List<User> list();
	public User login(String username, String password);
	

}
