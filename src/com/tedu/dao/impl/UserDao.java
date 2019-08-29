package com.tedu.dao.impl;

import org.springframework.stereotype.Repository;

import com.tedu.dao.IUserDao;
import com.tedu.model.User;
@Repository
public class UserDao extends BaseDao<User> implements IUserDao {

	public User login(String username) {
		User user = this.openSession().selectOne(User.class.getName() + ".login", username);
		return user;
	}

}
