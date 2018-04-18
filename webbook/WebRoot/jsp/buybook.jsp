<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.fuyan.entity.*"%>
<%@ page import="com.fuyan.services.servicesimpl.*"%>
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

<title>My JSP 'buybook.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		int number = Integer.parseInt(request.getParameter("number"));
		int money = Integer.parseInt(request.getParameter("money"));
		
		BookServicesImpl bookservices = new BookServicesImpl();
		Book book = bookservices.selectOne(id);
		int count = book.getBooknumber();
		if (book.getBooknumber() <= 0 || book.getBooknumber() < number) {
			response.sendRedirect("bookerror.jsp");
		} else {
			if(money < number*book.getBookprice()){
				response.sendRedirect("moneyerror.jsp");
			}else{
				count-=number;
				book.setBooknumber(count);
				bookservices.updateBook(book);
				response.sendRedirect("buysuccess.jsp");
			}
		}
	%>
</body>
</html>
