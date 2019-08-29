<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/content.css">
	<style type="text/css">
		#down table {
			position: relative;
			left: 50%;
			margin-left: -250px;
			top: 50px;
			border-top: 1px #999 solid;
			border-right: 1px #999 solid;
		}
		table tr {
			height: 40px;
			color: #4C8FBD;
		}
		table tr td {
			border-left: 1px #999 solid;
			border-bottom: 1px #999 solid;
		}
	</style>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".del").click(function(){
				if(confirm("确认删除吗？") == true) {
					var href = $(this).attr("href");
					$("form").attr("action", href).submit();
					return false;
				}
				else {
					return false;
				}
			});
		});
	</script>
  </head>
  
  <body>
  	<div id="up">
	   <ul>
	    	<li><span><a href="admin/welcome">平台首页 </a>&gt; 商品管理 &gt; 商品图片</span></li>
	   </ul>
	</div>
	<div id="down">
	    <table width="500px" cellpadding="0" cellspacing="0">
	    	<c:forEach items="${imgs }" var="img">
	    		<tr>
	    			<td><img src="<%=request.getContextPath()%>/image/${img.name }" height="100px"/></td>
	    			<td width="300" align="center"><a href="">删除</a></td>
	    		</tr>
	    	</c:forEach>
	    </table>
    </div>
  </body>
</html>
