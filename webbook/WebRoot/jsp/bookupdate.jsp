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

<title>My JSP 'bookupdate.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body bgcolor="#B266C2">
	<%
		BookServicesImpl bookserviceimpl = new BookServicesImpl();
		int id = Integer.parseInt(request.getParameter("uid"));
		Book book = bookserviceimpl.selectOne(id);
	%>
	<form action="jsp/dobookupdate.jsp" method="post">
		id<input name="uid" type="text" value="<%=book.getId()%>">
		图书名称<input name="bookname" type="text" value="<%=book.getBookname()%>">
		图书价格<input name="bookprice" type="text"value="<%=book.getBookprice()%>"> 
		图书作者<input name="bookauthor" type="text" value="<%=book.getBookauthor()%>">
		图书库存<input name="booknumber" type="text"value="<%=book.getBooknumber()%>"> 
		<input type="submit" value="修改">
	</form>
</body>
</html>
