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
    
    <title>My JSP 'update.jsp' starting page</title>
    
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
  		UserServicesImpl userserviceimpl = new UserServicesImpl();
  		int id = Integer.parseInt(request.getParameter("uid"));
  		User user = userserviceimpl.selectOne(id);
  	%>
    <form action="jsp/doupdate.jsp" method="post">
    	id<input name="uid" type="text" value="<%=user.getId()%>">
    	用户名<input name="username" type="text" value="<%=user.getUsername()%>">
    	密码<input name="password" type="text" value="<%=user.getPassword()%>">
    	身份<input name="role" type="text" value="<%=user.getRole()%>">
    	<input type="submit" value="修改">
    </form>
  </body>
</html>
