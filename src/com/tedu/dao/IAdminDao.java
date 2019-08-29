package com.tedu.dao;

import java.util.List;

import com.tedu.model.Admin;
import com.tedu.model.Product;
import com.tedu.model.User;

public interface IAdminDao extends IBaseDao<Admin>{
	public Admin login(String username);
	
}
