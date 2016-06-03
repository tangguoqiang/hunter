<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../common/include.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link href="images/favicon/favicon.ico" rel="shortcut icon"> -->
<title>hunter</title>
<link href="<%=baseUrl%>/css/train/global.css" rel="stylesheet" type="text/css"/>
<link href="<%=baseUrl%>/css/train/schema.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div class="bgcolor" style="margin-top: -17px;">
		<div class="scheme-box wrap1200" id="mainDiv">
			<div class="clearfix scheme-intro J-scheme-base" style="margin-bottom: 55px;">
				<img class="fl" src="<%=baseUrl%>/images/train/temp_1443083125329.jpg" alt="">
				<div class="scheme-mes"> 
					<h5 id="J-scheme-name">HTML5前端工程师</h5> 
					<p class="message-txt">本课程通过全面系统的讲解，深入浅出，循序渐进，实现html5从入门到精通，学会此课程，月薪过万不是梦。</p>
					<p class="scheme-bottom">方案总计:<em>7</em>个阶段&nbsp;&nbsp;/&nbsp;&nbsp;<em>23</em>门课&nbsp;&nbsp;/&nbsp;&nbsp;<em>28小时41分</em>&nbsp;&nbsp;/&nbsp;&nbsp;<em>19155</em>人学习</p>
				</div>
				<!-- <div class="scheme-right  J-user-achievement-box"> 
					<button class="btn-green pos-btn" data-operate="joinScheme">参加该方案</button>
				</div> -->
			</div>
			<%-- <div class="stage-box clearfix J-stage-box" style="height: 361px;margin-top: 55px;" data-stageid="2"> 
				<div class="stage-tit " data-operate="shirnk"><span class="J-title" data-operate="shirnk">阶段01</span></div>    
				<!-- 学习完之后阶段背景由黑色变为灰色添加‘learned’ --> 
				<div class="tage-cont">  
					<p class="course-tit J-stage-title" data-operate="shirnk"><em data-operate="shirnk">HTML5的前世今生及一个简单案例</em></p>  
					<p class="course-function" data-operate="shirnk">   本阶段帮助学生建立起对HTML5技术的大局观，包括HTML5的历史由来、发展前景、开发工具及HTML5社区，还通过一个简单案例演示一个典型简易HTML5网站的实现。</p>      
					<a href="javascript:void(0);" class="down-btn J-toggle-expend-btn" style="transform: rotate(180deg); transform-origin: 50% 50% 0px;"></a>  
					<ul class="clearfix course-list-box J-course-list-box">  
						<li>
							<a class="course-link" target="_blank" href="http://www.yun.lu/student/course/details/737_0_0"> 
								<img class="course-img" src="<%=baseUrl%>/images/train/1453690154254.png" alt="">         
								<p class="course-name">html入门实操</p>    
								<p class="learn-mes"> <span class="inb wp40">3053人学习</span><span class="inb wp34">3小时27分</span><em class="text-green inb tar">免费</em></p>   
							</a>  
						</li>  
						<li>   
							<a class="course-link" target="_blank" href="http://www.yun.lu/student/course/details/72_0_0">            
								<img class="course-img" src="<%=baseUrl%>/images/train/1433153679117.jpg" alt="">            
								<p class="course-name">秀野堂主讲HTML5导论</p>    
								<p class="learn-mes"><span class="inb wp40">5791人学习</span><span class="inb wp34">1小时48分</span><em class="text-green inb tar">免费</em></p>   
							</a>  
						</li>  
						<li>   
							<a class="course-link" target="_blank" href="http://www.yun.lu/student/course/details/133_0_0">            
								<img class="course-img" src="<%=baseUrl%>/images/train/1452219955743.jpg" alt="">            
								<p class="course-name">一个典型简易HTML5网站的实现</p>    
								<p class="learn-mes"><span class="inb wp40">2059人学习</span><span class="inb wp34">0小时55分</span><em class="text-green inb tar">免费</em></p>   
							</a>  
						</li>
					</ul> 
				</div>
			</div> --%>
			<!-- <div class="stage-box clearfix J-stage-box" style="height:115px;" data-stageid="3"> 
				<div class="stage-tit " data-operate="shirnk"><span class="J-title" data-operate="shirnk">02</span></div>    
				学习完之后阶段背景由黑色变为灰色添加‘learned’ 
				<div class="tage-cont">  
					<p class="course-tit J-stage-title" data-operate="shirnk">   <em data-operate="shirnk">CSS知识图谱及 HTML5技术核心</em></p>  
					<p class="course-function" data-operate="shirnk">   本阶段讲解了 HTML5开发中非常重要的知识点，即Web API，具体讲了通信与计算API、WebSocket、存储相关API、Canvas等CSS知识图谱及其细化，另外还讲解了 CSS知识图谱及其细化介绍。  </p>      
					<a href="javascript:void(0);" class="down-btn J-toggle-expend-btn" style="transform: rotate(0deg); transform-origin: 50% 50% 0px;"></a>  
					<ul class="clearfix course-list-box J-course-list-box hide">    课程列表  </ul> 
				</div>
			</div> -->
		</div>
	</div>

	<%@ include file="../common/footer.jsp"%>
	<script type="text/javascript">
$(document).ready(function (){
	$.ajax({
		type:'post',
		dataType:'json',
		url:"<%=baseUrl%>"+'/train/listCourses',
		data:{
			prjId:1
		},
		success:function(data){
			var obj,html="";
			var h,m,height;
			var courses,course;
        	for(var i=0,len=data.length;i<len;i++){
        		obj=data[i];
        		courses = obj.courses;
        		if(courses.length <= 4){
        			height = 361;
        		}else if(courses.length <=8){
        			height = 607;
        		}else{
        			height = 853;
        		}
        		//607px
    			html = html+ "<div class='stage-box clearfix J-stage-box' style='height: "+height+"px;'> "
                    +"<div class='stage-tit'><span class='J-title'>阶段0"+(i+1)+"</span></div>"
                    +"<div class='tage-cont'>"
                    +"<p class='course-tit J-stage-title'><em>"+obj.title+"</em></p>"
                    +"<p class='course-function'>" + obj.des +"</p>"
//	                    +"<a href='javascript:void(0);' class='down-btn J-toggle-expend-btn' style='transform: rotate(180deg); transform-origin: 50% 50% 0px;'></a>"
                    +"<ul class='clearfix course-list-box J-course-list-box'>";   
        		
               
                for(var j = 0,len1 = courses.length;j<len1;j++){
                	course = courses[j];
                	h = parseInt(course.costTime/3600);
            		m = parseInt((course.costTime - h*3600)/60);
            		html = html+"<li><a class='course-link' target='_blank' href='"+course.url+"'> "
            		           +"<img class='course-img' src='<%=baseUrl%>/images/train/"+course.img+"' alt=''> "
            		           +"<p class='course-name'>"+course.title+"</p>"
            		           +"<p class='learn-mes'><span class='inb wp40'>3053人学习</span><span class='inb wp34'>"+h+"时"+m+"分"+"</span><em class='text-green inb tar'>免费</em></p>"
            		           +"</a></li>";
                }
                html = html+"</ul></div></div>"
        	}
        	  
        	$("#mainDiv").append(html);
		},
		error:function(textStatus,errorThrown){
		}
	});
});

	</script>
</body>
</html>
