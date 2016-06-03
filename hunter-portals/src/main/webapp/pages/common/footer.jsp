<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-default">
	<div class="container">
		hun
	</div>
</nav>

<script src="<%=baseUrl%>/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=baseUrl%>/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=baseUrl%>/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script	src="<%=baseUrl%>/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
<script src="<%=baseUrl%>/js/bootstrap-paginator.min.js"	type="text/javascript"></script>
<script src="<%=baseUrl%>/js/common.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function (){
	$(".nav li").bind("click",function(){
		if(typeof $(this).attr("url") != "undefined"){
			window.location.href='<%=baseUrl%>' + $(this).attr("url");
		}
	});
	
	$(".nav li").bind("mouseover",function(){
		
	});
	 /* $(window).keydown(function (e) { 
		 if(e.which == 13) {
			 login();
		 }
	 }); */
});

function login() {
	window.location.href='<%=baseUrl%>/page/login';
}

function register(){
	window.location.href='<%=baseUrl%>/page/register';
}

function logout(){
	$.ajax({
        async:false,
        type:"post",
        url:baseUrl+"/logout",
        data:{
        },
        dataType:"json",
        success : function(data){
        	$("#mainForm").action=baseUrl+"/";
			$("#mainForm").submit();
        },
        error:function(XMLHttpRequest, textStatus, errorThrown){
        }
    });
}
</script>