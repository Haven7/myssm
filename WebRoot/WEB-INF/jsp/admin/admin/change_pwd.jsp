<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <meta charset="UTF-8">
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin_resetpwd_css/reset.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin_resetpwd_css/revise.css" />
 	<script type="text/javascript" src="<%=request.getContextPath()%>/js/admin_resetpwd_js/jquery-3.1.1.min.js"></script> 
   <script type="text/javascript" src="<%=request.getContextPath()%>/js/admin_resetpwd_js/revise.js" charset="utf-8"></script>
   <!--  <script type="text/javascript">
		if(window != top) {
			top.location.href = location.href;      //session失效跳出frameset
		}
	</script> -->
  </head>
  
  <body>
   
	<div class="loginwarrp">
		<div class="logo">密码修改</div>
        <div class="revise_form">                                                  <!-- 走controllor的admin/login 方法 -->
			<form id="revise" name="revise" method="post" onsubmit="" action="admin/change_pwd">
				<li class="login-item">
					<span>新&nbsp密&nbsp码&nbsp;：</span>
					<input type="password" id="password" name="password" class="login_input" >
                    <span id="password-msg" class="error"></span>
				</li>
				<li class="login-item">
					<span>确认密码：</span>
					<input type="password" id="password1" name="password1" class="login_input" >
                    <span id="password1-msg" class="error"></span>
				</li>
				<li class="login-sub">
					<input type="submit" name="Submit" value="确认修改" />
                    <input type="reset" name="Reset" value="重置" />
				</li>                      
           </form>
		</div>
	</div>

<script type="text/javascript">
		window.onload = function() {
			var config = {
				vx : 4,
				vy : 4,
				height : 2,
				width : 2,
				count : 100,
				color : "121, 162, 185",
				stroke : "100, 200, 180",
				dist : 6000,
				e_dist : 20000,
				max_conn : 10
			};
			
		};
	</script>
	
  </body>
</html>
