function checkEmail() {
	document.getElementById("re_exmail").innerHTML = "请输入您的常用邮箱"
}

function checkmail(mail){
	if(mail==''||mail==null){
		document.getElementById("re_exmail").innerHTML="<font color='red'>邮箱不能为空</font>";
	}else{
		var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
		if(!m.exec(mail)){
			document.getElementById("re_exmail").innerHTML="<font color='red'>请输入正确的邮箱地址</font>";
		}else{
			document.getElementById("re_exmail").innerHTML="";
		}
	}
}

function CheckComMail() {
	document.getElementById("re_excommail").innerHTML = "请输入公司邮箱"
}

function checkcommail(commail){
	if(commail==''||commail==null){
		document.getElementById("re_excommail").innerHTML="<font color='red'>公司邮箱不能为空</font>";
	}else{
		var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
		if(!m.exec(commail)){
			document.getElementById("re_excommail").innerHTML="<font color='red'>请输入正确的邮箱地址</font>";
		}else{
			document.getElementById("re_excommail").innerHTML="";
		}
	}
}

function checkname() {
	document.getElementById("re_exname").innerHTML = "请输入您的姓名"
}

function checkname1(name) {
	if (name == "") {
		document.getElementById("re_exname").innerHTML = "<font color='red'>请填写姓名</font>";
	}
	else if(name != ""){
		document.getElementById("re_exname").innerHTML = " ";
	}
}

function checkcomname() {
	document.getElementById("re_excomname").innerHTML = "请输入公司名称"
}

function checkcomname1(comname) {
	if (comname == "") {
		document.getElementById("re_excomname").innerHTML = "<font color='red'>请填写公司名称</font>";
	}
	else if(comname != ""){
		document.getElementById("re_excomname").innerHTML = " ";
	}
}

function checkidnumber() {
	document.getElementById("re_exidnumber").innerHTML = "请输入您的身份证号"
}

function checkidnumber1(number) {
	if (number == "") {
		document.getElementById("re_exidnumber").innerHTML = "<font color='red'>请填写身份证号</font>";
	}
	else if(number != ""){
		document.getElementById("re_exidnumber").innerHTML = " ";
	}
}

function checklinkname() {
	document.getElementById("re_exlinkname").innerHTML = "请输入联系人姓名"
}

function checklinkname1(linkname) {
	if (linkname == "") {
		document.getElementById("re_exlinkname").innerHTML = "<font color='red'>请填写联系人姓名</font>";
	}
	else if(linkname != ""){
		document.getElementById("re_exlinkname").innerHTML = " ";
	}
}

function checkcomconnect() {
	document.getElementById("re_excomconnect").innerHTML = "请输入联系人电话"
}

function checkcomconnect1(linknumber) {
	if (linknumber == "") {
		document.getElementById("re_excomconnect").innerHTML = "<font color='red'>请填写联系人电话</font>";
	}
	else if(linknumber != ""){
		document.getElementById("re_excomconnect").innerHTML = " ";
	}
}

function checkdegree(){
	document.getElementById("re_exspecialty").innerHTML="请输入您所学专业"
}
function checkdegree1(degree){
	if(degree == ""){
		document.getElementById("re_exspecialty").innerHTML="<font color='red'>请填写专业</font>";
	}
	else if(degree !=""){
		document.getElementById("re_exspecialty").innerHTML= " ";
	}
}



function checkconnect(){
	document.getElementById("re_exconnect").innerHTML="请输入您的联系方式"
}
function checkconnect1(connect){
	if(connect == ""){
		document.getElementById("re_exconnect").innerHTML="<font color='red'>请填写联系方式</font>";
	}
	else if(connect !=""){
		document.getElementById("re_exconnect").innerHTML=" ";
	}
	
}


function checkresume(){
	document.getElementById("re_exresume").innerHTML="请填写个人简历详细信息"
}
function checkresume1(resume){
	if(connect == ""){
		document.getElementById("re_exresume").innerHTML="<font color='red'>请填写个人简历详细信息</font>"
	}
	else if(connect !=""){
		document.getElementById("re_exresume").innerHTML=" ";
	}
}


function checkPassword() {
	document.getElementById("re_ex3").innerHTML = "请设置你的密码"
}

function checkpassWord(pwd) {
	if(pwd==null||pwd==''){
		document.getElementById("re_ex3").innerHTML="<font color='red'>请设置你的密码</font>";
	}else if(pwd.length<6){
		document.getElementById("re_ex3").innerHTML="<font color='red'>请输入至少6位以字母开头，数字或符号</font>";
	}else{
		document.getElementById("re_ex3").innerHTML="";
	}
}

function checkRePassword() {
	document.getElementById("re_ex4").innerHTML = "请再次输入密码"
}

function checkRePassWord(pwd2) {
	if(pwd2==null||pwd2==''){
		document.getElementById("re_ex4").innerHTML="<font color='red'>请再次输入密码</font>";
	}else if(pwd2.length<6){
		document.getElementById("re_ex4").innerHTML="<font color='red'>密码输入不一致，请重新输入</font>";
	}else{
		var pwd=document.getElementById("re_inputpassword").value;
		
		if(pwd != pwd2){
			document.getElementById("re_ex4").innerHTML="<font color='red'>密码输入不一致，请重新输入</font>";
		}else document.getElementById("re_ex4").innerHTML="";
	}
}

function checkcomEmail() {
	document.getElementById("re_exmail").innerHTML = "请输入公司邮箱"
}

function checkComname() {
	document.getElementById("re_exname").innerHTML = "请输入公司名称"
}
function checkComname1(name) {
	if (name == "") {
		document.getElementById("re_exname").innerHTML = "<font color='red'>公司名称不能为空</font>";
	}
	else if(name != ""){
		document.getElementById("re_exname").innerHTML = " ";
	}
}