package com.tedu.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tedu.excetion.AdminException;
import com.tedu.model.Admin;
import com.tedu.model.User;
import com.tedu.service.IAdminService;
import com.tedu.service.IUserService;
import com.tedu.service.impl.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private IAdminService adminService;
	private IUserService userService;

	@Resource
	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}
	
	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(String username, String password, AdminException e, Model model, HttpSession session) {
		Admin admin = adminService.login(username, password);
		session.setAttribute("loginAdmin", admin);
		return "admin/main";
	}
	@RequestMapping(value="/top", method=RequestMethod.GET)
	public String top() {
		return "admin/top";
	}
	
	@RequestMapping(value="/left", method=RequestMethod.GET)
	public String left() {
		return "admin/left";
	}
	@RequestMapping(value="/welcome", method=RequestMethod.GET)
	public String welcome() {
		return "admin/welcome";
	}
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("loginAdmin");
		return "redirect:/login.jsp";
	}
	
	@RequestMapping(value="/admin_user", method=RequestMethod.GET)
	public String list(Model model) {
		//----------------------------------------樊海文
		List<User> users= userService.list();
		model.addAttribute("users", users);
		return "admin/users/list";
	}
	
	
	@RequestMapping(value="/{id}/delete", method=RequestMethod.GET)
	//----------------------------------------樊海文
	public String delete(@PathVariable int id) {
		userService.delete(id);
		return "redirect:/admin/admin_user";
	}
	
	@RequestMapping(value="/{id}/fraze", method=RequestMethod.GET)
	//----------------------------------------樊海文
	public String fraze(@PathVariable int id) {
		User user=userService.load(id);
		user.setStatus(1);
		userService.update(user);
		
		return "redirect:/admin/admin_user";
	}
	
	@RequestMapping(value="/{id}/resetnormal", method=RequestMethod.GET)
	//----------------------------------------樊海文
	public String resetnormal(@PathVariable int id) {
		
		User user=userService.load(id);
		user.setStatus(0);
		userService.update(user);
		return "redirect:/admin/admin_user";
	}
	
	@RequestMapping(value="/change_password", method=RequestMethod.GET)
	public String changepassword(String password, HttpSession session) {
		//----------------------------------------樊海文
		return "admin/admin/change_pwd";
	}
	
	@RequestMapping(value="/change_pwd", method=RequestMethod.POST)
	public String changepwd(String password, HttpSession session) {
		//----------------------------------------樊海文
		Admin admin= (Admin) session.getAttribute("loginAdmin");
	    admin.setPassword(password);
	    adminService.update(admin);
		session.removeAttribute("loginAdmin");
		return "redirect:/login.jsp";
	}
	
}
