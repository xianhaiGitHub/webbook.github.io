<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" type="text/css" href="css/login.css">
  </head>
  
  <body>
   
    <div id="wrap">
    	<div id="title">
    		 <p>图书管理系统登陆界面</p>
    	</div>
    	<div id="login">
    		<form action="jsp/doLogin.jsp" method="post">
	    		<div id="input"><input id="input-text" type="text" name = "username"  placeholder="请输入用户名"/></div>
				<div id="input"><input id="input-text" type="password" name = "password" placeholder="请示输入密码"/></div>
				<div id="input"><input id="input-text" type="submit" value="登陆" /></div>
			</form>
    	</div>
    </div>
  </body>
</html>
