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
<link href="<%=baseUrl%>/css/register_global.css" rel="stylesheet" type="text/css" />
<link href="<%=baseUrl%>/css/register.css" rel="stylesheet" type="text/css" />
<%-- <link href="<%=baseUrl%>/css/bootstrap.min.css" rel="stylesheet" --%>
<!-- 	type="text/css" /> -->
<style type="text/css">
.nav-title{
	font-size: 1.2em !important;
	color: #6F9BB6 !important;
}

.nav-title:HOVER{
	color: #FFFFFF !important;
	background-color: #465A72 !important;
}

</style>
</head>
<body>
	<div id="hd" class="pr hd" data-platform="yl_s">
			<div class="other-page-header" style="background-color: #465A72; border-color: #465A72; border-radius: 0px;">
		        <div class="page-header-main">
		            <div class="page-header-left" style="padding-left: 5%">
		               <img src="<%=baseUrl%>/images/4.png">
		            </div>
		            <div class="page-header-right">
		                <ul class="tool-box">
		                    <li><a href="<%=baseUrl%>/" target="_self" class="nav-title">返回首页</a></li>
		                </ul>
		            </div>
			           <!--  <div class="page-header-right">
			            	<div class="search-box">
			               		<input class="search-text " id="J-yl-other-page-header-search-input" placeholder="">
			                	<a href="javascript:void(0);" class="search-btn" id="J-yl-other-page-header-search-btn"></a>
			                </div>
			                <ul class="tool-box">
			                    <li><a href="javascript:void(0);" id="J_login">登录</a></li>
			                    <li><a href="javascript:void(0);" target="_blank">注册</a></li>
			                </ul>
			            </div> -->
		        </div>
		    </div>
	</div>
	<%-- <nav id="topBar" class="navbar navbar-default"
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
					<!-- <li><a href="javascript:void(0);" onclick="login();"><span>立即登陆
						</span></a></li> -->
					<li><a href="javascript:void(0);" onclick="index();"><span>返回首页</span></a></li>
				</ul>
			</div>
		</div>
	</nav> --%>

	<div>
		<div class="mobile_login_bg">
			<div class="reg-head">
				<h3>
					欢迎注册财审帮
					<!-- <span class="reg-tip reg-tip-y">注册之后可以访问现有和将来所有免费课程</span> -->
				</h3>
			</div>
		</div>
		<div class="warp1200 reg-content">
			<div class="reg-body">
				<div class="reg-forms " style="margin-top: 60px">
					<div class="reg-form-item clearfix" id="reg-stu">
						<div class="reg-l">
							<form class="reg-form"
								action="http://www.yun.lu/user/registerStudent" method="post"
								data-type="stu">
								<div id="reg-first-page">
									<p class="form-item">
										<label for="J-ipt-account-a">手机/邮箱<i> *</i></label> <input
											class="ipt ipt_1 Validform_error" type="text" name="username"
											id="J-ipt-account-a" sucmsg="" datatype="m|e"
											ajaxurl="/user/securityAuth/accountCheck" nullmsg="请输入邮箱或手机！"
											errormsg="请输入正确的邮箱或手机！">
									</p>
									<p class="tips tips_1 Validform_checktip Validform_wrong">请输入邮箱或手机！</p>

									<p class="form-item">
										<label for="pasw">密码 <i> *</i></label> <input
											class="ipt ipt_1" type="password" name="password"
											id="pwd_txt" sucmsg="" datatype="password" nullmsg="请设置密码！"
											errormsg="密码范围在6~16位之间,且不能包含空格！">
									</p>
									<p class="tips tips_1"></p>

									<div id="verify_wrapper" style="width: 420px; height: 35px;">
										<p class="form-item">
											<label for="repasw">验证码<i> *</i></label> <input
												class="ipt J-validate-defalut ipt_1" type="text"
												id="verifycode_text" datatype="*4-4" autocomplete="off"
												style="width: 120px" sucmsg="" nullmsg="验证码不能为空"
												errormsg="验证码错误！"> <img class="code_img"
												src="./注册-学生_files/1462895380183.png" alt=""
												style="width: 80px; height: 32px; cursor: pointer; left: 260px; top: -5px;">
											<span class="change_code"
												style="cursor: pointer; left: 360px; top: -2px;">换一张</span>
										</p>
										<p class="tips tips_1" id="verify_tip"></p>
										<p class="verifyCode_tip hide"></p>
									</div>

									<!-- 服务条款 -->
									<input type="hidden" name="type" id="J-ipt-type-a">
									<div class="reg-arg-box">
										<div class="fl">
											<i class="reg-radio active"></i> <span class="reg-arg">同意</span>
											<a href="http://www.yun.lu/student/about/protocal"
												target="_blank" class="reg-tk">服务条款</a>
										</div>
										<p class="isagr" id="service-tip"></p>
									</div>

									<button id="reg-next">下一步</button>

								</div>
								<!--reg-first-page  -->


								<!--手机验证码  -->
								<div class="m-verifycode hide">
									<p class="mobile-suc" id="phone-tip">验证码短信已发送至您的手机，请勿泄漏</p>
									<p class="mobile-suc">
										手机号码：&nbsp;&nbsp;&nbsp;&nbsp;<span id="phone_number"></span>
									</p>
									<p class="form-item j-m-verifycode">
										<label for="repasw">短信验证码<i> *</i></label> <input
											class="ipt ipt-verifycode" type="text"
											name="verificationCode" id="J-ipt-verifycode" datatype="*"
											sucmsg="注册成功，登录中……" nullmsg="验证码不能为空！" errormsg="请入正确的手机验证码！">
										<a href="javascript:void(0);" class="btn-a-verifycode"
											id="J-get-verifycode">获取验证码<em></em></a>
									</p>
									<p class="tips" id="reg-suc-tip"
										style="margin-top: 10px; margin-left: 115px;"></p>
									<button class="btn-reg" type="submit">注册财审帮账号</button>
								</div>

								<!-- 邮箱验证成功-->
								<div class="e-register-suc hide">
									<p class="e-suc" id="e-tip">注册成功！</p>
									<a href="http://www.yun.lu/student/homepage" target="_blank"
										id="return_first_page">返回首页</a>
								</div>
							</form>

						</div>
						<!--reg-l-->

						<div class="reg-r">
							<div class="login-third-box">
								<h3>已有云路账号</h3>
								<a href="http://www.yun.lu/user/login" id="reg-login-btn"
									class="btn-a-login">登录</a>
								<h3 class="mgr-t50">用第三方账号登录云路</h3>
								<ul class="login-third-items">
									<li class="login-third-item"><a href="javascript:;"
										data-login="http://yun.lu/user/thirdAction/login"> <i
											class="third_img"></i> <span class="third-name"
											id="third-name-qq">QQ</span>
									</a></li>
								</ul>

								<!-- 			  	   		    <a href="javascript:;"data-third-login="/user/thirdAction/login"data-third-type="qq" class="a-third-item a-third-item-y"> 
								<a href="javascript:;"data-third-login="/user/thirdAction/login"data-third-type="qq" class="a-third-item a-third-item-y">
									<i class="third_img"></i>
									<span class="third-name">QQ</span>
								</a>  -->
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<script src="<%=baseUrl%>/js/jquery.min.js" type="text/javascript"></script>
<%-- 		<script src="<%=baseUrl%>/js/register.js" type="text/javascript"></script> --%>
		<script type="text/javascript">
$(document).ready(function (){
	$("#J-ipt-account-a").focus();
	$("#account").val("");
	$("#password").val("");
	
	 $("#rememberPwd").off("click").click(function(){
         $(this).toggleClass("active");
     });
	 
	 $(".reg-radio").click(function(){
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

function login() {
	window.location.href='<%=baseUrl%>/page/login';
}
</script>
</body>
</html>
