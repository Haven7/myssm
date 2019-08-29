<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">

<title>Carbon - Admin Template</title>
<link rel="stylesheet" href="css/admin_main_css/fontawesome-all.min.css">
<link rel="stylesheet" href="css/admin_main_css/styles.css">

</head>
<body class="sidebar-fixed header-fixed">

	<div class="page-wrapper">
		<nav class="navbar page-header"> <a href="#"
			class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto"> 
			<i class="fa fa-bars"></i>
		</a> <!-- logo --> <a class="navbar-brand" href="#"> 
		<img src="img/logo.png" alt="logo">
		</a> 

		<div id="right">
			<span> 欢迎<a href="">${loginAdmin.nickname }</a>&nbsp;&nbsp; 
			<a href="admin/change_password" target="con">更换密码</a>
			<a href="admin/logout" target="_top">退出</a>
			</span>&nbsp;&nbsp; <span id="clock"></span>
		</div>
		</nav>



	</div>

	<script type="text/javascript" src="js/admin_main_js/jquery.min.js"></script>
	<script type="text/javascript" src="js/admin_main_js/popper.min.js"></script>
	<script type="text/javascript" src="js/admin_main_js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/admin_main_js/chart.min.js"></script>
	<script type="text/javascript" src="js/admin_main_js/carbon.js"></script>
	<script type="text/javascript" src="js/admin_main_js/demo.js"></script>

</body>

</html>