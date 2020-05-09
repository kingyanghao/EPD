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

	<!-- 内容区 -->
	<div id="main">
			<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Close Order</div></div>
			<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
				
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" style="min-height: 750px">
					<!-- 右侧主体 左上角按钮 -->
						<!-- <div class="tab-content" style="margin-top: 15px"> -->
						<div  class="pull-left" style="margin-bottom:30px;">
						
							<form id="searchForm"  method="post" class="form-inline">
								 <div class="form-group">
									<input id="pageIndex" name="pageIndex" type="hidden"  value="1" /> 
									<input id="pageSize" name="pageSize" type="hidden" value="10" />
									<input id="curr" name="curr" type="hidden" value="1" />
									<input id="status" name="status" type="hidden" value="2" />	
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
										<select id="va_no" name="va_no"
											style="width: 150px; margin-left: 1%; display: inline-block;"
											class="form-control">
											<option value='-1'>请选择VA No</option>
										</select> 
									<div class="input-group-btn form-group" >
										<input class="form-control" name="kb_no" id="kb_no"
										type="text" value="" placeholder="请输入KB No." style="width: 250px;"> 
										<button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default"
											onclick="searchs()" >
											search
										</button>
									</div>
								</div>
							</form>
						</div>
						
						
						<!-- 右侧主体 左上角按钮 -->
						<!-- <div class="pull-right">
			   				<button class="btn btn-default btn-sm active"  data-toggle='batch-remove' 
							style="border-radius:20px;font-size:14px;width:100px;"	onclick="deleteAll(this)"> 批量删除
							</button>
							<button class="btn btn-default btn-sm active"  data-toggle='batch-remove' 
							style="border-radius:20px;font-size:14px;width:100px;"	> <a href="main/dailyCheck.do">点检</a>
							</button>
		       			</div> -->
		<table class="table table-striped" style="margin-top: 30px;">
 		<thead>
			<tr>
				<th style="width: 15%;">VA No.</th>
				<th style="width: 15%;">KB No.</th>
				<th style="width: 10%;">Order time</th>
				<th style="width: 10%;">Deadline</th>
				<th style="width: 15%;">Operator</th>
				<th style="width: 15%;">Creator</th>
				<th style="width: 10%;">Status</th>
				<th style="width: 10%;">Operation</th>
				
			</tr>
	</thead>
	<tbody></tbody>
