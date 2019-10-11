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
    <title>修改成功页面</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
	<%
		String userName=new String();
		userName=(String)session.getAttribute("username");
		String password = request.getParameter("password");
		String password1 = request.getParameter("newPwd1");
		//以下这一段id报错,For input string: "test"
		Long id=Long.parseLong(request.getParameter("id"));
		String dbUserName="root";
		String dbPassword="123456";
	 	String connectURLStr="jdbc:mysql://localhost:3306/test";	
		try {		
			Connection conn=DriverManager.getConnection(connectURLStr,dbUserName,dbPassword);			
			if(conn==null){
				out.println("连接数据出现异常");
			}
			else{	
				Class.forName("com.mysql.jdbc.Driver");		
				String sql ="select * from user where id="+id;
				Statement stms = conn.createStatement();		
				ResultSet rs=stms.executeQuery(sql);
				if(rs.next()){
					String oldpassword = rs.getString("password");
					if(oldpassword.equals(password)){
						sql ="update user set password=? where id=?";
						PreparedStatement ps = conn.prepareStatement(sql);
						ps.setString(1,password1);
						ps.setLong(2,id);
						ps.execute();
						out.print("修改成功!");
					}
					else{
						out.print("输入的原密码错误,无法修改密码");
					}
				}
				else{
					out.print("不存在此用户");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	 %>	
	

  	<body>
	   <a href="index.jsp">返回主页</a>
	</body>
</html>