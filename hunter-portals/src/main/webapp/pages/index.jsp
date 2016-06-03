<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="common/include.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link href="images/favicon/favicon.ico" rel="shortcut icon"> -->
<title>hunter</title>

</head>
<body>
	<%@ include file="common/header.jsp"%>
	<div class="container-fluid" style="margin-top: -20px;">
		<div class="row">
<!-- 			<div class="col-md-12" style="margin-left: -15px;margin-right: -15px;"> -->
<%-- 				<img alt="" class="img-responsive" src="<%=baseUrl %>/images/index-1.png"> --%>
<!-- 			</div> -->
			<div class="col-md-12" style="margin-left: 280px;">
				<img alt="" class="img-responsive" src="<%=baseUrl %>/images/index-1.png">
			</div>
		</div>
		<div class="row">
			
		</div>
		<div class="row">
		</div>
	</div>

	<%@ include file="common/footer.jsp"%>
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

	</script>
</body>
</html>
