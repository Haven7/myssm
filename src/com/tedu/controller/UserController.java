package com.tedu.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tedu.model.Product;
import com.tedu.model.User;
import com.tedu.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	private IUserService userService;

	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	/**
	 * 跳转到登录页面
	 */
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		return "client/login";
	}
	
	/**
	 * 用户登录登录
	 */
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(String username, String password, HttpSession session) {
		User user = userService.login(username, password);
		session.setAttribute("loginUser", user);
		return "redirect:/index.html";
	}
	
	/**
	 * 跳转到注册页面
	 */
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(Model model) {
		model.addAttribute(new User());
		return "client/register";
	}
	/**
	 * 用户注册方法
	 */
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(User user) {
		userService.add(user);
		return "redirect:/user/login";
	}
	
	
}
