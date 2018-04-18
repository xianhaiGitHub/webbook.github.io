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

<title>My JSP 'AdminInit.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function updateById(id) {
		location.href = "jsp/bookupdate.jsp?uid=" + id;
	}
</script>
</head>
<body bgcolor="#70D1F6">
	<h1 align=center>欢迎购买图书</h1>
	<form action="jsp/userselectbook.jsp" action="post" align="center">
		<input type="text" name="bookname" placeholder = "请输入你要购买的图书">
		<input type="submit" value="搜索">
	</form>
	<form action="jsp/buybook.jsp" action="post" align="center">
		<input type="text" name="id" placeholder = "请输入你要购买的图书ID">
		<input type="text" name="number" placeholder = "请输入购买图书的数量">
		<input type="text" name="money" placeholder = "请输入付款金额">
		<input type="submit" value="确定购买">
	</form>
	
	
	<%
		BookServicesImpl bookserviceimpl = new BookServicesImpl();
		List<Book> list = bookserviceimpl.showAll();
	%>
	<center>
		<table width="400" height="100" border="2" bgcolor="#ccc" cellspacing="0" cellpadding="0">
		<tr>
			<td>Id</td>
			<td>图书名称</td>
			<td>图书价格</td>
			<td>图书作者</td>
			<td>图书库存</td>
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
			</td>
		</tr>
		<%
			}
		%>
	</table>
	</center>
</body>
</html>
