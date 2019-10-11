/**
 * 
 */

	//检查用户名是否为空
function checkUserName(){
	if(document.getElementById("account").value==''){
		document.getElementById("account").nextElementSibling.style.display='block';
		
		return false;
	}
	else{
		document.getElementById("account").nextElementSibling.style.display='none';
	}
}

	//检查商业名称是否为空
function checkBsname(){
	if(document.getElementById("businessName").value==''){
		document.getElementById("businessName").nextElementSibling.style.display='block';
		
		return false;
	}
	else{
		document.getElementById("businessName").nextElementSibling.style.display='none';
	}
}

function checkCgname(){
	if(document.getElementById("chargerName").value==''){
		document.getElementById("chargerName").nextElementSibling.style.display='block';
		
		return false;
	}
	else{
		document.getElementById("chargerName").nextElementSibling.style.display='none';
	}
}

function checkQqname(){
	if(document.getElementById("qqName").value==''){
		document.getElementById("qqName").nextElementSibling.style.display='block';
		
		return false;
	}
	else{
		document.getElementById("qqName").nextElementSibling.style.display='none';
	}
}

	//判断密码格式正不正确
function checkPassword(){
var myPwd=document.getElementById("password").value;
	if(myPwd==''){
		document.getElementById("password").nextElementSibling.style.display='block';
			
		//alert("用户名不能为空")
		return false;
	}
	else if(myPwd.length<6){
		document.getElementById("password").nextElementSibling.style.display='block';
	}
	else{
		document.getElementById("password").nextElementSibling.style.display='none';
	}
}

		//确认邮箱
  function checkEmail()
           {
              var temp = document.getElementById("email");
              //对电子邮件的验证
             var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
             if(!myreg.test(temp.value))
             {
                 document.getElementById("email").nextElementSibling.style.display='block';
            }else{
				 document.getElementById("email").nextElementSibling.style.display='none';
			}
          }
		  
	function checkPhone()
	         {
	            var temp = document.getElementById("mobile");
	            //对电话的验证
	            var mymobile=/^((13[0-9]{1})|159|153)+\d{8}$/;
	           if(!mymobile.test(temp.value))
	           {
	               document.getElementById("mobile").nextElementSibling.style.display='block';
	          }else{
					 document.getElementById("mobile").nextElementSibling.style.display='none';
				}
	        }
	
	

	
				
		//确认密码
	function checkConfirmPwd() {
	    var pwd1 = document.getElementById("password").value;
	    var pwd2 = document.getElementById("confirmPwd").value;
	<!-- 对比两次输入的密码 -->
	    if(pwd1 != pwd2)
	     {
	        document.getElementById("confirmPwd").nextElementSibling.style.display='block'
	        // document.getElementById("button").disabled = false;
	     }
		 else{
			  document.getElementById("confirmPwd").nextElementSibling.style.display='none'
		 }
		 
	}
	
	//页面加载时，生成随机验证码
	window.onload=function(){
	 createCode(4);    
	}
	
	//生成验证码的方法
	function createCode(length) {
	    var code = "";
	    var codeLength = parseInt(length); //验证码的长度
	    var checkCode = document.getElementById("checkCode");
	    ////所有候选组成验证码的字符，当然也可以用中文的
	    var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
	    'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
	    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); 
	    //循环组成验证码的字符串
	    for (var i = 0; i < codeLength; i++)
	    {
	        //获取随机验证码下标
	        var charNum = Math.floor(Math.random() * 62);
	        //组合成指定字符验证码
	        code += codeChars[charNum];
	    }
	    if (checkCode)
	    {
	        //为验证码区域添加样式名
	        checkCode.className = "code";
	        //将生成验证码赋值到显示区
	        checkCode.innerHTML = code;
	    }
	}
	
	//检查验证码是否正确
	function validateCode()
	{
	    //获取显示区生成的验证码
	    var checkCode = document.getElementById("checkCode").innerHTML;
	    //获取输入的验证码
	    var inputCode = document.getElementById("validNum").value;
	    console.log(checkCode);
	    console.log(inputCode);
	    if (inputCode.length <= 0)
	    {
	        document.getElementById("validNum").nextElementSibling.style.display='block';
	    }
	    else if (inputCode.toUpperCase() != checkCode.toUpperCase())
	    {
	        document.getElementById("validNum").nextElementSibling.style.display='block';
	        createCode(4);
	    }
	    else
	    {
	         document.getElementById("validNum").nextElementSibling.style.display='none';
	    }       
	}    
	