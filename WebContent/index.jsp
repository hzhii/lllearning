<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商城</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
	
  </head>
  <%	
 	 if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}
	  	String userName=new String();
		userName=(String)session.getAttribute("username");
		out.print(""+userName);
		
	
// 		out.print(session.getAttribute("id"));说明此处已经传递了上个页面的参数id和username
		
  	
   	%>
  <div class="logo-main-wrp">
        <div class="container main">
            <div class="logo-bg fl">
                <a href="" class="index-link"></a>
            </div>
            <div class="title-con fl">
                <h1>欢迎您,<%=userName %></h1>
            </div>
        </div>
    </div>
    
	
  <body>
     <br>
    欢迎来到便利驿站!</br>
   <a href="modifyUser.jsp">修改个人信息</a>
  </body>
</html>
