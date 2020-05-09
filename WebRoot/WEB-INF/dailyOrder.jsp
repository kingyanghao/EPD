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
<title>当日排单</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="layui/css/layui.css" rel="stylesheet" media="all"/>
 <link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
 <script src="/EPD/js/jquery-1.11.2.min.js"></script>
<style type="text/css">
#main{
	margin-left:14%;
}
#lantiao{
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;

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
 * {
        margin: 0;
        padding: 0;
    }

    .t-ctn {
       
       overflow :auto;
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
     .t-ctn {
       
        overflow :auto
        
    }
}

@media ( min-width :992px) {
    .container {
        width: auto;
        font-size:60%;
    }
    .t-ctn {
       
     overflow :auto
       
    }
}
@media ( min-width :1100px) {
    .container {
        width: auto;
        font-size:60%;
    }
    .t-ctn {
   
        overflow :auto
       
    }
}

@media ( min-width :1200px) {
    .container {
        width: auto;
        font-size:70%;
    }
    .t-ctn {
      
        overflow :auto
        
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
</style>
</head>
<body>
	
<%@ include file="top.jsp"%>
<%@ include file="left.jsp"%>
	<!-- 内容区 -->
	
	

	<div id="main">
	<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Daily Order</div></div>
			<div class="">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
								
				
				<!-- 页面主体头部 -->
					
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" >
			<!--上放开始  -->		
		
       <!--上方结束  -->
        <div class="t-ctn"  id="opectorId">
      	
      	 </div>
        <!-- 下方结束 -->
    </div>
  </div>
</div>
		</div>	
	</div>


</body>
	<!-- 跳转隐藏form表单 -->
	<form action="" method="post" id="jump" hidden="hidden">
		<input type="text" id="usernameId" name="kb_no" value ="" />
		<input type="text" id="typeId" name="type" value ="" />
	</form>
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>

	
		$(document).ready(function(){  
			selectUser();   
			four();
		});  
		
		function selectUser(){
				//进行数据的计算
				$.ajax({
				type: "POST",
				url: '<%=basePath%>main/dailyOrderList.do',
		    	data: {
		    		
		    	},
				dataType:'json',
				cache: false,
				success: function(data){
					console.log(data.scheduling_List);
					if(data.succ==-1){
						layer.msg('暂无数据！',{time : 1000,icon : 3});	
					}	
					if(data.succ==-2){
						layer.msg('登陆失败！', {
							time : 2000,
							icon : 2
						},function(){
							 window.location.href="<%=basePath%>main/sign_in.do";
	                    });
					}	
					if(data.succ==1){
							
							//关闭莫太宽
							//刷新页面
							$("#opectorId").empty();
							var html8=[];
							for(var i=0;i<data.scheduling_List.length;i++){
							html8.push('<div class="jianbian id" style="width:270px;margin-top:5px;">');	
							html8.push('<div style="height:100px;color:#343535;line-height:100px; font-size: 14px;font-weight: bold;text-align: center;width: 150px;display: inline-block;">'+data.scheduling_List[i].username+'</div>');	
							if(data.scheduling_List[i].on_the_job=='off'){
								html8.push('<div style="height:100px;color:#343535;line-height:100px; font-size: 14px;font-weight: bold;text-align: center;width:80px;display: inline-block;"> <button class="layui-btn layui-btn-normal" style=" background-color: #a9aaab;width: 80px;" onclick="getoff('+data.scheduling_List[i].user_id+',\''+data.scheduling_List[i].on_the_job+'\')">不在岗</button></div>');	
							}else{
								html8.push('<div style="height:100px;color:#343535;line-height:100px; font-size: 14px;font-weight: bold;text-align: center;width: 80px;display: inline-block;"> <button class="layui-btn layui-btn-normal" style="width:80px;" onclick="getoff('+data.scheduling_List[i].user_id+',\''+data.scheduling_List[i].on_the_job+'\')">在岗</button></div>');	
								
							}
							
							
							html8.push('</div>');	
							
							html8.push('<div class="s-ctn jianbian1" style="position:relative;left:270px;margin-top:5px;color:#a9aaab;">');	
							/* 遍历 */
								
							if(data.scheduling_List[i].scheduling_recordList!=null&&data.scheduling_List[i].scheduling_recordList!=undefined){
								for(var n=0;n<data.scheduling_List[i].scheduling_recordList.length;n++){
									var aa=data.scheduling_List[i].scheduling_recordList[n].scheduling_hours*50;
									/* if(aa<150){
										aa=150;
									}else if(aa<725&&aa>=150){
										aa+=25;
									}
									else if(aa>800){
										aa=800;
									} */
									aa+=150;
									if(n==data.scheduling_List[i].scheduling_recordList.length-1){
										html8.push('<div style="width:'+aa+'px;height:100px;padding-top:5px;margin-right: 10px;margin-left: 0px;cursor:pointer;" onclick="deails(\''+ data.scheduling_List[i].scheduling_recordList[n].scheduling_kb +'\',\''+data.scheduling_List[i].scheduling_recordList[n].typeOrder+'\')">');
									}else{
										html8.push('<div style="width:'+aa+'px;height:100px;padding-top:5px;border-right: solid #c1b8b8;margin-right: 10px;margin-left: 0px;cursor:pointer;" onclick="deails(\''+ data.scheduling_List[i].scheduling_recordList[n].scheduling_kb +'\',\''+data.scheduling_List[i].scheduling_recordList[n].typeOrder+'\')">');
									}
									
									html8.push('<div style="display:block;height:15px;text-align: center;font-size: 13px;margin-right: 10px;margin-left: 0px;">'+data.scheduling_List[i].scheduling_recordList[n].order_placer+'</div>');
									html8.push('<div style="display:block;height:15px;text-align: center;font-size: 13px;margin-right: 10px;margin-left: 0px;">'+data.scheduling_List[i].scheduling_recordList[n].typeOrder+'('+data.scheduling_List[i].scheduling_recordList[n].bench_name+')</div>');
									html8.push('<div style="display:block;height:15px;text-align: center;font-size:13px;margin-right: 10px;margin-left: 0px;">'+data.scheduling_List[i].scheduling_recordList[n].start_time+'-'+data.scheduling_List[i].scheduling_recordList[n].end_time+'</div>');
									if(data.scheduling_List[i].scheduling_recordList[n].scheduling_status==1){
									html8.push('<div style="display:block;height:15px;text-align: center;font-size: 13px;margin-right: 10px;margin-left: 0px;color:#15b1e8;">uncompleted</div>');
									}else{
									html8.push('<div style="display:block;height:15px;text-align: center;font-size: 13px;margin-right: 10px;margin-left: 0px;color:green;">completed</div>');
									}
									html8.push('<div style="display:block;height:20px;text-align: center;margin-top:5px;background-color: #1fc2f8;font-size: 13px;margin-right: 10px;margin-left: 0px;font-weight: bold;color:#eeeeee;cursor:pointer;border:solid #b7adad;line-height:15px;">'+data.scheduling_List[i].scheduling_recordList[n].scheduling_kb+'</div>');
									html8.push('</div>');
								}
							}
							/* 遍历结束 */
							html8.push('</div>');	
						}
							 $("#opectorId").html(html8.join(''));	
					}
				},
				error: function(data){
					layer.close(load);
					layer.msg('查询失败！',{time : 1000,icon : 2});	
				}
			});
			 
		
	}
		
		/* 详情 */
		function deails(usernameId,type) {
			$('#usernameId').val('');
			$('#typeId').val('');
			$('#usernameId').val(usernameId);
			$('#typeId').val(type);
			$('#jump').attr("action", "<%=basePath%>main/orderDeails.do");
			$('#jump').submit(); 
			
		}
		
	function getoff(id,status){
		
		//进行数据的计算
		$.ajax({
		type: "POST",
		url: '<%=basePath%>main/updatejob.do',
    	data: {
    		id:id,
    		status:status
    	},
		dataType:'json',
		cache: false,
		success: function(data){
			if(data.succ==1){
				layer.msg('修改成功！',{time : 1000,icon : 1});	
				window.location.reload();
			}else{
				layer.msg('修改失败！',{time : 1000,icon : 2});	
			}
		},
		error: function(data){
			layer.close(load);
			layer.msg('查询失败！',{time : 1000,icon : 2});	
		}
	});
	 
	}
			
		
		
	</script>
</html>