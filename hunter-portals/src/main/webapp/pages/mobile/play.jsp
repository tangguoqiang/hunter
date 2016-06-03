<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String baseUrl = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en" xmlns:gs="http://www.gensee.com/ec">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
<link href="<%=baseUrl%>/media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="http://static.gensee.com/webcast/static/sdk/js/gssdk.js"></script>
<title></title>
<script type="text/javascript">
	//1. 根据组获得通讯通道
	var channel = GS.createChannel("");
	//2. 通过通道监听互动调查事件
	channel.bind("onVote", function(event) {
		alert(event.data);
	});
	//2. 通过通道监听问答事件
	channel.bind("onQA", function(event) {
		alert(event.data.question);
	});
	//3.通过通道留言
	channel.send("submitLeaveMessage", {
		"content" : "what's your name?"
	});
</script>
</head>
<body style="background-image: url('../../images/mobile/bg.png')">
	<nav class="navbar navbar-default" style="background-color:#465a72;">
		<img style='height:70px;' src="<%=baseUrl%>/images/mobile/logo.png" class="img-responsive" alt="Responsive image">
	</nav>
	<div class="container-fluid" style="margin: 0px 8px 0 8px">
		<div class="row">
			<div class="col-sm-12 col-xs-12">
				<gs:video-vod id="videoComponent" site="show.gensee.com" ctx="training"
					ownerid="ekQg2rQcd4" uname="123456789" authcode="123456789"/>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-10" style='background-color:#ffffff;margin:4px 20px 4px 30px'>
				<div class="row" style="margin-top: 4px;">
					<div class="col-xs-12">
						<ul class="nav nav-tabs">
						  <li role="presentation" class="active" id="tab1"><a href="#" style='font-weight:bold'>课程简介</a></li>
						  <li role="presentation" id="tab2"><a href="#" style='font-weight:bold'>讲师简介</a></li>
						  <li role="presentation" id="tab3"><a href="#" style='font-weight:bold'>评论</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div class="panel panel-default" style="border: none;">
							<div class="panel-body">
						    	课程简介
						  	</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="<%=baseUrl%>/media/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=baseUrl%>/media/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="<%=baseUrl%>/media/js/common.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".nav-tabs li").on("click",function(){
			$(".nav-tabs li").removeClass("active");
			$(this).addClass("active");
			if($(this).attr("id")=="tab1"){
				$(".panel-body").html("课程简介");
			}else if($(this).attr("id")=="tab2"){
				$(".panel-body").html("讲师简介");
			}else if($(this).attr("id")=="tab3"){
				$(".panel-body").html("评论");
			}
		});
	});
</script>
</html>