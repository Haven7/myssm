package com.tedu.excetion;
/**
 * 自定义异常：
 * 1.创建一个类继承自RuntimeException
 * 2.重写RuntimeException的五个构造方法
 */
public class AdminException extends RuntimeException {

	public AdminException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

	public AdminException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public AdminException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public AdminException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}
	
}
