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
    
    <title>My JSP 'selectbook.jsp' starting page</title>
    
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
			location.href = "jsp/dobookdelete.jsp?uid=" + id;
		}
	}
	function updateById(id) {
		location.href = "jsp/bookupdate.jsp?uid=" + id;
	}
</script>
  </head>
  <body>
  	 <%
  	 	 String bookname = request.getParameter("bookname");
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
			<td>删除图书</td>
			<td>修改图书</td>
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
			<td><a href="javascript:deleteById(<%=list1.get(i).getId()%>)">删除图书</a></td>
			<td><a href="javascript:updateById(<%=list1.get(i).getId()%>)">修改图书</a></td>
		</tr>
		<%
			}
		%>
	</table>
  	  
  </body>
</html>
