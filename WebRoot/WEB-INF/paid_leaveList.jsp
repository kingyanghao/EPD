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
<title>调休列表</title>
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
			<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Leave application</div></div>
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
									        <input type="text" class="layui-input" id="test10" placeholder="请选择日期 ">
									      </div>
									    </div>
									 
									<div class="input-group-btn form-group" >
										<button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default" id="aa">
											search
										</button>
									</div>
								</div>
							</div>
						</div>
						
						<!--列表开始  -->
						
							<!-- 右侧主体 左上角按钮 -->
						<div class="pull-right" style="margin-bottom:30px;">
			   				
							 <a href="<%=basePath%>main/addPaid_leave.do"><button class="btn btn-default btn-sm active"  data-toggle='batch-remove' 
							style="border-radius:20px;font-size:14px;width:100px;"	>调休
							</button></a>
		       			</div>
						
						<!-- 解表结束 -->
		
					
					</div>
					<!-- ↑右侧↑ -->
						<div>
							<table class="layui-hide" id="demo" lay-filter="test"></table>
					<script type="text/html" id="barDemo">
					<a  lay-event="detail" data-d="详情" onmouseover="show_shopm(this)"><span style="color:#faba32;font-size:22px" class="iconfont iconicon-test5"></span></a>
				{{# if(d.role==0){ }}
  				<a  lay-event="edit" data-d="编辑" onmouseover="show_shopm(this)"><span style="color:#1296db;font-size:22px" class="iconfont iconicon-test6" ></span></a>
				{{#  } else { }}
					<a data-d="编辑" onmouseover="show_shopm(this)"><span style="color:#eeeeee;font-size:22px" class="iconfont iconicon-test6"></span></a>
  				{{#  } }}
			

				{{# if(d.role==0){ }}
  					<a 	lay-event="del" data-d="删除" onmouseover="show_shopm(this)"><span style="color:red;font-size:22px" class="iconfont iconicon-test7"></span></a>
				{{#  } else { }}
					<a 	data-d="删除" onmouseover="show_shopm(this)"><span style="color:#eeeeee;font-size:22px" class="iconfont iconicon-test7"></span></a>
  				{{#  } }}

			</script>
						</div>
				</div>
			</div>
		</div>
	</div>	

	
</body>
	

	<script type="text/javascript"  src="/EPD/js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="/EPD/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript" src="/EPD/js/public.js"></script>
	<script type="text/javascript" src="/EPD/js/clipboard.min.js"></script>
	<script>
	
	function show_shopm(t){
		console.log("进入");
		var row=$(t).attr('data-d'); //获取显示内容
		//小tips
		layer.tips(row,t,{
			tips:[1,'black'],
			time:1000
		})
	}
	

	

	

	layui.use(['laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'slider'], function(){
	  var laydate = layui.laydate //日期
	  ,laypage = layui.laypage //分页
	  ,layer = layui.layer //弹层
	  ,table = layui.table //表格
	  ,carousel = layui.carousel //轮播
	  ,upload = layui.upload //上传
	  ,element = layui.element //元素操作
	  ,slider = layui.slider //滑块
	  //执行一个 table 实例
	  
	   //日期时间范围
  laydate.render({
    elem: '#test10'
    ,type: 'datetime'
    ,range: "~"
  });
	  
	  table.render({
	     elem: '#demo'
	    ,height: 550
	    ,url: '/EPD/main/findAllPaid_leaveList.do' //数据接口
	    ,title: '调休表'
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
	       {field: 'psid_leave_name', title: '姓名', sort: true,fixed: 'left',align:'center'}
	      ,{field: 'start_time', title: '开始时间',sort: true, align:'center'} 
	      ,{field: 'end_time', title: '结束时间', sort: true, align:'center'}
	      ,{field: 'time_hour', title: '调休时长', sort: true, align:'left',event: 'setSign'}
	      ,{field: 'p_remark', title: '备注', sort: true,align:'center'}
	      ,{fixed: 'right',title: 'Operation',  width: 190, align:'center', toolbar: '#barDemo', align:'center'}
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
			            	psid_leave_name: order_placer,
			            	start_time:start_time,
			            	end_time:end_time
			            	
			            }
			        });
		    });
	
		
			  table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
			    var data = obj.data //获得当前行数据
			    ,layEvent = obj.event; //获得 lay-event 对应的值
			    console.log(layEvent);
				 if(layEvent === 'del'){
			  		delete_Order(data.psid);
			      }else if(layEvent === 'detail'){
			    	  window.location.href="/EPD/main/addPiadLeaveDeails.do?psid="+data.psid;   //未派单详情
			      }else if(layEvent === 'edit'){
			    	  window.location.href="/EPD/main/addupdatePiadLeave.do?psid="+data.psid;   //未派单详情
			      }
			  
			  });
	});
	
	
	
	
		//删除订单
		  function delete_Order(psid){
			
				var flag=true;
				 layer.alert('确认删除？', {
				skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
				}, function(index){  
				 console.log("开始：");
				 if(flag){  
					$.ajax({
						type: "POST",
						url: '<%=basePath%>main/deletePaid_leave.do',
				  	data: {
				  		psid:psid
				  	},
						dataType:'json',
						cache: false,
						success: function(data){
							if(data.succ==1){
								
								layer.msg('删除成功！', {
									time : 2000,
									icon : 1
								},function(){
									window.location.reload();
			                    });
								
								
								
							}else if(data.succ==-1){
								layer.msg('删除失败！',{time : 2000,icon : 2});	
							}else if(data.role==-1){
								layer.msg('权限不足！',{time : 2000,icon : 2});	
							}else if(data.role==-3){
								layer.msg('页面异常，请刷新页面！', {
									time : 2000,
									icon : 2
								},function(){
									window.location.reload();
			                    });
								
							}
						},
						error: function(data){
							
							layer.msg('查询失败！',{time : 2000,icon : 2});	
						}
					});
						   }
				});
		  }
  
	
	
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