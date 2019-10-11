<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>欢迎注册便利驿站</title>
		<link rel="stylesheet"  href="css/reset.css"/>
		<link rel="stylesheet"  href="css/注册界面.css"/>
		<script type="text/javascript" src="js/registerPage.js"></script>
		<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
		
		<script type="text/javascript">
$(function () {
$('#btn1').click(function () {
var count = 10;
var countdown = setInterval(CountDown, 1000);
function CountDown() {
$("#btn1").attr("disabled", true);
$("#btn1").val(+ count + "秒!");
if (count == 0) {
$("#btn1").val("Submit").removeAttr("disabled");
clearInterval(countdown);
}
count--;
}
})
});
</script>
		
	</head>
	<body>
		
		<div class="zcmain clearfix">
			
			<div class="zccontainer clearfix">
				
				<div class="zcimg-word">
					<div class="zcimg-left">
						<img src="css/img/logo.png" >					
					</div>
					<div class="zcword-right">
						<span>注册</span>
					</div>
				</div>
				
					<!-- 注册区域 -->
					<div class="form">
						<form action="registerSucc.jsp" method="post" id="registerForm">
						<div class="form-area">
							
							
							<div class="form-item ">
								<span style="position: absolute; left: -72px; top: 19px;">输入账号：</span><input name="username" id="account" type="text" onblur="checkUserName();">
								<div class="error">*昵称不允许为空</div>
							</div>
							
							
							<div class="form-item ">
								<span style="position: absolute; left: -72px; top: 19px;">输入密码：</span><input name="password" id="password" type="password" onblur="checkPassword();">
								<div class="error">*密码不合法</div>
							</div>
							
							
							<div class="form-item ">
								<span style="position: absolute; left: -72px; top: 19px;">确认密码：</span><input name="confirmPwd" id="confirmPwd" type="password" onblur="checkConfirmPwd();" >
								<div class="error">*两次密码输入不一致</div>
							</div>
							
							<div class="form-item ">
								<span style="position: absolute; left: -72px; top: 19px;">商业名称：</span><input name="businessName" id="businessName" type="text"  onblur="checkBsname();">
								<div class="error">*商业名称不允许为空</div>
							</div>
							
							<div class="form-item ">
								<span style="position: absolute; left: -72px; top: 19px;">负责人名：</span><input name="chargerName" id="chargerName" type="text"  onblur="checkCgname();">
								<div class="error">*负责人名不允许为空</div>
							</div>
							
							<div class="form-item ">
								<span style="position: absolute; left: -72px; top: 19px;">QQ号码：</span><input name="qqName" id="qqName" type="text"  onblur="checkQqname();">
								<div class="error">*QQ不允许为空</div>
							</div>
							
							
							<!-- 商业地址 -->
							<div class="form-item clearfix">
								<span style="position: absolute; left: -90px; top: 19px;">请输入地址：</span>
								<div class="leftArea">
									<div class="province">
										<select>
												<option>广东省</option>
												<option>江苏省</option>
												<option>上海市</option>
												<option>湖南省</option>					
											
										</select>
									</div>
									
									<div class="lvCity">
										<select>
												<option>广州市</option>
												<option>苏州市</option>
												<option>上海市</option>
												<option>长沙市</option>
										</select>
									 </div>
									 
									 <div class="region">
									 	<select>
									 			<option>番禺区</option>
									 			<option>姑苏区</option>
									 			<option>徐汇区</option>
									 			<option>芙蓉区</option>	
									 	</select>
									  </div>
								</div> 
								
								  <div class="rightArea">
									  <input type="text" name="detailArea" id="detailArea" placeholder="请输入详细地址">
								  </div>
											
								</div>
							
							
							<div class="form-item ">
								<span style="position: absolute; left: -105px; top: 19px;">输入电子邮箱：</span><input name="email" id="email" type="text" onblur="checkEmail();" >
								<div class="error">*邮箱地址不合法</div>
							</div>
							
							
							
							
							
							<div class="form-item">
								<div class="select clearfix">
									<div class="select-item">
										<div class="title">
											中国大陆
										</div>
										<div class="choose-item">
											<ul>
												<li>Lorem.</li>
												<li class="selected">中国大陆</li>
												<li>Cumque!</li>
												<li>Sed!</li>
												<li>Suscipit!</li>
												<li>Suscipit.</li>
												<li>Quibusdam!</li>
												<li>Aliquam.</li>
												<li>Quos.</li>
												<li>Veniam!</li>
												<li>Enim!</li>
												<li>Nam!</li>
												<li>Rerum!</li>
												<li>Voluptate.</li>
												<li>Quasi?</li>
												<li>Hic.</li>
												<li>Rerum.</li>
												<li>Laborum.</li>
												<li>Placeat.</li>
												<li>Dolores.</li>
												<li>Nemo.</li>
												<li>Totam.</li>
												<li>Deleniti?</li>
												<li>Accusamus.</li>
												<li>Itaque?</li>
												<li>Iusto.</li>
												<li>Ad!</li>
												<li>Fugiat.</li>
												<li>Quam.</li>
												<li>Voluptatibus.</li>
												<li>Culpa.</li>
												<li>Dolorum!</li>
												<li>Nam.</li>
												<li>Suscipit!</li>
												<li>Fuga!</li>
												<li>Officia!</li>
												<li>Sed.</li>
												<li>Soluta!</li>
												<li>Ducimus.</li>
												<li>Ipsam.</li>
												<li>Illum.</li>
												<li>Obcaecati.</li>
												<li>Odit.</li>
												<li>Sed.</li>
												<li>Quos.</li>
												<li>Reprehenderit!</li>
												<li>Pariatur!</li>
												<li>Corporis.</li>
												<li>Sit.</li>
												<li>Tenetur!</li>
											</ul>
										</div>
									</div>
									<div class="input" >
										<span style="position: absolute; left: -120px; top: 19px;">填写常用手机号：</span><input name="mobile" id="mobile" type="text" onblur="checkPhone();">
										<div class="error">*手机号码不合法</div>
										 <input id="btn1" style="font-size:1em;background:#1fe1e3;position:absolute;left:504px;top:0px;width:94px;height:39px;text-align:center;" type="button" value="获取验证码"  />
										
									</div>
								</div>
							</div>
							
							<div class="form-item ">
								<span style="position: absolute; left: -120px; top: 19px;">输入手机验证码：</span><input input name="validNum" id="validNum" type="text" >
								<div class="error">*手机验证码不正确</div>
								<div>
									<input type="button" id="button1" onclick="validateCode()"  value="验证" />
								</div>
								
							</div>
							
							<div class="readme">
								<label>
									<input type="checkbox" style="margin-bottom: 10px;">
									<span>我已阅读并同意
										<a href="">《用户注册协议》</a>
									</span>
								</label>
							</div>
							
							<div class="form-item">
								<button type="submit" id="zhuce" class="fill">注册</button>
							</div>
							
		
							
						</div>
						</form>
					</div>
					<!-- 注册区域 -->
					
					
					
				</div>
				
				
			</div>
			
			
		</div>
		
	</body>
</html>
