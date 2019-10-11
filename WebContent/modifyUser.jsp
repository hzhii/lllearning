<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
	<%
				
	String userName=new String();
	userName=(String)session.getAttribute("username");
	%>
  	<body>
	   <form action="modifySucc.jsp" method="post" onSubmit="return check();">
	   	<input type="hidden" name="username" value="<%=userName%>">
	   	 	<input type="hidden" name="id" value="<%=userName%>">
	   		原密码:<input type="password" name="password"/><br>
	   		新密码:<input type="password" name="newPwd1"/><br>
	   		确认密码:<input type="password" name="newPwd2"/><br>
	   		<button type="submit">提交</button>
	   </form>
	</body>
</html>