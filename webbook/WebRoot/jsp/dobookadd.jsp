<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.fuyan.entity.*"%>
<%@ page import="com.fuyan.services.servicesimpl.BookServicesImpl"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dobookadd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body >
   	<%
   		request.setCharacterEncoding("UTF-8");
   		String bookname = request.getParameter("bookname");
   		double bookprice = Double.parseDouble(request.getParameter("bookprice"));
   		String bookauthor = request.getParameter("bookauthor");
   		int booknumber = Integer.parseInt(request.getParameter("booknumber"));
   		Book book= new Book();

   		book.setBookname(bookname);
   		book.setBookprice(bookprice);
   		book.setBookauthor(bookauthor);
   		book.setBooknumber(booknumber);
   		BookServicesImpl bookservicesimpl = new  BookServicesImpl();
   		bookservicesimpl.add(book);
   		response.sendRedirect("bookmaneger.jsp");
   	 %>
  </body>
</html>
