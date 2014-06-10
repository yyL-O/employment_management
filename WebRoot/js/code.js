function checkcode() {
	document.getElementById("re_ex5").innerHTML = "请输入图片中的文字，不区分大小写";
}

// JavaScript Document

var code ; //在全局 定义验证码
function createCode(){ 
code = new Array();
var codeLength = 4;//验证码的长度
var checkCode = document.getElementById("checkCode");
checkCode.value = "";

var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

for(var i=0;i<codeLength;i++) {
   var charIndex = Math.floor(Math.random()*32);
   code +=selectChar[charIndex];
}
if(code.length != codeLength){
   createCode();
}
checkCode.value = code;
}

function validate () {
var inputCode = document.getElementById("re_inputCode").value.toUpperCase();

if(inputCode.length <=0) {
   document.getElementById("re_ex5").innerHTML="<font color='red'>请输入验证码</font>";
   return false;
}
else if(inputCode != code ){
   document.getElementById("re_ex5").innerHTML="<font color='red'>验证码输入错误</font>";
   createCode();
   return false;
}
else{	
   document.getElementById("re_ex5").innerHTML="";
}
}