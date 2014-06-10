  function checkfinal(){
    var mail=document.getElementById("re_inputmail").value;
    var commail=document.getElementById("re_inputcommail").value;
    var name=document.getElementById("re_inputname").value;
    var comname=document.getElementById("re_inputcomname").value;
    var pwd=document.getElementById("re_inputpassword").value;
    var repwd=document.getElementById("re_repassword").value;
    var idnumber=document.getElementById("re_inputidnumber").value;
    var specialty=document.getElementById("re_inputSpecialty").value;
    var connect=document.getElementById("re_inputconnect").value;
    var comlinkname=document.getElementById("re_inputlinkname").value;
    var comlinkphone=document.getElementById("re_inputcomconnect").value;
    var presume=document.getElementById("re_inputresume").value;
    var m=/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
    
    var code ; //在全局 定义验证码
    function createCode(){ 
      code = new Array();
      var codeLength = 4;//验证码的长度
      var checkCode = document.getElementById("checkCode");
      checkCode.value = "";
      var inputCode = document.getElementById("re_inputCode").value.toUpperCase();
      
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
    
    if(mail==''){
      document.getElementById("re_exmail").innerHTML="<font color='red'>邮箱不能为空</font>";
      return false;
    }else if(!m.exec(mail)){
      document.getElementById("re_exmail").innerHTML="<font color='red'>请输入正确的邮箱地址</font>";
      return false;
    }else if(commail==''){
      document.getElementById("re_excommail").innerHTML="<font color='red'>公司邮箱不能为空</font>";
      return false;
    }else if(!m.exec(commail)){
      document.getElementById("re_excommail").innerHTML="<font color='red'>请输入正确的邮箱地址</font>";
      return false;
    }else if(pwd==''){
      document.getElementById("re_ex3").innerHTML="<font color='red'>请设置你的密码</font>";
      return false;
    }else if(pwd.length<6){
      document.getElementById("re_ex3").innerHTML="<font color='red'>请输入至少6位以字母开头，数字或符号</font>";
      return false;
    }else if(repwd==''){
      document.getElementById("re_ex4").innerHTML="<font color='red'>密码输入不一致，请重新输入</font>";
      return false;
    }else if(repwd.length<6){
      document.getElementById("re_ex4").innerHTML="<font color='red'>密码输入不一致，请重新输入</font>";
      return false;
    }else if(pwd!=repwd){
      document.getElementById("re_ex4").innerHTML="<font color='red'>密码输入不一致，请重新输入</font>";
      return false;
    }else if(name==''){
      document.getElementById("re_exname").innerHTML = "<font color='red'>姓名不能为空</font>";
      return false;
    }else if(comname==''){
      document.getElementById("re_excomname").innerHTML = "<font color='red'>公司名称不能为空</font>";
      return false;
    }else if(idnumber==''){
      document.getElementById("re_exidnumber").innerHTML = "<font color='red'>身份证号不能为空</font>";
      return false;
    }else if(specialty==''){
      document.getElementById("re_exspecialty").innerHTML="<font color='red'>请填写您的专业</font>";
      return false;
    }else if(connect==''){
      document.getElementById("re_exconnect").innerHTML="<font color='red'>联系方式不能为空</font>";
      return false;
    }else if(comlinkname==''){
      document.getElementById("re_exlinkname").innerHTML="<font color='red'>联系方式不能为空</font>";
      return false;
    }else if(comlinkphone==''){
      document.getElementById("re_excomconnect").innerHTML="<font color='red'>联系方式不能为空</font>";
      return false;
    }else if(presume==''){
      document.getElementById("re_exresume").innerHTML="<font color='red'>简历不能为空</font>";
      return false;
    }else if(inputCode.length <=0) {
      document.getElementById("re_ex5").innerHTML="<font color='red'>请输入验证码</font>";
      return false;
    }else if(inputCode != code ){
        document.getElementById("re_ex5").innerHTML="<font color='red'>验证码输入错误</font>";
        createCode();
        return false;
    }else{
      return true;
    }
  }
