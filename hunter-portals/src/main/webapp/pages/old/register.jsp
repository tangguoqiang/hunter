<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String baseUrl = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link href="images/favicon/favicon.ico" rel="shortcut icon"> -->
<title>hunter</title>
	<link href="<%=baseUrl %>/css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="login_in_box_bg">
    <img src="<%=baseUrl %>/images/login/login_bg.png">
</div>
<div class="login_in">
    <h2><a href="http://www.careerdream.org/"><img src="<%=baseUrl %>/images/login/login_logo.png" alt="职业梦"></a></h2>
    <div class="login_box right_box">
        <div>
            <div class="regist_sel" id="userType">
                <a href="javascript:void(0);" class="active" data-name="customer" value="1">找工作</a>
                <a class="" href="javascript:void(0);" data-name="business" value="2">找人才</a>
            </div>
            <ul class="row regist_box" style="display:block">
                <div id="errorMessage" style="color: red"></div>
                <li><input class="form-control" name="login_email" placeholder="邮箱" id="email" type="text"></li>
                <li><input class="form-control" name="login_password" placeholder="6-20位字符，建议使用数字及字母组合" id="pwd" type="password"></li>
                <li><input class="form-control" name="is_login_password" id="checkPwd" placeholder="确认密码" type="password"></li>
                <li>
                    <p id="protocol"><span class="active"></span><a href="http://www.careerdream.org/userProtocol" target="_blank">我已阅读并同意《职业梦用户协议》</a></p>
                </li>
                <li><input name="wanted" value="注册帐号" id="registerBtn" type="submit"></li>
                <li><img src="<%=baseUrl %>/images/login/login_or.png"></li>
                <li>
                    <a href="http://www.careerdream.org/account/wechat" class="log_wechat"><i><img src="<%=baseUrl %>/images/login/weichat_bai.png"></i>微信登录</a>
                    <a href="<%=baseUrl%>/page/login" class="login_alink">登录</a>
                </li>
            </ul>
        </div>
    </div>
</div>
	
<script src="<%=baseUrl %>/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function (){
	$("#userType").on("click", "a", function(event){
        $("#userType a").removeClass("active");
        $(this).addClass("active");
    });
	
	$("#protocol span").click(function(){
        $(this).toggleClass("active");
    });
	
	$("#registerBtn").on("click",function(e){
		if(validate()){
			$.ajax({
				type:'post',
				dataType:'json',
				url:"<%=baseUrl%>"+'/register',
				data:{
					email:$("#email").val(),
					password:$("#pwd").val(),
					type:$("#userType>.active").attr("value")
				},
				success:function(data){
					if(data.success){
						window.location.href='<%=baseUrl%>/page/login';
					}else{
						$("#errorMessage").text(data.msg);
					}
				},
				error:function(textStatus,errorThrown){
				}
			});
		}
	});
	
	 $(window).keydown(function (e) { 
		 if(e.which == 13) {
			 $("#registerBtn").trigger("click");
		 }
	 });
});

function validate(){
	var isConfirmedProtocol = $("#protocol span").hasClass("active");
    var email = $("#email").val(),
     password = $("#pwd").val(),
     checkPwd = $("#checkPwd").val();
	if (isConfirmedProtocol) {
		if(email === "") {
        	$("#errorMessage").text("邮箱不能为空！");
            return false;
        } else if (!email.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
        	$("#errorMessage").text("邮箱格式不对！");
            return false;
        } else if (password === "" || password === "6-20位字符，建议使用数字及字母组合") {
        	$("#errorMessage").text("密码不能为空！");
            return false;
        } else if (!password.match('^[!"#$%&\'()*+,\-./:;<=>?@\[\\\]^_`{|}~A-Za-z0-9]{6,20}$')) {
        	$("#errorMessage").text("密码格式不对！");
            return false;
        } else if (password !== checkPwd) {
        	$("#errorMessage").text("两次密码输入不一致！");
            return false;
        } else {
            return true;
        }
     } else {
        $("#errorMessage").text("未同意用户协议！");
        return false;
     }
}
</script>
</body>
</html> 