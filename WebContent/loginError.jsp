<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户名或密码错误</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script>
		$(function(){
		    var wait=10;  
		    timeOut();  
		    function timeOut(){
		      
		        if(wait==0){  
		           window.location.href="login.jsp";
		        }else{                    
		            setTimeout(function(){  
		                wait--;  
		                $('#seconds').text(wait);  
		                timeOut();  
		            },1000);  
		        }  
		    }  
		});

  </script>
  <body>
    <h2>用户名或密码输入错误，请仔细检查后重新登录！ </h2> <br>
    <h3>本页面将在<span id="seconds" style="color:red;">10</span>秒后跳转到登录页面</h3>
    <a href="login.jsp">直接跳转</a>
  </body>
</html>
