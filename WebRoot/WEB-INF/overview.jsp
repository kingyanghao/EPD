<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
    href="assets/img/apple-icon.png">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>总览</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->


 <link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="layui/css/layui.css" rel="stylesheet" media="all"/>
 <link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
 <script src="/EPD/js/jquery-1.11.2.min.js"></script>
<style type="text/css">


.layui-nav{
background: url("/EPD/img/shangm.png");
	background-size: 100% 100%
}
#asd:visited {
	background: red;
	color: red;
}
#lantiao{
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;

}
#asd:hover {
	background: red;
	color: red;
}

#asd:active {
	background: red;
	color: red;
}
.line{
height:5px(或者你觉得合适的高度);
width: 1px;
background: #000;
}
 * {
        margin: 0;
        padding: 0;
    }

  

    .t-ctn .s-ctn {
        min-height: 100px;
        white-space: nowrap;
        font-size: 0;
        min-width: max-content;
		min-width: -moz-max-content;
        
    }

    .t-ctn .s-ctn div {
   		margin-left:10px;
        font-size: 14px;
        box-sizing: border-box;
        white-space: normal;
        word-wrap: break-word;
        word-break: break-all;
        overflow: hidden;
        display: inline-block;
        height: 100%;
       
    }
    .jianbian{
    	background:-webkit-linear-gradient(#ddf4fc, #e4e9f8);
		background:-o-linear-gradient(#ddf4fc, #e4e9f8);
		background:-moz-linear-gradient(#ddf4fc, #e4e9f8);
		background:linear-gradient(#ddf4fc, #e4e9f8);
		background-size:100%;
		
		  
    }
     .jianbian1{
    	background:-webkit-linear-gradient(#ddf4fc, #e4e9f8);
		background:-o-linear-gradient(#ddf4fc, #e4e9f8);
		background:-moz-linear-gradient(#ddf4fc, #e4e9f8);
		background:linear-gradient(#ddf4fc, #e4e9f8);
		background-size:100%;
		
		  
    }
   .id{position:absolute;
       z-index: 1111;
       
   }这样就可以固定。。	
       
       
@media ( min-width :700px) {
    .container {
        width: auto;
        font-size:60%;
    }
}

@media ( min-width :900px) {
    .container {
        width: auto;
        font-size:60%;
    }
  
}

@media ( min-width :992px) {
    .container {
        width: auto;
        font-size:60%;
    }
   
}
@media ( min-width :1100px) {
    .container {
        width: auto;
        font-size:60%;
    }
   
}

@media ( min-width :1200px) {
    .container {
        width: auto;
        font-size:70%;
    }
    
}

@media ( min-width :1400px) {
    .container {
        width: auto;
        font-size:100%;
    }
    
}

.btn:focus, .btn:active:focus, .btn.active:focus, .btn.focus, .btn:active.focus, .btn.active.focus {
    outline: none;
    outline: none;
    outline-offset: -2px;
}
 .layui-laydate{
 z-index:19891017;
 }
 
 
 .grad {
     background: linear-gradient(to bottom, #63bcf4, #688bbc);
        -webkit-background-clip: text;
        color: transparent;
        font-size:3em;
        
}
.sizes{
color:#5d5c5c;
font-size:200%;
}
</style>
</head>
<body>
	
<%@ include file="top.jsp"%>
	<!-- 内容区 -->
		<%
String error = (String)request.getAttribute("loginError");         // 获取错误属性
if(error != null) {
%>
<script type="text/javascript" language="javascript">
alert("登录失败");                                            // 弹出错误信息

window.location='main/sign_in.do' ;                            // 跳转到登录界面
</script> 
<%
}
%>	
	
	

	<div id="main">
			<div class="">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
					
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" >
			<!--上放开始  -->		
		
       <!--上方结束  -->
       
      			<div class="row" style="">
      			<div class="col-md-12 col-xs-12 col-sm-12" style="text-align: center;">
      			<span class="grad">Test Lab Online</span>
      			</div>
      			<div class="col-md-12 col-xs-12 col-sm-12" style="text-align: center;">
      				<div class="row" style="margin-top:40px;margin-left:10%;margin-right:10%;">
		      			<div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;">
		      				<a href="/EPD/taijia/findTaijia.do"><img alt="" src="img/bench.png" style="width:90%;max-width: 224px;"></a>
		      				<div class="sizes" >
		      				MAE Overview
		      				</div>
		      			</div>
		      			<div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;">
		      			<a href="/EPD/main/dailyCheckList.do"><img alt="" src="img/repair.png" style="width:90%;max-width: 224px;"></a>
		      				<div class="sizes" >
		      				Maintenance&Repair
		      				</div>
		      			</div>
		      			<div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;">
		      				<a href="/EPD/main/createOeder.do"><img alt="" src="img/vaOrder.png" style="width:90%;max-width: 224px;"></a>
		      				<div class="sizes">
		      				VAorder
		      				</div>
		      			</div>
      			</div>
      			
      			<div class="row" style="margin-top:82px;margin-left:10%;margin-right:10%;">
		      			<div class="col-md-2 col-xs-2 col-sm-2" style="text-align: center;">
		      			</div>
		      			<div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;">
		      			<a href="/EPD/main/dailyOrder.do">	<img alt="" src="img/workforce.png" style="width:90%;max-width: 224px;"></a>
		      				<div class="sizes" >
		      				Work Force
		      				</div>
		      			</div>
		      			<div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;">
		      			<a href="/EPD/dian/dian.do"><img alt="" src="img/control.png" style="width:90%;max-width: 224px;"></a>
		      				<div class="sizes" >
		      				Control System
		      				</div>
		      			</div>
		      			<div class="col-md-2 col-xs-2 col-sm-2" style="text-align: center;">
		      			</div>
      				</div>
      			</div>	
      			
      			</div>	
        <!-- 下方结束 -->
    </div>
  </div>
</div>
		</div>	
	</div>




	<c:if test="${role==1}">
		<div id="footer"  style="margin-bottom:0px;margin-left:10%;margin-right:0%;height:54px; text-align: right; ">
	      			<a href="main/peopleList.do"><img alt="" src="img/people.png" style="width:90%;width: 58px;"></a>
     	</div>
     </c:if>	
</body>
	
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	
	<script>
	
	// 窗口加载事件仅用于窗口高度取决于图像 
	$(window).bind("load", function() { 
	    var footerHeight = 0, 
	    footerTop = 0, 
	    $footer = $("#footer"); 
	    positionFooter(); 
	　　//定义positionFooter function 
	　　function positionFooter() { 
	　　//取到div#footer高度 
	　footerHeight = $footer.height(); 
	　 //div#footer离屏幕顶部的距离 
	　　footerTop = ($(window).scrollTop()+$(window).height()-footerHeight)+"px"; 
	　　/* DEBUGGING STUFF 
	　　console.log("Document height: ", $(document.body).height()); 
	　　console.log("Window height: ", $(window).height()); 
	　 console.log("Window scroll: ", $(window).scrollTop()); 
	　　console.log("Footer height: ", footerHeight); 
	　　console.log("Footer top: ", footerTop); 
	　　console.log("-----------") 
	　　*/ 
	　　//如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位 
	　　　　if ( ($(document.body).height()+footerHeight) < $(window).height()) { 
	   　　 $footer.css({ 
	       　　 position: "absolute" 
	   　　 }).stop().animate({ 
	       　　 bottom: 0 ,
	       right:0   
	   　　 }); 
	　　　 }else { 
	   　　　　 $footer.css({ 
	       　　 position: "static" 
	    　　　　}).stop().animate({ 
	         
		   　　 });  
	　　　　} 
	　　} 
	$(window).scroll(positionFooter).resize(positionFooter); 
	});
	

	</script>
</html>