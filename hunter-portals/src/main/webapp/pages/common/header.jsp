<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="include.jsp"%> --%>
<nav id="topBar" class="navbar navbar-default"
	style="background-color: #465A72; border-color: #465A72;">
	<div class="container-fluid"
		style="padding-left: 15%; padding-right: 15%; font-size: 1.2em;">
		<div class="navbar-header">
			<a class="navbar-brand" href="javascript:void(0);"
				style="padding-top: 0px; cursor: default;"> <img alt=""
				src="<%=baseUrl%>/images/4.png">
			</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<!-- <li class="active"><a href="javascript:void(0);">Link <span
						class="sr-only">(current)</span></a></li> -->
				<li><a href="javascript:void(0);"><span>首页</span></a></li>
				<li><a href="javascript:void(0);"><span>关于我们</span></a></li>
				<li><a href="javascript:void(0);"><span>联系我们</span></a></li>
				<li><a href="javascript:void(0);"><span>服务</span></a></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="button" class="btn btn-info" style="margin-left: -7px;">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<%if(userName == null) {%>
				<li><a href="javascript:void(0);" onclick="login();"><span>登陆</span></a></li>
				<li><a href="javascript:void(0);" onclick="register();"><span>注册</span></a></li>
				<%} else {%>
				<li><a href="javascript:void(0);" onclick="register();" style="padding-top: 12px;">
					<img class="img-responsive" src="<%=baseUrl %>/images/mess.png">
				</a></li>
				<li><a href="javascript:void(0);" onclick="register();" style="padding-top: 12px;">
					<img class="img-responsive" src="<%=baseUrl %>/images/flag.png">
				</a></li>
				<li><a href="javascript:void(0);" onclick="register();" style="padding-top: 5px;padding-bottom: 5px;">
					<img class="img-responsive" src="<%=baseUrl %>/images/head.png">
				</a></li>
				<%} %>
			</ul>
		</div>
	</div>
</nav>

<div class="modal fade" id="messageModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="关闭">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">提示框</h4>
			</div>
			<div class="modal-body">
				<p id="message"></p>
			</div>
		</div>
	</div>
</div>