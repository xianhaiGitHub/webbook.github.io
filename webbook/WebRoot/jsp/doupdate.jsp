<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.fuyan.entity.*" %>
<%@ page import="com.fuyan.services.servicesimpl.UserServicesImpl" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doupdate.jsp' starting page</title>
    
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
   		int id = Integer.parseInt(request.getParameter("uid"));
   		String username = request.getParameter("username");
   		String password = request.getParameter("password");
   		String role = request.getParameter("role");
   		
   		User user = new User();
   		user.setId(id);
   		user.setUsername(username);
   		user.setPassword(password);
   		user.setRole(role);
   		UserServicesImpl userService = new UserServicesImpl();
   		userService.updateUsers(user);
   		response.sendRedirect("usermaneger.jsp");
   	%>
  </body>
</html>
