package com.tedu.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tedu.dao.IAdminDao;
import com.tedu.model.Admin;
import com.tedu.model.Product;
import com.tedu.model.User;
@Repository
public class AdminDao extends BaseDao<Admin> implements IAdminDao {
	@Override
	public Admin login(String username) {
		// TODO Auto-generated method stub
		return openSession().selectOne(Admin.class.getName() + ".login", username);
	}

	
}
