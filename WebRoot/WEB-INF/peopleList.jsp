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
<title>Register</title>
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
width: 100%;height: 28px;background-color:#3564ba

}
</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>

	<!-- 内容区 -->
	<div id="main">
			
	<div id="lantiao"></div>
			
			<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				
				<!-- 页面主体头部 -->
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" style="min-height: 750px">
					<!-- 右侧主体 左上角按钮 -->
						<!-- <div class="tab-content" style="margin-top: 15px"> -->
						<div  class="pull-left" >
							<form id="searchForm"  method="post" class="form-inline">
								 <div class="form-group">
									<input id="pageIndex" name="pageIndex" type="hidden"  value="1" /> 
									<input id="pageSize" name="pageSize" type="hidden" value="10" />
									<input id="curr" name="curr" type="hidden" value="1" />
									<div class="input-group-btn form-group" >
										<input class="form-control" name="username" id="username"
										type="text" value="" placeholder="请输入姓名" style="width: 250px;border-radius:40px 0px 0px 40px;"> 
										<button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default"
											onclick="searchs()" >
											search
										</button>
									</div>
								</div>
							</form>
						</div>
						
						
						<!-- 右侧主体 左上角按钮 -->
						<div class="pull-right">
						<button class="btn btn-sm layui-btn-normal" style="border-radius:20px;font-size:14px;color:white;"	onclick="addCalendar()"> 添加日历
							</button>
			   				<button class="btn btn-sm btn-warning"  data-toggle='batch-remove' data-confirm="确认要删除吗?"
							style="border-radius:20px;font-size:14px;"	onclick="deleteAll(this)"> 批量删除
							</button>
		       			</div>
		<table class="table table-striped">
 		<thead>
			<tr>
				<th style="width: 5%;"><input type="checkbox" id="checkAll"></th>
				<th style="width: 15%;">账号</th>
				<th style="width: 15%;">姓名</th>
				<th style="width: 15%;">手机号</th>
				<th style="width: 20%;">邮箱</th>
				<th style="width: 20%;">权限</th>
				<th style="width: 10%;">操作</th>
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
		<input type="text" id="usernameId" name="user_id" value ="" />
	</form>
	
</body>
	
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
	
	//跳转设置日历列表
	function addCalendar(){
		location.href="/EPD/main/addCalendar.do";
	}	
	
		
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
					url : "<%=basePath%>main/personnelList.do",
					data : $('#searchForm').serialize(),
					dataType : "json",
					success : function(result) {
						console.log(result);
						$("tbody").empty();
						layer.close(load);
						if(result.success==-1){
							 layer.msg('权限不足！', {
									time : 2000,
									icon : 2
								});
						}else if(result.success==-2){
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
						 	$.each(result.list, function(i, li) {
								var trs1 = '<tr>'
									+ '<td style="width: 5%;"><input type="checkbox" name="box" lay-skin="primary" class="newsIdDel" id="'+li.user_id+'"/></td>'
									+ '<td style="cursor:pointer;width: 15%;" onclick="deails('+ li.user_id +')" >'+ li.account+'</td>'
									+ '<td style="width: 15%;">'+ li.username +'</td>'
									+ '<td style="width: 15%;">'+ li.mobile_phone +'</td>'
									+ '<td style="width: 20%;">'+ li.email +'</td>'
									+ '<td style="width: 20%;">'+ li.role +'</td>'
									+ '<td style="width: 10%;" >'
									+ '<i class="layui-icon layui-icon-set-fill" style="font-size: 20px; color: #1E9FFF;" onclick="edit('+ li.user_id +')"></i>'
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
							url:"<%=basePath%>main/deleteAll.do",
							type:"POST",
							dataType:"JSON",
							data:{"ids":ids},
							success:function(result){
								if (parseInt(result) == 1) {
									layer.msg('删除成功！', {icon:1,time:1500},function(){
										   $(":checkbox").attr("checked", false);   
										searchs();
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
			$('#jump').attr("action", "<%=basePath%>main/personnel_details.do");
			$('#jump').submit();
			
		}
		function edit(usernameId) {
			$('#usernameId').val(usernameId);
			$('#jump').attr("action", "<%=basePath%>main/personnel_changes.do");
			$('#jump').submit();
		}	
	</script>
</html>