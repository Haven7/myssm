<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
			font-size: 14px;
		}
		
		#up {
			height: 40px;
			border-bottom: 1px #999 dotted;
		}
		#up ul li {
			background: url("/shopping/img/hold.png") 0 0 no-repeat #e5e5e5;
			color: #4C8FBD;
			background-position: 5px 9px;
			height: 40px;
		}
		
		#up ul li span {
			position: relative;
			top: 12px;
			left: 30px;
		}
		
		#down tr {
			height: 60px;
		}
		
		#up a:VISITED,#up a:LINK {
			color: #4C8FBD;
			text-decoration: none;
		}
		#up a:HOVER {
			color: #4C8FBD;
			text-decoration: none;
		}
		.head {
			background: #438EB9;
			color: #fff;
		}
		#down table {
			position: relative;
			left: 50%;
			margin-left: -250px;
			top: 50px;
		}
		
		#down tr {
			height: 40px;
		}
		.in {
			height: 30px;
			width: 360px;
		}
		.su {
			height: 30px;
			width: 80px;
			background: #438EB9;
			border-radius: 5px;
			margin-left: 30px;
		}
		
		#down table {
			position: relative;
			left: 50%;
			margin-left: -250px;
			top: 50px;
		}
		
		#down tr {
			height: 40px;
		}
		.in {
			height: 30px;
			width: 360px;
		}
		.su {
			height: 30px;
			width: 80px;
			background: #438EB9;
			border-radius: 5px;
			margin-left: 30px;
		}
		#up a:VISITED,#up a:LINK {
			color: #4C8FBD;
			text-decoration: none;
		}
		#up a:HOVER {
			color: #4C8FBD;
			text-decoration: none;
		}
	</style>

  </head>
  
  <body>
	<div id="up">
	   <ul>
	    	<li><span><a href="admin/welcome">平台首页 </a>&gt; 类别管理 &gt; 类别修改</span></li>
	   </ul>
	</div>
	<div id="down">
	    <sf:form action="category/${category.id }" method="post" modelAttribute="category">
	    	<input type="hidden" name="_method" value="PUT">
	    	<sf:hidden path="id"/>
	   		<table width="500px">
	   			<tr>
	   				<td>类别名称</td>
	   				<td><sf:input path="name" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>类别描述</td>
	   				<td><sf:textarea path="describe" cols="49" rows="3"/></td>
	   			</tr>
	   			<tr>
	   				<td></td>
	   				<td>
	   					<input type="submit" value="修&nbsp;&nbsp;&nbsp;改" class="su">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	   					<input type="reset" value="清&nbsp;&nbsp;&nbsp;空" class="su">
	   				</td>
	   			</tr>
	   		</table>
	    </sf:form>
    </div>
  </body>
</html>
