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
	<link rel="stylesheet" type="text/css" href="css/regist.css">
  </head>
  
  <body>
    <!-- head S -->
	<div id="header">
		<div id = "head-logo"></div>
		<div id = "head-title"></div>
	</div>
	<!-- head E-->
	
	<!-- 中  S -->
	<div id="middle">
		<div id="middle-div1">
			<div id="regist">
				<p><font size="16">创建账号</font></p></br>
				<form action="jsp/doRegist.jsp" method="post">
					<div id="input"><input id="input-text1" type="text" name="username"  placeholder ="请输入用户名" onblur="userCheck()"/></div>
					<div id="input"><input id="input-text2" type="password" name="password" placeholder ="请输入密码" "/></div>
					<div id="input"><input id="input-text3" type="submit" value="免费注册"  /></div>
				</form>
				
				<form  margin-left=500px action="jsp/Login.jsp">
					<div id="input"><input id="input-text4" type="submit" value="已有账号" /></div>
				</form>
			</div>
		</div>
	</div>
	<!-- 中  E -->
	<!-- foot  S -->
	<div id="foot">
		<div foot-pic>
			
		</div>
		<div foot-p></div>
	</div>
	<!-- foot  S -->
</body>

<script type="text/javascript">
	function userCheck(){
	var oIt1=document.getElementById("input-text1").value;
	var re=/^[a-zA-Z0-9_-]{4,16}$/;//4到16位（字母，数字，下划线，减号）
	var rez=re.test(oIt1);
		if(oIt1==""){
			alert("用户名不能为空");
		}else if(rez){
			
		}else{
			alert("用户名格式错误,请输入4-16位字母，数字，下划线，减号");
		}
	}
	
/* 	function pswCheck(){
	var oIt2=document.getElementById("input-text2").value;
		if(oIt2==""){
			alert("密码不能为空");
		}
	} */
</script>
</html>
