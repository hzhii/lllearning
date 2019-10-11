function check(){
	if(!checkUserName()){
		return false;
	}
	checkPassword();
}

function checkUserName(){
	if(document.getElementById("account").value==''){
		document.getElementById("errorPrompt").innerText="用户名不能为空";
		document.getElementById("errorPrompt").style.display='block'
		//alert("用户名不能为空")
		return false;
	}
	else{
		document.getElementById("errorPrompt").style.display='none'
	}
}

function checkPassword(){
var myPwd=document.getElementById("password").value;
	if(myPwd==''){
		document.getElementById("errorPrompt").innerText="密码不能为空";
		document.getElementById("errorPrompt").style.display='block'
		//alert("用户名不能为空")
		return false;
	}
	else if(myPwd.length<6){
		document.getElementById("errorPrompt").innerText="密码长度不能低于6位";
		document.getElementById("errorPrompt").style.display='block'
	}
	else{

		document.getElementById("errorPrompt").style.display='none'
	}
}