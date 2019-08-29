<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Carbon - Admin Template</title>
    <link rel="stylesheet" href="css/admin_main_css/fontawesome-all.min.css">
    <link rel="stylesheet" href="css/admin_main_css/styles.css">
    
</head>
<body>
<div class="page-wrapper">
    <div class="main-container">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">Navigation</li>

                    <li class="nav-item">
                        <a href="admin/admin_user" class="nav-link" target="con">
                            <i class="icon icon-speedometer"></i> 用户管理
                        </a>
                    </li>
                    <li class="nav-item">
                    	<a href="product/products" class="nav-link" target="con">
                            <i class="icon icon-puzzle"></i> 商品管理
                        </a>
                    </li>

                    <li class="nav-item">
                        <a href="category/categories" class="nav-link" target="con" >
                            <i class="icon icon-grid"></i> 类别管理
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="tables.html" class="nav-link">
                            <i class="icon icon-grid"></i> 订单管理
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/admin_main_js/jquery.min.js"></script>
<script type="text/javascript" src="js/admin_main_js/popper.min.js"></script>
<script type="text/javascript" src="js/admin_main_js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/admin_main_js/chart.min.js"></script>
<script type="text/javascript" src="js/admin_main_js/carbon.js"></script>
<script type="text/javascript" src="js/admin_main_js/demo.js"></script>

</body>

</html>
