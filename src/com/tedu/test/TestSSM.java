package com.tedu.test;

import static org.junit.Assert.*;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mchange.v2.codegen.CodegenUtils;
import com.tedu.dao.IAdminDao;
import com.tedu.model.Admin;
import com.tedu.util.CodeUtil;

public class TestSSM {

	@Test
	public void test() {
		String path = "application-context.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(path);
		IAdminDao adminDao = (IAdminDao)context.getBean("adminDao");
		//Admin admin = adminDao.load(1);
		//System.out.println(admin);
		Admin admin = new Admin("admin1", "e10adc3949ba59abbe56e057f20f883e", "管理员1", 1);
		adminDao.add(admin);
	}
	@Test
	public void testMD5() {
		String password = "123456";
		String newPassword = CodeUtil.getMD5Encoding(password);
		System.out.println(newPassword);
	}

}
