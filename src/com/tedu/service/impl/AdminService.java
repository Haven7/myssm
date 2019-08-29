package com.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tedu.dao.IAdminDao;
import com.tedu.dao.impl.AdminDao;
import com.tedu.dao.impl.UserDao;
import com.tedu.excetion.AdminException;
import com.tedu.model.Admin;
import com.tedu.model.User;
import com.tedu.service.IAdminService;
import com.tedu.util.CodeUtil;
@Service
public class AdminService implements IAdminService {
	private IAdminDao adminDao;
	
	@Resource
	public void setAdminDao(IAdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public void add(Admin admin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Admin admin) {
		String password = CodeUtil.getMD5Encoding(admin.getPassword());
		admin.setPassword(password);
		adminDao.update(admin);
	}

	@Override
	public Admin load(int id) {
		Admin admin = adminDao.load(id);
		return admin;
	}

	@Override
	public List<Admin> list() {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	@Override
	public Admin login(String username, String password) {
		// TODO Auto-generated method stub
		Admin admin = adminDao.login(username);
		if(admin == null) {
			throw new AdminException("用户名不存在");
		}
		if(!CodeUtil.getMD5Encoding(password).equals(admin.getPassword())) {
			throw new AdminException("密码不正确");
		}
		return admin;
	}

}