</table>
		<div id="demo2"></div>
						<!-- </div> -->
					</div>
					<!-- ↑右侧↑ -->

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
	
	
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript"  src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/public.js"></script>

	<script>
	$(document).ready(function(){  
		
		four();
	});  
		layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  //日期范围
			  laydate.render({
			    elem: '#test6'
			    ,range: '~'
			  });
		});
		  /*点击选择VA号*/
		  $(function() {
		        $("select#order_placer").change(function(event) {
		            var obj = $(this).val();
		            	select_VA(obj);
		        });
		          
		    }) 
		
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
		
		
		//点击搜索的方法
		function searchs(){
			$("#pageSize").val(10);
  	    	$("#curr").val(1);
  	    	$("#pageIndex").val(1);
  	    	search();
		}
		
	$(function () {
			search();
		});	
		
		function search(){
			//if($("#storeIdVal").val() != ""){
				var load = layer.load(1, {shade: [0.1,'#fff']});
				$.ajax({
					type : "POST",
					url : "<%=basePath%>main/performOrderList.do",
					data : $('#searchForm').serialize(),
					dataType : "json",
					success : function(result) {
						console.log(result);
						$("tbody").empty();
						layer.close(load);
						if(result.success==-2){
							layer.msg('登陆失败！', {
								time : 2000,
								icon : 2
							},function(){
								 window.location.href="<%=basePath%>main/sign_in.do";
		                    });
						}else if(result.success==-1){
							layer.msg('暂无数据！', {
								time : 2000,
								icon : 3
							});
							var trs = '<tr>'
							+'<td colspan="7" style="text-align:center;">'
							+'<tr>'
							+'no data!'
							+' </td></tr>'
							$("tbody").append(trs);
						}else if(result.success==1){
							//有数据有分页
							//再添加
						 	 $.each(result.work_orderList, function(i, li) {
						 		if(li.status==1||li.status==2){
						 			 var trs1 = '<tr>'
											+'<td style="width: 15%;" >'+ li.va_no +'</td>'
											+'<td style="width: 15%;"   id="'+li.orderid+'">'+ li.kb_no +'('+li.type+')</td>'
											+ '<td style="width: 10%;">'+date(li.create_time)+'</td>'
											+ '<td style="cursor:pointer;width: 15%;">'+date(li.deadline) +'</td>'
											+ '<td style="width: 10%;">'+ li.operator +'</td>'
											+ '<td style="width: 15%;">'+li.order_placer+'</td>'
											+ '<td style="width: 10%;" >'
											+ 'planned'
											+ '</td>'
											+ '<td style="width: 10%;padding-left: 30px;cursor:pointer;" >'
											+ '<i class="layui-icon layui-icon-tabs" style="font-size: 24px; color: #1E9FFF;" onclick="deails(\''+ li.kb_no +'\',\''+li.type+'\')"></i>'
											
											+ '</td>'
											+ '</tr>'
										$("tbody").append(trs1);
						 		}else{
						 			 var trs1 = '<tr>'
											+'<td style="width: 15%;cursor:pointer;" onclick="deails(\''+ li.kb_no +'\',\''+li.type+'\')">'+ li.va_no +'</td>'
											+'<td style="width: 15%;"  id="'+li.orderid+'">'+ li.kb_no +'('+li.type+')</td>'
											+ '<td style="width: 10%;">'+date(li.create_time)+'</td>'
											+ '<td style="width: 10%;">'+date(li.deadline) +'</td>'
											+ '<td style="width: 15%;">'+ li.preferred_operator +'</td>'
											+ '<td style="width: 15%;">'+li.order_placer+'</td>'
											+ '<td style="width: 10%;" >'
											+ 'completed'
											+ '</td>'
											+ '<td style="width: 10%;padding-left: 30px;" >'
											+ '<i class="layui-icon layui-icon-reply-fill" style="cursor:pointer;font-size: 24px; color: #1E9FFF;" onclick="deails(\''+ li.kb_no +'\',\''+li.type+'\')"></i>'
											+'<span class="layui-badge-dot"></span>'
											+ '</td>'
											+ '</tr>'
										$("tbody").append(trs1);
						 		}
							}); 
						 	//分页 
							//完整功能
							
							
							layui.use(['laypage', 'layer'], function(){
							  var laypage = layui.laypage
							  ,layer = layui.layer;
							  //完整功能
							  laypage.render({
							    elem: 'demo2'
							    ,count: result.count,
							    limit:  $("#pageSize").val(),
							    curr:$('#curr').val()
							    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
							    ,jump: function(obj,first){
							    	    if(!first){
							    	    	console.log("========"+obj.limit);
								    	    $("#pageSize").val(obj.limit);
							    	    	$("#curr").val(obj.curr);
							    	    	$("#pageIndex").val(obj.curr);
							    	    	search();
							    	    } 
							    	      
							    	}
							  });
							 }); 
						}
						//先清空
						//按钮提示信息渲染
					/* 	$("[data-toggle='tooltip']").tooltip(); */
					}
				});
			//}
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
		
		/* 修改订单跳转*/
		function updatedeails(usernameId,type) {
			$('#usernameId').val('');
			$('#typeId').val('');
			$('#usernameId').val(usernameId);
			$('#typeId').val(type);
			$('#jump').attr("action", "<%=basePath%>main/updateDeails.do");
			$('#jump').submit(); 
			
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