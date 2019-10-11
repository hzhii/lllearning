<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/便利item.css">
<script type="text/javascript" src="js/loginPage.js"></script>
<title>Insert title here</title>
</head>
<body>


		<div class="main">
	
			<nav class="nav">
				欢迎光临本店请<span style="color:blue;"><a href="">登陆</a></span>,新用户?<a href="register.jsp"><span style="color: purple;">免费注册</span></a>
				<a href="">我的订单</a>
				<a href="">查看购物车</a>
				<a href="">帮助中心</a>
				<a href="">在线客服</a>
			</nav>
			
			
		
			<div class="container clearfix">
				
				
				<div class="img-word">
					<div class="img-left">
						<img src="css/img/logo.png" >					
					</div>
					<div class="word-right">
						<a href="">登陆</a>
					</div>
				</div>
				
				
				
				<div class="background" style="background:#a29797;">
					<img src="css/img/login-bg.png" >
				</div>
				
				

					<div class="form">
					 <form action="loginCheck.jsp" method="post" id="loginForm">
					 <div class="formInfo">
					<span id="errorPrompt">用户名或密码错误！</span>
					<input name="token" value="member" type="hidden">							
						<div class="form-item">
							<input name="username" id="account" type="text"  placeholder="用户名" onblur="checkUserName();">
						</div>
						<div class="form-item">
							<input name="password" id="password" type="password" placeholder="密 码" onblur="checkPassword();">
						</div>
	
						<div class="readme">
							<label>
								<input type="checkbox">
								<span class="checkbox">
								<span class="checkbox1" style="color: cornflowerblue;">
									自动登录
									</span>
								</span>
							</label>
						</div>
						
						<div class="readme txtright">
							<a href="找回密码.html">忘记密码？ |</a>
							<a href="register.jsp">注册</a>
						</div> 
						
						<div class="form-item">
							<button id="loginSubmit" type="submit" class="fill">登 录</button>
						</div>
						</div>
						</form>
					</div>  
					 
					
						

				<footer>
					<div class="three-item">
						<a href=""><img src="css/img/Quality_assurance.gif">正品保障</a>
						<a href=""><img src="css/img/Seven_days.gif">七天包退</a>
						<a href=""><img src="css/img/Fake_a_lose_three.gif">假一赔三</a>
					</div>
					
					<div class="footer-bottom clearfix">
						<div class="left clearfix" style="position: absolute;">
							<nav class="nav-top">
								<a href="">免责条款</a>
								<a href="">隐私保护</a>
								<a href="">资讯热点</a>
								<a href="">联系我们</a>
								<a href="">公司简介</a>
								<a href="">配送方式</a>
							</nav>
							<div class="left-bottom">
								2005-2016 便利驿站 版权所有，并保留所有权利。凌堂12号
								大院三区一号 Tel：32292315 <br>-mail:1165221562@qq.com 
								技术支持：旗云科技
							</div>
						</div>
						<div class="right" style="position: absolute;">
							<div class="right-l">
								<img src="css/img/unionpay_ico.gif" style="height: 15px;" >
							</div>
							<div class="right-r">
								<img src="css/img/alipay_ico.gif" style="height: 15px;width:80px;" >
							</div>
						</div>
					</div>
				</footer>
				
				
				
			</div>
			
			
			
		</div>

</body>
</html>