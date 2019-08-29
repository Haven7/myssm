package com.tedu.service;

import java.util.List;

import com.tedu.model.Admin;
import com.tedu.model.User;

public interface IAdminService {
	public void add(Admin admin);
	public void delete(int id);
	public void update(Admin admin);
	public Admin load(int id);
	public List<Admin> list();
	public Admin login(String username, String password);
	
}
