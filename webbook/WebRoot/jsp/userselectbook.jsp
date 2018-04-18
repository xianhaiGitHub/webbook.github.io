<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.fuyan.entity.*" %>
<%@ page import="com.fuyan.services.servicesimpl.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userselectbook.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#ccc">
     <%
  	 	 String bookname = request.getParameter("bookname");
  	 	 if(bookname==""){
  	 	 	response.sendRedirect("useselect.jsp");
  	 	 }
  	 	 BookServicesImpl bookserviceimpl = new BookServicesImpl();
  	 	 List<Book> list1 = bookserviceimpl.selectBybookname(bookname);
  	  %>
  	   <table width="500" heigth="500" border="2" bgcolor="#ccc" cellspacing="0" cellpadding="0">
		<tr>
			<td>Id</td>
			<td>图书名称</td>
			<td>图书价格</td>
			<td>图书作者</td>
			<td>图书库存</td>
		</tr>
		<%
			for (int i = 0; i < list1.size(); i++) {
		%>
		<tr>
			<td><%=list1.get(i).getId()%></td>
			<td><%=list1.get(i).getBookname()%></td>
			<td><%=list1.get(i).getBookprice()%></td>
			<td><%=list1.get(i).getBookauthor()%></td>
			<td><%=list1.get(i).getBooknumber()%></td>
		</tr>
		<%
			}
		%>
	</table>
  </body>
</html>
