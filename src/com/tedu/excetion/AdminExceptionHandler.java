package com.tedu.excetion;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class AdminExceptionHandler {
	@ExceptionHandler(value={AdminException.class, UserException.class})
	public String handlerException(AdminException e, Model model) {
		model.addAttribute("e", e);
		return "error";
	}
}
