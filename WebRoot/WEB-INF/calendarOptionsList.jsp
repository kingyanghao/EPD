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
.jq_tips_box {

    z-index: 12222222222;
}


</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>
<%
String error = (String)request.getAttribute("loginError");         // 获取错误属性
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
					<div class="right-content" style="min-height: 40px">
					<!-- 右侧主体 左上角按钮 -->
						<!-- 右侧主体 左上角按钮 -->
						<div class="pull-right">
						<button class="btn btn-sm layui-btn-normal" style="border-radius:20px;font-size:14px;color:white;"	onclick="addCalendar()"> 添加日历
						</button>
		       			</div>
		
					
					</div>
					<!-- ↑右侧↑ -->
						<div>
							<table class="layui-hide" id="demo" lay-filter="test"></table>
					<script type="text/html" id="barDemo">
					<a lay-event="del"	data-d="del" onmouseover="show_shopm(this)"><span style="cursor: pointer;color:red;font-size:22px;" class="iconfont iconicon-test7"></span></a>
		</script>
						</div>
				</div>
			</div>
		</div>
	</div>	

	<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel" style="z-index: 19891015;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">添加日历</h4>
      </div>
      <div class="modal-body">
      	<form  class="form-inline layui-form">
        <div class="row" style="display:flex;justify-content: center;">
         
			 <div class="form-group">
			 	<label class="layui-form-label">日期:</label>
				<div class="layui-inline" style="   border-radius: 4px;">
					<div class="layui-input-inline" style="width:200px;">
					    <input type="text" class="layui-input" id="test8" placeholder=" - ">
					</div>
				</div>
			</div>
        </div>
        
        <div class="row"  style="display:flex;justify-content: center;margin-top:20px;">
           <div class="form-group">
			    <label class="layui-form-label">状态:</label>
			    <div class="layui-inline" style="  border-radius: 4px;">
			      	<div class="layui-input-inline" style="width:200px;">
			      <select id="changeId">
			        <option value="2" selected="">工作日</option>
			        <option value="1">休息日</option>
			        </select>
			       </div> 
			    </div>
			  </div>
          
        </div>
     </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="addCal();">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</body>
	
<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript"  src="/EPD/js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="/EPD/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript" src="/EPD/js/public.js"></script>
	<script>
	
	
	/*保存日历的信息  */
	
	function addCal(){
		var val= $("#test8").val();
		var status=$('#changeId option:selected') .val();
		 if ($("#test8").val().trim() =='') {
				$("#test8").tips({
					side : 2,
					msg : '请选择日期',
					bg : '#AE81FF',
					time : 3
				});
				return;
			}else{
				//进行数据的保存
				/* $('#saveId').attr("disabled",true);  */
				   var flag=true;
				   layer.alert('确认保存？', {
				  skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
				}, function(){  
				   console.log("开始：");
				   if(flag){
						flag=false;
						var load = layer.load(1, {shade: [0.1,'#fff']});	
						$.ajax({
					   	url:'<%=basePath%>main/addcal.do',
						type: "POST",
						dataType:'json',
						data:{
						"ymd":val,
						 "status":status},
						success: function(data){
							console.log(data+"=======1121");
							console.log(data.succ);
							console.log(data.succ==-1);
							 if(data.succ==1){
								 console.log("kaishi========");
								 layer.close(load);	
								 layer.msg('操作成功！', {
											time : 1000,
											icon : 1
										},function(){
											 $('.modal').modal('hide');
											 window.location.href="<%=basePath%>main/addCalendar.do";
										});
							 }else if(data.succ==-2){
								 layer.close(load);
									layer.msg('日期已存在！', { time : 2000,icon : 2 });
						 }else if(data.succ==-3){
							 layer.close(load);
										layer.msg('操作失败，请检查输入！', { time : 2000,icon : 2 });
							 }else if(data.succ==-4){
								 layer.close(load);
									layer.msg('是休息日，无需设置！', { time : 2000,icon : 2 });
						 }else if(data.succ==-5){
							 layer.close(load);
								layer.msg('工作日，无需设置！', { time : 2000,icon : 2 });
					 }
						 else if(data.succ==-1){
								 console.log("获取数据");
								 layer.close(load);
								 layer.msg('登陆失败！', {
										time : 2000,
										icon : 2
									},function(){
										 window.location.href="<%=basePath%>main/sign_in.do";
				                    });
							 }
								
							 	
							}
				   	
					});
					}
				});	
				
			}
	}
	
	var tts=setTimeout(function(){
		   $('#saveId').attr("disabled",false);
		},3000)
	 
	//添加日历
	function addCalendar(){
		 $('.modal').modal('show');
	}
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  //日期范围
		  laydate.render({
		    elem: '#test8'
		  });
	});
	
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
	    ,url: '/EPD/main/findAllCalendarList.do' //数据接口
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
	       {field: 'coid', title: 'ID', sort: true,fixed: 'left',align:'center'}
	      ,{field: 'calendar_time', title: '日期', sort: true,fixed: 'left', align:'center'}
	      ,{field: 'c_week', title: '星期', xsort: true, align:'center'} 
	      ,{field: 'c_type', title: '状态',sort: true, align:'left',event: 'setSign'}
	      ,{field: 'create_time', title: '创建时间',  sort: true, align:'center'}
	      ,{fixed: 'right',title: 'Operation',  width: 190, align:'center', toolbar: '#barDemo', align:'center'}
	      
	    ]]
	  });
	
		  //监听行工具事件
		  table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
		    var data = obj.data //获得当前行数据
		    ,layEvent = obj.event; //获得 lay-event 对应的值
		    console.log(layEvent);
			 if(layEvent === 'del'){
		  		delete_Order(data.coid);
		      }
		  
		  });
	});
	
	
	 //删除订单
	  function delete_Order(coid){
		
			var flag=true;
			 layer.alert('确认删除？', {
			skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
			}, function(index){  
			 console.log("开始：");
			 if(flag){  
				$.ajax({
					type: "POST",
					url: '<%=basePath%>main/deleteCalendaOrder.do',
			  	data: {
			  		coid:coid
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
							layer.msg('订单异常，请刷新页面！', {
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
	

  
	
	

	layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  //日期范围
			  laydate.render({
			    elem: '#test6'
			    ,range: '~'
			  });
		});
	
	
		
		
		
		
		
	
		
		
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