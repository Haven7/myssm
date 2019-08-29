<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" class="no-js">
<head>

<meta charset="UTF-8" />
<base href="<%=basePath%>">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>login</title>
<link rel="stylesheet" type="text/css" href="css/admin_login_css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/admin_login_css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/admin_login_css/login.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/admin_login_css/component.css" />
<script type="text/javascript" src="js/admin_login_js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/admin_login_js/login.js" charset="gb2312"></script>
<script type="text/javascript">
			if(window != top) {
				top.location.href = location.href; //session失效跳出frameset
			}
		</script>
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body>
	
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>管理员登录</h3>
						<form id="Login" name="Login" method="post" onsubmit="" action="<%=request.getContextPath()%>/admin/login">
							<div class="input_outer">
								<span class="u_user"></span>
								<input id="username" name="username" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户" autocomplete="off">
								<span id="count-msg" class="error"></span>
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input id="password" name="password" class="text" style="color: #FFFFFF !important; "value="" type="password" placeholder="请输入密码">
								<span id="password-msg" class="error"></span>
							</div>
							<li text-align: center;>
							<input type="submit" name="Submit"  value="登录" />
							<input type="reset" name="Reset" value="重置" />
							</li>
							</form>
						
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="js/admin_login_js/TweenLite.min.js"></script>
		<script src="js/admin_login_js/EasePack.min.js"></script>
		<script src="js/admin_login_js/rAF.js"></script>
		<script src="js/admin_login_js/demo-1.js"></script>
	
	</body>
</html>