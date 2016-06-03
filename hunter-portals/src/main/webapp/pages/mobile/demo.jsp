<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String baseUrl = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
<link href="<%=baseUrl%>/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<title></title>
<style type="text/css">
.play{
	margin-left: 0px !important;
	margin-right: 0px !important;
}
.play:HOVER {
	/* background-color: blue; */
}

.grid_des{
	font-size:1.4em;
	font-weight: bold;
}
</style>

</head>
<body style="background-image: url('../images/mobile/bg.png')">
	<nav class="navbar navbar-default" style="background-color:#465a72;">
		<img style='height:70px;' src="<%=baseUrl%>/images/mobile/logo.png" class="img-responsive" alt="Responsive image">
	</nav>
	<div class="container-fluid" style="margin: 0px 8px 0 8px">
		<div class="row">
			<div class="col-sm-6 col-xs-6 col-md-6 play">
				<div class="row">
					<div class="col-xs-offset-1 col-xs-10">
						<img style="cursor: pointer;" src="<%=baseUrl%>/images/mobile/grid_1.png" class="img-responsive" alt="Responsive image">
					</div>
				</div>
				<div class="row" style="margin-top: 4px;">
					<div class="col-xs-8" style="margin-left: 22%;">
						<span class="grid_des">视频讲义</span>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-xs-6 col-md-6 play">
				<div class="row">
					<div class="col-xs-offset-1 col-xs-10">
						<img style="cursor: pointer;" src="<%=baseUrl%>/images/mobile/grid_2.png" class="img-responsive" alt="Responsive image">
					</div>
				</div>
				<div class="row" style="margin-top: 4px;">
					<div class="col-xs-8" style="margin-left: 22%;">
						<span class="grid_des">概念定义</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 8px;">
			<div class="col-sm-6 col-xs-6 col-md-6 play">
				<div class="row">
					<div class="col-xs-offset-1 col-xs-10">
						<img style="cursor: pointer;" src="<%=baseUrl%>/images/mobile/grid_3.png" class="img-responsive" alt="Responsive image">
					</div>
				</div>
				<div class="row" style="margin-top: 4px;">
					<div class="col-xs-8" style="margin-left: 22%;">
						<span class="grid_des">审计意义</span>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-xs-6 col-md-6 play">
				<div class="row">
					<div class="col-xs-offset-1 col-xs-10">
						<img style="cursor: pointer;" src="<%=baseUrl%>/images/mobile/grid_4.png" class="img-responsive" alt="Responsive image">
					</div>
				</div>
				<div class="row" style="margin-top: 4px;">
					<div class="col-xs-8" style="margin-left: 22%;">
						<span class="grid_des">表格模板</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 8px;">
			<div class="col-sm-6 col-xs-6 col-md-6 play">
				<div class="row">
					<div class="col-xs-offset-1 col-xs-10">
						<img style="cursor: pointer;" src="<%=baseUrl%>/images/mobile/grid_5.png" class="img-responsive" alt="Responsive image">
					</div>
				</div>
				<div class="row" style="margin-top: 4px;">
					<div class="col-xs-8" style="margin-left: 25%;">
						<span class="grid_des">讨论区</span>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-xs-6 col-md-6 play">
				<div class="row">
					<div class="col-xs-offset-1 col-xs-10">
						<img style="cursor: pointer;" src="<%=baseUrl%>/images/mobile/grid_6.png" class="img-responsive" alt="Responsive image">
					</div>
				</div>
				<div class="row" style="margin-top: 4px;">
					<div class="col-xs-8" style="margin-left: 32%;">
						<span class="grid_des">Q&A</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="<%=baseUrl%>/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=baseUrl%>/js/bootstrap.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".play img").on("click",function(){
			window.location.href='<%=baseUrl%>/page/demo/play';
		});
	});
</script>
</html>