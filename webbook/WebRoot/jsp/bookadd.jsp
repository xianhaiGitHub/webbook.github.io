<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookadd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body  bgcolor="#B266C2">
  <!-- 添加表单 -->
  <form action="jsp/dobookadd.jsp" method="post">
	  	<input type="text" name="bookname" placeholder="请输入图书名称"/></br>
	    <input type="text" name="bookprice" placeholder="请输入图书价格"/></br>
	    <input type="text" name="bookauthor" placeholder="请输入图书作者"/></br>
	    <input type="text" name="booknumber" placeholder="请输入图书数量"/></br>
	    <input type="submit" value="添加到库存">
  </form>
  </body>
</html>
