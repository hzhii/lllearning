<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginSuccess.jsp' starting page</title>
    
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
  		String userName = request.getParameter("username");
//   		out.print(" "+userName);
  		String passWord = request.getParameter("password");  	
//   		out.print(" "+passWord);
  		if(userName.isEmpty()||passWord.isEmpty()){
  		response.sendRedirect("loginError.jsp");
  		}
		String dbUserName="root";
		String pwd1="123456";
	 	String connectURLStr="jdbc:mysql://localhost:3306/test?useSSL=false";		 
		try {	
			Connection conn= DriverManager.getConnection(connectURLStr,dbUserName,pwd1);			
			if(conn==null){
				out.println("连接数据出现异常");
			}
			else{		
				Class.forName("com.mysql.jdbc.Driver");
				String sql ="select * from user where username='"+userName+"'";
				Statement stms = conn.createStatement();		
				ResultSet rs=stms.executeQuery(sql);
				if(rs.next()){
					String realPwd = rs.getString("password");
					if(realPwd.equals(passWord)){
						session.setAttribute("username", userName);
						session.setAttribute("id", rs.getLong("id"));						
						response.setHeader("refresh","1;URL=index.jsp");
// 						out.print(" "+rs.getLong("id"));
					}
					else{
						out.print("pwd is error");
					}
				}
				else{
					out.print("username is error");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/* if(userName.equals("test") && password.equals("test1234")){
			session.setAttribute("userName", userName);
			response.setHeader("refresh","10;URL=index.jsp");
		} */
  	 %> 
  <body>
    <br>客户提交信息的方式：<%=request.getMethod()%>
	<br>使用的协议：<%=request.getProtocol()%>
	<br>获取发出请求字符串的客户端地址：<%=request.getRequestURI()%>
	<br>获取发出请求字符串的客户端地址：<%=request.getRequestURL()%>
	<br>获取提交数据的客户端IP地址：<%=request.getRemoteAddr()%>
	<br>获取服务器端口号：<%=request.getServerPort()%>
	<br>获取服务器的名称：<%=request.getServerName()%>
	<br>获取客户端的主机名：<%=request.getRemoteHost()%>
	<br>获取客户端所请求的脚本文件的文件路径:<%=request.getServletPath()%>
	<br>获得Http协议定义的文件头信息Host的值:<%=request.getHeader("host")%>
	<br>获得Http协议定义的文件头信息User-Agent的值:<%=request.getHeader("user-agent")%>
	<br>获得Http协议定义的文件头信息accept-language的值:<%=request.getHeader("accept-language")%>
	<br>获得请求文件的绝对路径:<%=request.getRealPath("loginCheck.jsp")%>
  </body>
</html>