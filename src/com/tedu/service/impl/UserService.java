package com.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tedu.dao.IUserDao;
import com.tedu.excetion.UserException;
import com.tedu.model.User;
import com.tedu.service.IUserService;
import com.tedu.util.CodeUtil;
@Service
public class UserService implements IUserService {
	private IUserDao userDao;
	@Resource
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	public void add(User user) {
		String password = CodeUtil.getMD5Encoding(user.getPassword());
		user.setPassword(password);
		userDao.add(user);
	}

	public void delete(int id) {
		userDao.delete(id);
	}

	public void update(User user) {
		userDao.update(user);
	}

	public User load(int id) {
		User user = userDao.load(id);
		return user;
	}

	public List<User> list() {
		List<User> users = userDao.list();
		return users;
	}

	public User login(String username, String password) {
		User user = userDao.login(username);
		if(user == null) {
			throw new UserException("用户名不存在");
		}
		if(!CodeUtil.getMD5Encoding(password).equals(user.getPassword())) {
			throw new UserException("密码不正确");
		}
		return user;
	}

}
