package com.tedu.dao;

import com.tedu.model.User;

public interface IUserDao extends IBaseDao<User> {
	public User login(String username);
}
