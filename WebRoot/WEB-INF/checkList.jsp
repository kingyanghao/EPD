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
<title>任务单列表</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/EPD/layui/css/layui.css" media="all">
 <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
 <script src="/EPD/js/jquery-1.11.2.min.js"></script>
<style type="text/css">
#main{
	margin-left:14%
}
#zuo {
	background: url("/EPD/img/caidan1.png");
	background-size: 100% 100%
}
.layui-nav{
background: url("/EPD/img/shangm .png");
	background-size: 100% 100%
}
#asd:visited {
	background: red;
	color: red;
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
        font-size:70%;
    }
}

@media ( min-width :1200px) {
    .container {
        width: auto;
        font-size:80%;
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
#lantiao{
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;

}
</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>
<%
String error = (String)request.getAttribute("error");         // 获取错误属性
if(error != null) {
%>
<script type="text/javascript" language="javascript">
alert("登录失败");                                            // 弹出错误信息

window.location='/EPD/main/sign_in.do' ;                            // 跳转到登录界面
</script> 
<%
}
%>	
	<!-- 内容区 -->
	<div id="main">
			<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Daily Check</div></div>
			<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
				
				
				
				
				
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" style="min-height: 50px">
					   <!--上方结束  -->
        <div class="t-ctn"  id="opectorId">
      			<div class="layui-form">
				  <div class="layui-form-item">
				
				    
				     <div class="layui-inline">
				      <div class="layui-input-inline" style="margin-right:0px;">
				        <input type="text" class="layui-input" readonly="readonly" id="test3" placeholder="yyyy-MM">
				      </div>
				      <button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default"
							onclick="getmonth()" id="btnId" >
							search
						</button>
				    </div>
				    
				    <div class="layui-inline" style="float:right;">
				      <div class="layui-input-inline" style="margin-right:0px;width: 28px; height: 28px;color: white;background-color:#e7bb41 ;border-radius: 50%; margin-top: 6px;"> </div>
				      <label class="layui-form-label">:MISS</label>
				    </div>
				       <div class="layui-inline" style="float:right;">
				      <div class="layui-input-inline" style="margin-right:0px;width: 28px; height: 28px;color: white;background-color: #59bc3a;border-radius: 50%;margin-top: 6px;"> </div>
				      <label class="layui-form-label">:OK</label>
				    </div>
				       <div class="layui-inline" style="float:right;">
				      <div class="layui-input-inline" style="margin-right:0px;width: 28px; height: 28px;color: white;background-color: #e54b54;border-radius: 50%;margin-top: 6px;"> </div>
				      <label class="layui-form-label">:NOK</label>
				    </div>
					</div>
		 		</div>
      	 </div>
        <!-- 下方结束 -->
					
					
					<!-- 右侧主体 左上角按钮 -->
					<!-- ↑右侧↑ -->
					<div class="row" style="margin:0;display: flex;flex-wrap: wrap;" id="addPageId">
						
							
							
						
								
							
							
							
					</div>
				
			
				
				</div>
			</div>
		</div>
	</div>	

	
</body>
	
	
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript"  src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/public.js"></script>

	<script>
	$(document).ready(function(){  
		getmonth();
		two_first();
	});  
		
		
		layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  //时间选择器
			  laydate.render({
			    elem: '#test3'
			    ,type: 'month'
			    , format: 'yyyy-MM' //可任意组合
			  });
		});
		//键盘回车按下搜索
		document.onkeydown=function(event){   
			e = event ? event :(window.event ? window.event : null);   
			if(e.keyCode==13){  
				var isFocus=$("#btnId").is(":focus");
				if(isFocus==true){
					//执行的方法   
					getmonth();
					return false;  
				}
			 }   
		} 
		
		
	
	
		
	function getmonth(){
		/* alert($("#test8").val()); */
		var str= $("#test3").val();
		var load = layer.load(1, {shade: [0.1,'#fff']});	
			
		$.ajax({
		type: "POST",
		url: '<%=basePath%>main/workCheckOrder.do',
    	data: {
    		str:str,
    	},
		dataType:'json',
		cache: false,
		success: function(result){
			console.log(result);
			layer.close(load);
			
		
			console.log(result);
			if(result.succ==1){
				layer.close(load);
				addPage(result.benchModificationList);
			}else if(result.succ==-1){
				layer.close(load);
				layer.msg('暂无数据！',{time : 2000,icon : 2});	
			}else{
				 layer.msg('登陆失败！', {
						time : 2000,
						icon : 2
					},function(){
						 window.location.href="<%=basePath%>main/sign_in.do";
                    });
			}
		
		},
		error: function(data){
			layer.close(load);
			layer.msg('查询失败！',{time : 1000,icon : 2});	
		}
	});
	
	
}
		
	
	function addPage(benchModificationList){
		var html=[];
	
		for(var i=0;i<benchModificationList.length;i++){
			html.push('<div class="col-md-3 col-lg-3 col-xl-3 col-sm-3" style="display: flex;flex-grow: 1;justify-content: space-between;">');
			html.push('<div style="width:100%;border:solid 2px #49a6d7;margin-top:10px;border-radius: 15px;margin-bottom: 10px;">');
			html.push('<div style="height:55px ;color:#606265;font-size: 14px; display: flex;justify-content: center;align-items: center;">'+benchModificationList[i].bench_name+'</div>');
			html.push('<div style="color:#606265;display: flex;justify-content:flex-start;flex-wrap: wrap; padding-bottom: 10px; ">');
			var dailyList=benchModificationList[i].dailyList;
			<!-- 每天遍历的开始 -->
			for(var s=0;s<dailyList.length;s++){
			html.push('<div style="width:31px;height:41px; margin:4px;">');
			if(dailyList[s].ispaid==1){//休息日
			html.push('<div style="height:10px;display: flex;justify-content: flex-end;font-size: 10px;color:#3ba1cc;">休</div>');
			}else if(dailyList[s].ispaid==2){//工作日
			html.push('<div style="height:10px;display: flex;justify-content: flex-end;font-size: 10px;color:#3ba1cc;">班</div>');
			}else{
			html.push('<div style="height:10px;display: flex;justify-content: flex-end;font-size: 10px;color:#3ba1cc;"></div>');
			}
			
			if(dailyList[s].status==2){//异常
				
			html.push('<div style=" align-items: center;width: 28px; height: 28px;color: white;background-color: #e54b54;border-radius: 50%;display: flex;justify-content: center;">'+dailyList[s].days+'</div>');
			}else if(dailyList[s].status==1){//正常
			html.push('<div style=" align-items: center;width: 28px; height: 28px;color: white;background-color: #59bc3a;border-radius: 50%;display: flex;justify-content: center;">'+dailyList[s].days+'</div>');
			}else if(dailyList[s].status==0){//不需要点检
			html.push('<div style=" align-items: center;width: 28px; height: 28px;color: white;background-color: #e7bb41;border-radius: 50%;display: flex;justify-content: center;">'+dailyList[s].days+'</div>');
			}
			html.push('</div>');
			}
			
			<!--每天遍历的结束  -->
			html.push('</div>');
			html.push('</div>');
			html.push('</div>');
		
		}
		html.push('<div class="col-md-3 col-lg-3 col-xl-3 col-sm-3" style="display: flex;flex-grow: 1;justify-content: space-between;">');
		html.push('</div>');
		
		$("#addPageId").html(html.join('')); 
		
	}
	
	
	
	
	
		function date(date1){
			var date = new Date(date1);
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var day = date.getDate();
			var hours = date.getHours();
			var mins = date.getMinutes();
			var secs = date.getSeconds();
			var msecs = date.getMilliseconds();
			
			if (month < 10) {
			    month = "0" + month;
			}
			if (day < 10) {
			    day = "0" + day;
			}
			if(hours<10) hours = "0"+hours;
			if(mins<10) mins = "0"+mins;
			//if(secs<10) secs = "0"+secs;
			
			var nowDate = year + "-" + month + "-" + day;
			return nowDate;
		}
	</script>
</html>