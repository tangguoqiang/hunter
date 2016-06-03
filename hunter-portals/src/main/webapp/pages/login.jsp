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
<link href="<%=baseUrl%>/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="<%=baseUrl%>/css/base.css" rel="stylesheet" type="text/css" />
<link href="<%=baseUrl%>/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<nav id="topBar" class="navbar navbar-default"
		style="background-color: #465A72; border-color: #465A72; border-radius: 0px;">
		<div class="container-fluid"
			style="padding-left: 15%; padding-right: 15%; font-size: 1.2em;">
			<div class="navbar-header">
				<a class="navbar-brand" href="javascript:void(0);"
					style="padding-top: 0px; cursor: default;"> <img alt=""
					src="<%=baseUrl%>/images/4.png">
				</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="javascript:void(0);" onclick="register();"><span>立即注册
						</span></a></li>
					<li><a href="javascript:void(0);" onclick="index();"><span>返回首页</span></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid"
		style="margin-top: -20px; border-radius: 0px">
		<div class="row" style="background-color: #90DBFA;">
			<div class="col-md-7">
				<img alt="" class="img-responsive"
					src="<%=baseUrl%>/images/login-1.png"
					style="margin: 100px 5% 100px 30%">
			</div>
			<div class="col-md-5">
				<form class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-10" style="color: red;margin: 18px 0px -15px 60px;font-size: 1.2em;">
							<span id="errorMessage">&nbsp&nbsp&nbsp</span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="text" name="account" class="form-control" id="account"
								placeholder="手机号/会员名/邮箱">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="password" class="form-control" id="password"
								placeholder="请输入密码">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<button id="loginBtn" type="button" class="btn btn-default">登&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp录</button>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<a href="javascript:void(0);" class="reme_pw active" id="rememberPwd">记住密码</a>
						</div>
						<div class="col-sm-6">
							<a href="http://www.careerdream.org/account/forgetPwd" class="forget_pw">忘记密码？</a>
						</div>
					</div>
					<div class="form-group">
						<hr style="width: 328px;margin: 22px 0px 0px 70px;border-top:2px dotted #AAC1CC;">
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<span style="margin-left: 135px;font-size: 1.2em;color:#C5D7DF;">使用其他账号登录财审帮</span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6" >
							<img style="margin: 0px 0px 20px 160px;cursor: pointer;" src="<%=baseUrl%>/images/login/qq.png" onclick="alert(111);">
						</div>
						<div class="col-sm-6" >
							<img style="margin: 0px 0px 20px 0px;cursor: pointer;" src="<%=baseUrl%>/images/login/wx.png" onclick="alert(111);">
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="row" style="margin-top: 30px;">
			<div class="col-md-offset-4 col-md-4">
				<span style="margin: 100px 0px 0px 100px;color:#ADADAD; font-size: 2.2em;">400-0000-000</span>
			</div>
		</div>
		<div class="row">
			<div class="col-md-offset-4 col-md-4">
				<span style="margin: 100px 0px 0px 120px;color:#ADADAD; font-size: 1.2em;">. 全国免费服务热线  .</span>
			</div>
		</div>
	</div>
	<script src="<%=baseUrl%>/js/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript">
$(document).ready(function (){
	
	$("#account").val("");
	$("#password").val("");
	
	 $("#rememberPwd").off("click").click(function(){
         $(this).toggleClass("active");
     });
	/**
	 * 登陆表单提交函数;
	 * */
	 $("#loginBtn").click(function(){//点击登录按钮
		 login();
	 });
	
	 $(window).keydown(function (e) { 
		 if(e.which == 13) {
			 login();
		 }
	 });
});

function index(){
	window.location.href='<%=baseUrl%>/';
}

function register(){
	window.location.href='<%=baseUrl%>/page/register';
}

function login() {
	$("#errorMessage").text("");
	var account = $("#account").val().trim();
	if(account == "")
	{
		$("#errorMessage").text("手机号/会员名/邮箱不能为空！");
		return;
	}
	$.ajax({
		type:'post',
		url:"<%=baseUrl%>"+'/login',
		data:{
			account:account,
			password:$("#password").val()
		},
		dataType:'json',
		success:function(data){
			if(data.success){
				window.location.href='<%=baseUrl%>/';
			} else {
				$("#errorMessage").text(data.msg);
			}
		},
		error : function(textStatus, errorThrown) {}
	});
}
</script>
</body>
</html>
