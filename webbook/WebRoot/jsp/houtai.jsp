<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'houtai.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
   <title>houtai</title>
 </head>
	<frameset rows="18%,*,10%">
		<!--上-->
		<frame src="jsp/head.jsp" />
		<!--中-->
		<frameset cols="20%,*" >
			<frame src="jsp/left.jsp" />
			<frame src="jsp/main.jsp" name="mainFrame" />
		</frameset>
		<!--下-->
		<frame src="jsp/foot.jsp"/>
	</frameset>
</html>
