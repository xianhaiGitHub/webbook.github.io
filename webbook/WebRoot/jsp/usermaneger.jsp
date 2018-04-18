<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.fuyan.entity.*"%>
<%@ page import="com.fuyan.services.servicesimpl.*"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'user.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	function deleteById(id) {
		if (confirm("是否确认删除！")) {
			location.href = "jsp/dodelete.jsp?uid=" + id;
		}
	}
	function updateById(id) {
		location.href = "jsp/update.jsp?uid=" + id;
	}
</script>
</head>

<body bgcolor="#768EA5">
	<h3>
		用户管理界面
		<h3>
			<%
				UserServicesImpl userservicesimpl = new UserServicesImpl();
				List<User> list = userservicesimpl.selectAll();
				BossServiceImpl bossdaoimpl = new BossServiceImpl();
			%>

			<table border="2" bgcolor="#ccc" cellspacing="0" cellpadding="0">
				<tr>
					<td>Id</td>
					<td>用户名</td>
					<td>密码</td>
					<td>角色</td>
					<td>删除</td>
					<td>修改</td>
				</tr>
				<%
  					if(bossdaoimpl.selectId()>0){
  					
  						for(int i=0;i<list.size();i++){ 
  							if(list.get(i).getId() == bossdaoimpl.selectId()){
  						
  								continue;
  							}else{
  					%>
  						<tr>
	  						<td align="center"><%=list.get(i).getId() %></td>
	  						<td align="center"><%=list.get(i).getUsername() %></td>
	  						<td align="center"><%=list.get(i).getPassword() %></td>
	  						<td align="center"><%=list.get(i).getRole() %></td>
	  						<td><a href="javascript:deleteById(<%=list.get(i).getId()%>)">删除</a></td>
	  						<td><a href="javascript:updateById(<%=list.get(i).getId()%>)">修改</a></td>
  						</tr>
  					<%
  							}
  						}
  					}else{
  						for(int i=0;i<list.size();i++){ 
  							if(list.get(i).getRole().equals("boss")){
  						
  								continue;
  							}else{
  					%>
  						<tr>
	  						<td align="center"><%=list.get(i).getId() %></td>
	  						<td align="center"><%=list.get(i).getUsername() %></td>
	  						<td align="center"><%=list.get(i).getPassword() %></td>
	  						<td align="center"><%=list.get(i).getRole() %></td>
	  						<td><a href="javascript:deleteById(<%=list.get(i).getId()%>)">删除</a></td>
	  						<td><a href="javascript:updateById(<%=list.get(i).getId()%>)">修改</a></td>
  						</tr>
  					<%
  							}
  						}
  					}
  					%>

			</table>
</body>
</html>
