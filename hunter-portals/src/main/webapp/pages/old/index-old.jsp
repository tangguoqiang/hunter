<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="common/include.jsp"%>
<title>hunter</title>
<style type="text/css">
.content {
	margin: 0px 20px 8px 20px;
}
</style>
</head>
<body style="padding: 0px 0px 0px 0px; margin: 0 auto;">
	<%@ include file="common/header.jsp"%>
	<div class="container-fluid"
		style="padding-left: 22%; padding-right: 24%;margin-bottom: 2%;">
		<div class="row">
			<img id="bannerImg" class="img-responsive" src="">
		</div>
		<div id="bannerBox" class="row" style="background: #000000;">
		</div>
		<div class="row" style="margin-top: 2%;">
			<div class="col-xs-3" style="margin-right: 1%;width: 23%">
				<div class="row">
					<div class="indlf_box searchbox">
				    	<span>搜索职位或公司</span>
				        <div class="search">
				        	<input type="text" name="searchtext" style="font-size: 14px;" class="">
				            <input type="submit" name="searchbtn" value="">
				        </div>
			     	</div>
				</div>
				<div class="row">
					<div class="indlf_box menubox">
			                <div class="menu">
			                    <ul>
			                        <li class="workingplace"><span>工作地点</span>
			                            <p>
			                                <a>北京</a>
			                                <a>上海</a>
			                                <a>武汉</a>
			                                <a>香港</a>
			                                <a>深圳</a>
			                                <a>广州</a>
			                                <a>其他</a>
			                            </p>
			                        </li>
			                        <li class="classification"><span>职位分类</span>
			                            <p>
			                                <a>互联网金融</a>
			                                <a>商业银行</a>
			                                <a>私募股权与风投</a>
			                                <a>投行与券商</a>
			                                <a>财富管理</a>
			                                <a>保险公司</a>
			                                <a>官方机构</a>
			                                <a>会计财务</a>
			                                <a>职能岗位</a>
			                                <a>信托与融资租赁</a>
			                                <a>基金与期货</a>
			                                <a>其他</a>
			                            </p>
			                        </li>
			                        <li class="educational"><span>学历要求</span>
			                            <p>
			                                <a>大专</a>
			                                <a>本科</a>
			                                <a>硕士</a>
			                                <a>博士</a>
			                            </p>
			                        </li>
			                        <li class="workexperience"><span>工作经验</span>
			                            <p>
			                                <a>不限</a>
			                                <a>1年以下</a>
			                                <a>1-3年</a>
			                                <a>3-5年</a>
			                                <a>5年以上</a>
			                            </p>
			                        </li>
			                        <li class="worknature"><span>工作性质</span>
			                            <p>
			                                <a>全职</a>
			                                <a>实习</a>
			                            </p>
			                        </li>
			                    </ul>
			                </div>
			            </div>
				</div>
			</div>
			<div id="jobBox" class="col-xs-9 index_right">
			</div>
		</div>
	</div>
	<%@ include file="common/footer.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.menu li').hover(
				function(){
					$(this).append('<div class="menulih">'+ $(this).find('span').text() +'</div>');
					$(this).find('p').show();
				},
				function(){
					$(this).find('.menulih').remove();
					$(this).find('p').hide();
				}
			);
			
			$("body").on("mouseover",".banner>span", function () { 
				$(".current").removeClass("current");
				$(this).addClass("current");
				$("#bannerImg").attr("src",$(this).attr("url"));
			});
			
			loadBanners();
			loadJobs();
		});
		
		function loadBanners(){
			$.ajax({
		        async:false,
		        type:"post",
		        url:baseUrl+"/listBanners",
		        data:{},
		        dataType:"json",
		        success : function(data){
		        	$("#bannerBox").empty();
		        	var obj;
		        	for(var i=0,len=data.length;i<len;i++){
		        		obj=data[i];
		        		$("#bannerBox").append("<div class='banner'><span url='<%=baseUrl %>/images/"
		        				+obj.url+"'>"+obj.title+"</span></div>");
		        	}
		        	$(".banner>span:eq(0)").trigger("mouseover");
		        },
		        error:function(XMLHttpRequest, textStatus, errorThrown){
		        }
		    });
		}
		
		function loadJobs(){
			$.ajax({
		        async:false,
		        type:"post",
		        url:baseUrl+"/job/listJobs",
		        data:{
		        	pageSize:8,
		        	currentPage:1
		        },
		        dataType:"json",
		        success : function(data){
		        	$("#jobBox").empty();
		        	var obj;
		        	for(var i=0,len=data.length;i<len;i++){
		        		obj=data[i];
		        		$("#jobBox").append("<div class='row content conlist'><ul class='col-sm-12'>"
		        				           +"<li><span class='col-sm-10' style='width: 65%;'>"
			        				           +"<a href='javascript:void(0);'>"+obj.post+" | "+obj.department+"</a></span>"
			        				           +"<strong class='col-sm-2' style='width: 35%;'>发布于&nbsp;&nbsp;"+formatTime(obj.publishTime)+"</strong>"
		        				           +"</li>"
		        				           +"<li><span class='col-sm-10'>"
		        				           	   +"<em>"+obj.salary+"</em>"
		        				           	   +"<a href='javascript:void(0);'>"+obj.company+"</a>"
		        				           	   +"<i>["+obj.place+"]</i>"
		        				           	   +"<i>["+obj.nature+"]</i>"
		        				           	   +"<i>["+obj.experience+"]</i>"
		        				           	   +"<i>["+obj.degree+"]</i>"
		        				           +"</span></li>"
		        				           +"<li><span class='col-sm-10'>"
		        				               +"<b>五险一金</b>"
		        				               +"<b>带薪年假</b>"
		        				               +"<b>年度体检</b>"
		        				           +"</span></li>"
		        						   +"</ul></div>");
		        	}
		        },
		        error:function(XMLHttpRequest, textStatus, errorThrown){
		        }
		    });
		}
	</script>
</body>
</html>