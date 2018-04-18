<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.fuyan.entity.*"%>
<%@ page import="com.fuyan.services.servicesimpl.BookServicesImpl"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'bookmaneger.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	function deleteById(id) {
		if (confirm("是否确认删除！")) {
			location.href = "jsp/dobookdelete.jsp?uid=" + id;
		}
	}
	function updateById(id) {
		location.href = "jsp/bookupdate.jsp?uid=" + id;
	}
</script>
</head>

<body bgcolor="#D8E3ED">
	<h3>图书管理界面</h3>
	<form action="jsp/bookadd.jsp" method = "post">
		<input type="submit" value="添加">
	</form>
	<form action="jsp/selectbook.jsp" method="post">
		<input type="text" name="bookname" placeholder="请输入你要搜索的图书名称" />
		<input type="submit" value="搜索" />
	</form>
		<%
			BookServicesImpl bookserviceimpl = new BookServicesImpl();
			List<Book> list = bookserviceimpl.showAll();
		%>
	<table width="500" height="50" border = "2" bgcolor="#ccc" cellspacing="0" cellpadding="0">
		<tr>
			<td>Id</td>
			<td>图书名称</td>
			<td>图书价格</td>
			<td>图书作者</td>
			<td>图书库存</td>
			<td>删除图书</td>
			<td>修改图书</td>
		</tr>
		<%
			for (int i = 0; i < list.size(); i++) {
		%>
		<tr>
			<td><%=list.get(i).getId()%></td>
			<td><%=list.get(i).getBookname()%></td>
			<td><%=list.get(i).getBookprice()%></td>
			<td><%=list.get(i).getBookauthor()%></td>
			<td><%=list.get(i).getBooknumber()%></td>
			<td><a href="javascript:deleteById(<%=list.get(i).getId()%>)">删除图书</a></td>
			<td><a href="javascript:updateById(<%=list.get(i).getId()%>)">修改图书</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>
