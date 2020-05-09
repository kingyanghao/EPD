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
<title>月点检列表</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="layui/css/layui.css" rel="stylesheet" media="all"/>
 <link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
 <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
 <script src="/EPD/js/jquery-1.11.2.min.js"></script>
<style type="text/css">
#main{
	margin-left:14%
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
</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>

	<!-- 内容区 -->
	<div id="main">
			
	
			
								<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Monthly Maintenance</div></div>
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
										
									<div class="layui-inline" style="border: solid 1px #cccccc;    border-radius: 4px;">
										<div class="layui-input-inline">
										   <input type="text" class="layui-input" id="test3" name="check_time" placeholder="请选择日期">
										</div>
									</div>
						
									<div class="input-group-btn form-group" >
										<input class="form-control" name="bench_name" id="bench_name"
										type="text" value="" placeholder="请输入台架名" style="width: 250px;"> 
										<button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default"
											onclick="searchs()" >
											search
										</button>
									</div>
								</div>
							</form>
						</div>
						
						
						<!-- 右侧主体 左上角按钮 -->
						<div class="pull-right" style="margin-bottom:30px;">
			   				<button class="btn btn-default btn-sm active"  data-toggle='batch-remove' 
							style="border-radius:20px;font-size:14px;width:100px;"	onclick="deleteAll(this)"> 批量删除
							</button>
							<a href="main/monthlyCheck.do"><button class="btn btn-default btn-sm active"  data-toggle='batch-remove' 
							style="border-radius:20px;font-size:14px;width:100px;"	> 点检
							</button></a>
		       			</div>
		<table class="table table-striped">
 		<thead>
			<tr>
				<th style="width: 5%;"></th>
				<th style="width: 15%;"><input type="checkbox" id="checkAll"></th>
				<th style="width: 15%;">台架</th>
				<th style="width: 15%;">点检人</th>
				<th style="width: 20%;">时间</th>
				<th style="width: 25%;">操作</th>
				
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
		<input type="text" id="usernameId" name="month_id" value ="" />
	</form>
		<form action="" method="post" id="jump1" hidden="hidden">
		<input type="text" id="usernameId1" name="month_id" value ="" />
	</form>
</body>
	
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript"  src="js/bootstrap.min.js"></script>
	
	<script>
	$(document).ready(function(){ 
		two_first();
	});
		layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  //年月选择器
			  laydate.render({
			    elem: '#test3'
			    ,type: 'month'
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
					url : "<%=basePath%>main/monthlyList.do",
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
						 	$.each(result.daily_checkList, function(i, li) {
								var trs1 = '<tr>'
									+'<td style="width: 5%;"></td>'
									+ '<td style="width: 15%;"><input type="checkbox" name="box" lay-skin="primary" class="newsIdDel" id="'+li.month_id+'"/></td>'
									+ '<td style="cursor:pointer;width: 15%;">'+ li.bench_name+'</td>'
									+ '<td style="width: 15%;">'+ li.username +'</td>'
									+ '<td style="width: 25%;">'+date(li.check_time)+'</td>'
									+ '<td style="width: 35%;" >'
									/* + '<i class="layui-icon layui-icon-list" style="font-size: 20px; color: #1E9FFF;" onclick="deails('+ li.month_id +')"></i>' */
									+ '<button class="layui-btn layui-btn-sm" onclick="updatedeails('+ li.month_id +')"><i class="layui-icon layui-icon-search"></i></button>'
									+' <button class="layui-btn layui-btn-sm" onclick="deails('+ li.month_id +')"><i class="layui-icon layui-icon-edit"></i></button>'
									+ '</td>'
									+ '</tr>'
								$("tbody").append(trs1);
								//待支付和退款中
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
		
		//批量删除
		function deleteAll(obj){
			$(obj).blur();
			  var str="";
			  var ids="";
			  $(".newsIdDel").each(function(){
			    if(true == $(this).is(':checked')){
			      str+=$(this).attr("id")+",";
			    }
			  });
			  if(str.substr(str.length-1)== ','){
			    ids = str.substr(0,str.length-1);
			  }
			  if(ids == ""){
				  layer.alert('请至少选择一条数据！', {skin: 'layui-layer-molv',closeBtn:0,icon:7 });
				return;
			  }
			layer.alert('确认要彻底删除数据吗?', {
				skin: 'layui-layer-red',btn: ['确认','取消'] ,icon:3,closeBtn:0
				}, function(){
						$.ajax({			
							url:"<%=basePath%>main/deleteAllcheckList.do",
							type:"POST",
							dataType:"JSON",
							data:{"ids":ids},
							success:function(result){
								if (parseInt(result) == 1) {
									layer.msg('删除成功！', {icon:1,time:1500},function(){
										   $(":checkbox").attr("checked", false);   
										searchs();
									});
								}else if(parseInt(result) == -2){
									layer.msg('权限不足！', {icon:3,time:1500});
								}else if(parseInt(result) == -1){
									layer.msg('删除失败！', {icon:2,time:1500});
								}else if(parseInt(result) == -3){
									layer.msg('登录异常！', {icon:2,time:1500},function(){
										window.location.href="main/logout.do";
										});
									
								}
							},
							error:function(xhr, type, errorThrown) {
								layer.alert('数据出错啦！', {skin:'layui-layer-red',closeBtn:0,icon:2});
								}
						});
					}); 
			}
		
		//checkbox全选	
		$(function() {
		   $("#checkAll").click(function() {
		        $('input[name="box"]').prop("checked",this.checked); 
		        var $subBox = $("input[name='box']");
		        
		        $subBox.click(function(){
		            $("#checkAll").prop("checked",$subBox.length == $("input[name='box']:checked").length ? true : false);
		        });
		    });
		});
		
		function deails(usernameId) {
			$('#usernameId').val(usernameId);
			$('#jump').attr("action", "<%=basePath%>main/monthCheckDeails.do");
			$('#jump').submit();
			
		}
		function updatedeails(usernameId) {
			$('#usernameId1').val(usernameId);
			$('#jump1').attr("action", "<%=basePath%>main/updateMonthCheckDeails.do");
			$('#jump1').submit();
			
		}
		
		function date(date1){
			var date = new Date(date1);
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var day = date.getDate();
			if (month < 10) {
			    month = "0" + month;
			}
			if (day < 10) {
			    day = "0" + day;
			}
			var nowDate = year + "-" + month ;
			return nowDate;
		}
	</script>
</html>