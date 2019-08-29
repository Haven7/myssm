<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/content.css">
<style type="text/css">
#down table {
	position: relative;
	left: 50%;
	margin-left: -500px;
	top: 50px;
	border-top: 1px #999 solid;
	border-right: 1px #999 solid;
}

#down tr {
	height: 60px;
}

#down tr td {
	text-align: center;
	border-left: 1px #999 solid;
	border-bottom: 1px #999 solid;
}

#up a:VISITED, #up a:LINK {
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

tbody tr:nth-child(odd) {
	background: #e5e5e5;
}

tbody tr:nth-child(even) {
	background: #d5d5d5;
}
</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/delete.js" charset="gb2312"></script>
</head>

<body>
	<div id="up">
		<ul>
			<li><span><a href="admin/welcome">平台首页 </a></span></li>
		</ul>
	</div>
	<div id="up">
		<ul>
			<li><span><a href="admin/welcome">平台首页 </a></span></li>
		</ul>
	</div>
	

	<div id="down">

		
			<table width="1000px" cellpadding="0" cellspacing="0">
				<thead>
					<tr class="head">
						<td>序号</td>
						<td>用户名</td>
						<td>用户电话</td>
						<td>用户生日</td>
						<td>用户昵称</td>
						<td>用户状态</td>
						<td>执行操作</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users }" var="user" varStatus="i">
						<tr>
							<td>${i.index + 1 }</td>
							<td>${user.username }</td>
							<td>${user.phone }</td>
							<td>${user.birth }</td>
							<td>${user.nickname }</td>
							<td><c:if test="${user.status eq 0 }">正常</c:if> <c:if
									test="${user.status eq 1 }">冻结</c:if></td>
							<td><c:if test="${user.status eq 0 }">
									<a href="admin/${user.id }/fraze">冻结</a>&nbsp;</c:if> <c:if
									test="${user.status eq 1 }">
									<a href="admin/${user.id }/resetnormal">恢复</a>&nbsp;</c:if> <a
								href="admin/${user.id }/delete">删除</a>&nbsp;</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		
	</div>

</body>
</html>


