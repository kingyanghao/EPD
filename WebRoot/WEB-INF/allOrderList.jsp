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
			<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Search</div></div>
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
										<select id="va_no" name="va_no"
											style="width: 150px; margin-left: 1%; display: inline-block;"
											class="form-control">
											<option value='-1'>请选择VA No</option>
											<c:if test="${fn:length(vaList)!=0}">
												<c:forEach items="${vaList}" var="item1" >
												<option value='${item1.va_no}'>${item1.va_no}</option>
										     	</c:forEach>
											</c:if>
										</select> 
										
											<select id="bench_name" name="bench_name"
											style=" display: inline-block;"
											class="form-control selectpicker">
											<option value='-1'>请选择台架</option>
											<option value='CI4000 F1'>CI4000 F1</option>
											<option value='CI4000 F2'>CI4000 F2</option>
											<option value='CI4000 F3'> CI4000 F3</option>
											<option value='CI4000 F4'>CI4000 F4</option>
											<option value='CI4000-RAK F7'>CI4000-RAK F7</option>
											<option value='ESS F6'> ESS F6</option>
											<option value='ESS F8 (NEW)'> ESS F8 (NEW)</option>
											<option value='Large engine F9'>Large engine F9</option>
											<option value='Nozzle flow rate'>Nozzle flow rate</option>
											<option value='Nozzle Pdoe'>Nozzle Pdoe</option>
											<option value='Pako'>Pako</option>
											<option value='Marh'>Marh</option>
											<option value='Zwick'>Zwick</option>
											<option value='HSM'>HSM</option>
											<option value='Other'>Other</option>
										</select>
										<select id="type" name="type"
											style="display: inline-block;"
											class="form-control" >
											<option value='-1'>请选择</option>
											<option value='Injector'>Injector</option>
											<option value='Rail'>Rail</option>
											<option value='Nozzle'>Nozzle</option>
											<option value='Other'>Other</option>
										</select>
											<select class="selectpicker form-control"  data-live-search="true" id="part_type" name="part_type" >
											    <option value='-1'>请选择种类</option>
												<option value='CRI1.3'>CRI1.3</option>
												<option value='CRI1.4'>CRI1.4</option>
												<option value='CRI1-16'>CRI1-16</option>
												<option value='CRI1-18'>CRI1-18</option>    
												<option value='CRI1-20'>CRI1-20</option>                   
												<option value='CRI14 S3'>CRI14 S3</option>                   
												<option value='CRI2.2'>CRI2.2</option>                   
												<option value='CRI2-14'>CRI2-14</option>                   
												<option value='CRI2-16'>CRI2-16</option>                   
												<option value='CRI2-18'>CRI2-18</option>                   
												<option value='CRI2-20'>CRI2-20</option>                   
												<option value='CRIN1.6'>CRIN1.6</option>                   
												<option value='CRIN1-14'>CRIN1-14</option>                   
												<option value='CRIN14 S3'>CRIN14 S3</option>                   
												<option value='CRIN2-16'>CRIN2-16</option>                   
												<option value='CRIN2-16 BL'>CRIN2-16 BL</option>                   
												<option value='CRIN3-18'>CRIN3-18</option>                   
												<option value='CRIN3-18 BL'>CRIN3-18 BL</option>                   
												<option value='CRIN3-20'>CRIN3-20</option>                   
												<option value='CRIN3-22'>CRIN3-22</option>                   
												<option value='CRIN3-25'>CRIN3-25</option>                   
												<option value='CRIN25L'>CRIN25L</option>                   
												<option value='CRIN25C'>CRIN25C</option>     
												<option value='CRI1-20OWH'>CRI1-20OWH</option>                
												<option value='HFR-16'>HFR-16</option>                   
												<option value='HFR-18'>HFR-18</option>                   
												<option value='HFRN-16'>HFRN-16</option>                   
												<option value='HFRN-18'>HFRN-18</option>                   
												<option value='HFRN-20'>HFRN-20</option>                   
												<option value='HFRN-22'>HFRN-22</option>                   
												<option value='LWR-16'>LWR-16</option>                   
												<option value='LWRN-18'>LWRN-18</option>                   
												<option value='Nozzle'>Nozzle</option>                   
												<option value='Nozzle: CRI1.3'>Nozzle: CRI1.3</option>                   
												<option value='Nozzle: CRI1.4'>Nozzle: CRI1.4</option>                   
												<option value='Nozzle: CRI1-16'>Nozzle: CRI1-16</option>                   
												<option value='Nozzle: CRI1-18'>Nozzle: CRI1-18</option>                   
												<option value='Nozzle: CRI14 S3'>Nozzle: CRI14 S3</option>                   
												<option value='Nozzle: CRI2-14'>Nozzle: CRI2-14</option>                   
												<option value='Nozzle: CRI2-16'>Nozzle: CRI2-16</option>                   
												<option value='Nozzle: CRI2-18'>Nozzle: CRI2-18</option>                   
												<option value='Nozzle: CRIN1.6'>Nozzle: CRIN1.6</option>                   
												<option value='Nozzle: CRIN1-14'>Nozzle: CRIN1-14</option>                   
												<option value='Nozzle: CRIN14 S3'>Nozzle: CRIN14 S3</option>                   
												<option value='Nozzle: CRIN2-16'>Nozzle: CRIN2-16</option>                   
												<option value='Nozzle: CRIN2-16 BL'>Nozzle: CRIN2-16 BL</option>                   
												<option value='Nozzle: CRIN3-18'>Nozzle: CRIN3-18</option>                   
												<option value='Nozzle: CRIN3-18 BL'>Nozzle: CRIN3-18 BL</option>                   
												<option value='Others'>Others</option>                   
											                  
											</select>
										<select id="status" name="status"
											style=" display: inline-block;"
											class="form-control" >
											<option value='-1'>请选择状态</option>
											<option value='0'>Created</option>
											<option value='1'>In operation</option>
											<option value='2'>Planned</option>
											<option value='3'>Completed</option>
										</select>
									
									<div class="input-group-btn form-group" >
										<input class="form-control" name="kb_no" id="kb_no"
										type="text" value="" placeholder="请输入搜索内容" > 
										<button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default" id="aa">
											search
										</button>
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
					<script type="text/html" id="barDemo">

				{{# if(d.login_role_all==1){ }}
  				<a  lay-event="edit" data-d="编辑" onmouseover="show_shopm(this)"><span style="color:#1296db;font-size:22px" class="iconfont iconicon-test6" ></span></a>
				{{#  } else { }}
					<a data-d="编辑" onmouseover="show_shopm(this)"><span style="color:#eeeeee;font-size:22px" class="iconfont iconicon-test6"></span></a>
  				{{#  } }}
 				<a  lay-event="detail" data-d="详情" onmouseover="show_shopm(this)"><span style="color:#faba32;font-size:22px" class="iconfont iconicon-test5"></span></a>
				<a 	lay-event="report" data-d="打印" onmouseover="show_shopm(this)"><span style="color:#5bbf67;font-size:22px" class="iconfont iconicon-test8"></span></a>
			
				<a 	lay-event="createFile" data-d="复制" onmouseover="show_shopm(this)"><span style="color:#297b89;font-size:22px" class="iconfont iconfuzhi"></span></a>
				<a 	lay-event="createOrder" data-d="创建" onmouseover="show_shopm(this)"><span style="color:#1296db;font-size:25px" class="iconfont icontianjia1"></span></a>

		{{# if(d.login_role_all==1){ }}
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
	  
	  //向世界问个好
	
	 
	  
	  //执行一个 table 实例
	  table.render({
	     elem: '#demo'
	    ,height: 550
	    ,url: '/EPD/main/findAllOrderList.do' //数据接口
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
	       {field: 'va_no', title: 'VA No', width:130,sort: true,fixed: 'left',align:'center'}
	      ,{field: 'kb_no', title: 'KB No', width: 130, sort: true,fixed: 'left', align:'center'}
	      ,{field: 'type', title: 'Type', width:120,sort: true, align:'center'} 
	      ,{field: 'customer_project', title: 'Customer Project', width: 150, sort: true, align:'center'}
	      ,{field: 'remark', title: 'Remark', width: 100, sort: true, align:'left',event: 'setSign'}
	      ,{field: 'bench_name', title: 'Bench Name', width:120,sort: true,align:'center'}
	      ,{field: 'bm_no', title: 'BM No', width:120, sort: true, align:'center'}
	      ,{field: 'part_no', title: 'Part No', width: 120,sort: true, align:'center'}
	      ,{field: 'part_type', title: 'Part Type', width: 100,sort: true, align:'center'}
	      ,{field: 'work_hours', title: 'Work Hours', width: 150, sort: true, align:'center'}
	      ,{field: 'work_center', title: 'Work Center', width: 150, sort: true, align:'center'}
	      ,{field: 'part_quantity', title: 'Part Quantity', width: 150, sort: true, align:'center'}
	      ,{field: 'create_time', title: 'Order time', width: 150, sort: true, align:'center'}
	      ,{field: 'deadline1', title: 'Deadline', width: 150, sort: true, align:'center'}
	      ,{field: 'issue_date1', title: 'Issue Date', width: 150, sort: true, align:'center'}
	      ,{field: 'operator', title: 'Operator', width: 150, sort: true, align:'center'}
	      ,{field: 'preferred_operator', title: 'Preferred Operator', width: 150, sort: true, align:'center'}
	      ,{field: 'order_placer', title: 'Creator', width: 150, sort: true, align:'center'}
	      ,{field: 'sap_no', title: 'SAP No', width: 130, sort: true, align:'center'}
	      ,{field: 'status_e', title: 'Status', width: 150, sort: true, align:'center'}
	      ,{fixed: 'right',title: 'Operation',  width: 190, align:'center', toolbar: '#barDemo', align:'center'}
	      
	    ]]
	  });
	//搜索
		$('#aa').on('click', function(){
	      var order_placer = $.trim($("#order_placer").val());
	      var va_no = $.trim($("#va_no").val());
	      var part_type = $.trim($("#part_type").val());
	      var bench_name = $.trim($("#bench_name").val());
	      var kb_no = $.trim($("#kb_no").val());
	      var type = $.trim($("#type").val());
	      var status = $.trim($("#status").val());
			      //  var userNickName = $.trim($('#userNickName').val());
			       // var phone = $('#phone').val();
			        table.reload('contenttable', {
			        	method:'post',
			            where: {
			            	order_placer: order_placer,
			            	va_no:va_no,
			            	kb_no:kb_no,
			            	part_type:part_type,
			            	bench_name:bench_name,
			            	type:type,
			            	status:status
			            	
			            }
			        });
		    });
	
		  //监听行工具事件
		  table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
		    var data = obj.data //获得当前行数据
		    ,layEvent = obj.event; //获得 lay-event 对应的值
		    if(layEvent === 'detail'){//跳转详情
		    if(data.status==0){//跳转未派单详情
		    	window.location.href="/EPD/main/Deails.do?orderid="+data.orderid+"&type="+data.type;   //未派单详情
		    }else{//跳转已派单详情
		    	window.location.href="/EPD/main/orderDeails.do?kb_no="+data.kb_no+"&type="+data.type;   //未派单详情
		    }
		    
		    }  else if(layEvent === 'edit'){
		  	  window.location.href="/EPD/main/updateDeails.do?orderid="+data.orderid+"&type="+data.type;     //在跳转编辑
		    }
		    else if(layEvent === 'report'){
		    	window.location.href="/EPD/main/orderDeails.do?kb_no="+data.kb_no+"&type="+data.type;   //未派单详情
		      } else if(layEvent === 'del'){
	
		  		delete_Order(data.orderid,data.kb_no);
		      }else if(layEvent === 'createFile'){//创建文件夹
		    	  createFile(data.va_no,data.kb_no);
		      }else if(layEvent === 'createOrder'){
		    	  window.location.href="/EPD/main/createVaOrder.do?va_no="+data.va_no+"&type="+data.type;   //跳转到已经下过订单的va号下
		      }
		    if(obj.event === 'setSign'){
		    	//边缘弹出
		    	layer.open({
		    		  title: data.va_no,
		    	  type: 1
		    	  ,offset: 'auto' //具体配置参考：offset参数项
		    	  ,content: '<div style="padding: 20px 80px;">'+data.remark+'</div>'
		    	  ,btn: '关闭'
		    	  ,btnAlign: 'c' //按钮居中
		    	  ,shade: 0 //不显示遮罩
		    	  ,yes: function(){
		    	    layer.closeAll();
		    	  }
		    	});

		      }
		  });
	});
	
	//创建文件夹
	 //删除订单
	  function createFile(va_no,kb_no){
		
		  var index = layer.load(0, {shade: false}); 
				 
				$.ajax({
					type: "POST",
					url: '<%=basePath%>main/createFile.do',
			  	data: {
			  		va_no:va_no,
			  		kb_no:kb_no
			  	},
					dataType:'json',
					cache: false,
					success: function(data){
						console.log(data);
						layer.close(index);
						if(data.succ==1){
							
							layer.msg('创建成功！', {
								time : 2000,
								icon : 1
							});
							showtext(data.url);
					//	alert("文件夹地址："+data.url);
						/* 	window.open('file://'+C+':\\'); */
						}else if(data.succ==-1){
							showtext(data.url);
						}else if(data.succ==-2){
							showtext(data.url);
						}else if(data.succ==-3){
							layer.msg('订单异常，请刷新页面！', {
								time : 2000,
								icon : 2
							},function(){
								window.location.reload();
		                    });
							
						}
					},
					error: function(data){
						layer.close(index);
					}
				});
					   }
	
	  function showtext(text){
		    var str = '<script>var clipboard1 = new Clipboard(".media_id");clipboard1.on("success", function(e) {layer.msg("复制成功");});clipboard1.on("error", function(e) {layer.msg("复制失败！请手动复制", {icon:2});}); <\/script>'+text;
		    var btn = '<span class="media_id" data-clipboard-text="'+text+'">Copy</span>';
		    layer.alert(str, {title: 'File Path', btn:[btn]});
		}
	 //删除订单
	  function delete_Order(orderid,kb_no){
		 /*  alert($("#orderid").val());
		  alert( $("#kb_no").val()); */
			var flag=true;
			 layer.alert('确认删除？', {
			skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
			}, function(index){  
			 console.log("开始：");
			 if(flag){  
				$.ajax({
					type: "POST",
					url: '<%=basePath%>main/deleteOrder.do',
			  	data: {
			  		orderid:orderid,
			  		kb_no:kb_no
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
						}else if(data.role==-2){
							layer.msg('权限不足！',{time : 2000,icon : 2});	
						}else if(data.role==-3){
							layer.msg('订单异常，请刷新页面！', {
								time : 2000,
								icon : 2
							},function(){
								window.location.reload();
		                    });
							
						}
					},
					error: function(data){
						layer.close(load);
						layer.msg('查询失败！',{time : 2000,icon : 2});	
					}
				});
					   }
			});
	  }
	

  
	
	
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