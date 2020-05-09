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
<title>订单列表</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />
 <link href="css/bootstrap-select.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/EPD/layui/css/layui.css" media="all">
 <link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
 <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
 <link rel="stylesheet" href="/EPD/css/f/iconfont.css">
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
			<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Workload</div></div>
			<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
				
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" style="min-height: 50px">
					<!-- 右侧主体 左上角按钮 -->
						<!-- <div class="tab-content" style="margin-top: 15px"> -->
						<div  class="pull-left" style="margin-bottom:30px;">
						
							<div  class="form-inline">
								 <div class="form-group">
								
									<select id="order_placer" name="order_placer"
											style="width: 150px; display: inline-block;"
											class="form-control">
											<option value='-1'>请选择人员</option>
											<c:if test="${fn:length(noOperatorList)!=0}">
											<c:forEach items="${noOperatorList}" var="item" >
												<option   ${item.username==name?'selected':''} value='${item.username}'>${item.username}</option>
										     	</c:forEach>
											</c:if>
										</select>
									
										  <div class="layui-inline">
									      <div class="layui-input-inline">
									        <input type="text" class=" form-control" style="width:250px;" id="test10" placeholder="请选择日期 " readonly="readonly">
									     <button style="margin-left: -10px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default" id="aa">
											search
										</button>
									      </div>
									    </div>
											
										
								
								</div>
							</div>
						</div>
						
						<!--列表开始  -->
						
						
						
						<!-- 解表结束 -->
		
					
					</div>
					<!-- ↑右侧↑ -->
						<div>
							<table class="layui-hide" id="demo" lay-filter="test"></table>
				
						</div>
				</div>
			</div>
		</div>
	</div>	
<!-- 跳转隐藏form表单 -->
	<form action="" method="post" id="jump" hidden="hidden">
		<input type="text" id="usernameId" name="kb_no" value ="" />
		<input type="text" id="typeId" name="type" value ="" />
	</form>
	
</body>
	

	<script type="text/javascript"  src="/EPD/js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="/EPD/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript" src="/EPD/js/public.js"></script>
	<script type="text/javascript" src="/EPD/js/clipboard.min.js"></script>
	<script>
	

	
	 layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'slider'], function(){
	  var laydate = layui.laydate //日期
	  ,laypage = layui.laypage //分页
	  ,layer = layui.layer //弹层
	  ,table = layui.table //表格
	  ,carousel = layui.carousel //轮播
	  ,upload = layui.upload //上传
	  ,element = layui.element //元素操作
	  ,slider = layui.slider //滑块
	  laydate.render({
		    elem: '#test10'
		    ,type: 'datetime'
		    ,range: "~"
		  });
	  //执行一个 table 实例
	  table.render({
	     elem: '#demo'
	    ,height: 550
	    ,url: '/EPD/main/findWorksheetList.do' //数据接口
	    ,title: '订单表'
		,id:'contenttable'
	    ,page: true //开启分页
	    ,toolbar: true  //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
	    //,totalRow: true //开启合计行
	    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
	    , limit: 300
    	,limits: [10,20,50,100, 300, 500,1000,5000,10000,20000,100000]
	    ,where:{
	    	order_placer: $("#order_placer").val()
	    }
	    ,cols: [[ //表头
	       {field: 'scheduling_va', title: 'VA No', width:130,sort: true,fixed: 'left',align:'center'}
	      ,{field: 'scheduling_kb', title: 'KB No', width: 130, sort: true,fixed: 'left', align:'center'}
	      ,{field: 'workers', title: 'Operator', width: 150, sort: true, align:'center'}
	      ,{field: 'scheduling_day', title: 'Date', width:120,sort: true, align:'center'} 
	      ,{field: 'start_time', title: 'Start Time ', width: 150, sort: true, align:'center'}
	      ,{field: 'end_time', title: 'End Time', width: 100, sort: true, align:'left',event: 'setSign'}
	      ,{field: 'scheduling_hours', title: 'Hour', width:120, sort: true, align:'center'}
	      ,{field: 'bench_name', title: 'Bench Name', width:120,sort: true,align:'center'}
	      ,{field: 'close_time', title: 'Close Time', width: 120,sort: true, align:'center'}
	      ,{field: 'typeOrder', title: 'Part Type', width: 100,sort: true, align:'center'}
	      
	    ]]
	  });
	//搜索
		$('#aa').on('click', function(){
			 var order_placer = $.trim($("#order_placer").val());
		      if(order_placer==-1){
		    	  order_placer="";
		      } 
		      
		      var searchDate = $.trim($('#test10').val());
		       var start_time="";
		       var end_time="";
		       if(searchDate!=null&&searchDate!=""){
		    	   start_time=searchDate.split("~")[0];
		    	   end_time=searchDate.split("~")[1];
		       }
		       console.log("start_time:::"+start_time);
		       console.log("end_time:::"+end_time);
		   
				        table.reload('contenttable', {
				        	method:'post',
				            where: {
				            	workers: order_placer,
				            	start_time:start_time,
				            	end_time:end_time
				            	
				            }
				        });
			    });
	
		  
	});
		 
	
	
	
	  
	

  
	
	
	$(document).ready(function(){  
	
	  
		
		
		three();
	});  
	layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  //日期范围
			  laydate.render({
			    elem: '#test6'
			    ,range: '~'
			  });
		});
		 
		
		//键盘回车按下搜索
		document.onkeydown=function(event){   
			e = event ? event :(window.event ? window.event : null);   
			if(e.keyCode==13){  
				var isFocus=$("#username").is(":focus");
				if(isFocus==true){
					//执行的方法   
					searchs();
					return false;  
				}
			 }   
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