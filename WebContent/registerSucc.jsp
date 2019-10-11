<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <!-- 
  <base href="<%--=basePath --%>">
   -->
    <title>注册成功页面</title>
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
		String userName=request.getParameter("username");
		String password=request.getParameter("password");
		String email = request.getParameter("email");
		String mobile=request.getParameter("mobile"); 
		String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		 String DB_URL = "jdbc:mysql://localhost:3306/test";
		 String USER = "root";
		 String PASS = "123456"; 	
	 	Connection conn = null;
		try {
			// 注册 JDBC 驱动
	        Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL,USER,PASS);
			if(conn==null){
				out.println("连接数据出现异常");
			}
			else{
				
				String sql="insert into user(username,password,email,mobile) values(?,?,?,?)";
				//String sql ="insert into user(username,password,email,mobile) values('"+userName+"','"+password+"',"+"','"+email+"','"+mobile+"')";
				PreparedStatement ps = conn.prepareStatement(sql);		
				 ps.setString(1, userName);	
				ps.setString(2, password);
				ps.setString(3, email);
				ps.setString(4, mobile); 
				ps.execute();
			} 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	 %>
  	<body>
	    <br>注册的用户名为：<%=userName %>
		<br>注册的邮箱为：<%=email%>
		<br>注册的手机号为：<%=mobile %>
	</body>
</html>
