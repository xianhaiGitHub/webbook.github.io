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
    
    <title>My JSP 'Regist.jsp' starting page</title>
    
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
	    		String username=request.getParameter("username");
	    		String password=request.getParameter("password");
	    		if(username == "" || password == ""){
	    			response.sendRedirect("error1.jsp");
	    		}else{
	    			User user = new User();
		    	 	user.setUsername(username);
		    	 	user.setPassword(password);
		    	 	user.setRole("user");
		    	 	UserServicesImpl userservicesimpl = new UserServicesImpl();
		    	 	User user1= userservicesimpl.selectByCondition(username, password);
		    	 	if(user1==null){
	    	 			userservicesimpl.regist(user);
	    	 			response.sendRedirect("Login.jsp");
		    	 	}else{
		    	 		response.sendRedirect("error2.jsp");
		    	 	}
	    		}
    		%>
  </body>
</html>
