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
<title>调休</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="layui/css/layui.css" rel="stylesheet" media="all"/>
 <link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
 <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
 <script src="/EPD/js/jquery-1.11.2.min.js"></script>
  <link rel="stylesheet" href="/EPD/css/f/iconfont.css">
<style type="text/css">
html, body {width:100%;height:100%;}
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
					<div class="right-content" style="min-height: 750px;">
						<form class="form-horizontal" id="formId">
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:30px;">
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
							<div class="col-md-8 col-lg-8 col-xl-8 col-sm-8" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group">
								    <div style="height:38px;width:10%;display: inline-block;color:#919aa7;">姓名:</div>
									  
									    
									     <select id="nameId" name="bench_name" style="width:40%;margin-left:2%;display: inline-block;" class="form-control" readonly="">
	                                            
	                                             	 <option  value="${paid_leave_statistics.psid_leave_name}">${paid_leave_statistics.psid_leave_name}</option>
	                                             
		                                 </select>  
		
								  </div>
							</div>
							
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						</div>
						<!-- 1 -->
							<div class="row" style="margin-left:0px;margin-right:0px;">
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
							<div class="col-md-8 col-lg-8 col-xl-8 col-sm-8" style="min-height:30px;border:saolid 1px;" id="timeId">
								<!--动态添加数据  --> 
								 <div class="form-group">
									<div style=" color:#919aa7;display: inline-block;height:38px;width:10%;">调休日期:</div>
									<input style=" display: inline-block;width:40%;margin-left:2%;" readonly="" class="time-input form-control " 
											name="tradeTime" id="" size="12" type="text" value="<fmt:formatDate value="${paid_leave_statistics.start_time}" pattern="yyyy-MM-dd HH:mm" />"/>
					
									
									<input style=" display: inline-block;width:40%;margin-left:2%;" readonly="" class="time-input form-control  " 
											name="tradeTime" id="" size="12" type="text" value="<fmt:formatDate value="${paid_leave_statistics.end_time}" pattern="yyyy-MM-dd HH:mm" />"/>
								</div> 
 								<div class="form-group" style="height: 143px;">
									<textarea id="remark" class="form-control" readonly="" style=" display: inline-block;width:95%;height:143px;"  maxlength="200" value="">${paid_leave_statistics.p_remark}</textarea>
								</div> 
							<!--动态添加数据结束  --> 	
							
									<div style=" color:#919aa7;display: inline-block;height:38px;width:10%;">调休详情:</div>
							<c:if test="${fn:length(paid_leave_statistics.paidLeaveList)>0}">
								<c:forEach items="${paid_leave_statistics.paidLeaveList}"  var="item"  >
								 <div class="form-group">
									<input style=" display: inline-block;width:25%;margin-left:2%;" readonly="" class="time-input form-control " 
											name="tradeTime" id="" size="12" type="text" value="${item.paid_leave_start}"/>
					
									<input style=" display: inline-block;width:25%;margin-left:2%;" readonly="" class="time-input form-control " 
											name="tradeTime" id="" size="12" type="text" value="${item.paid_leave_end}"/>
									<input style=" display: inline-block;width:25%;margin-left:2%;" readonly="" class="time-input form-control  " 
											name="tradeTime" id="" size="12" type="text"  value="${item.paid_leave_time }"/>
								</div> 
								</c:forEach>
							</c:if>
								
							
							
							</div>
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						
						</div>
						
						</form>	
					</div>
			</div>
		</div>
	</div>	
	</div>	
	
</body>

	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript"  src="js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript"  src="js/bootstrap-datetimepicker.zh-CN.js"></script>
	
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
	
	<%--日期-时间选择-js--%>
	
	 
	
	
	$(document).ready(function(){  
		four();
		$(".form_datetime").datetimepicker({
			timePicker: true,
			autoclose: true,   //选择后自动关闭当前时间控件
			 bootcssVer:3, 
			 format: "yyyy-mm-dd hh:ii", //时间格式
			startView : 'month', //起始视图从天开始
			maxView : 'month', //最大视图从天开始
			minuteStep:30 //分钟显示的间隔是1
	
          });
		$(".form_datetime11").datetimepicker({
			timePicker: true,
			autoclose: true,   //选择后自动关闭当前时间控件
			 bootcssVer:3, 
			format: "yyyy-mm-dd hh:ii", //时间格式
			startView : 'month', //起始视图从天开始
			maxView : 'month', //最大视图从天开始
			minuteStep:30 //分钟显示的间隔是1
       });

	});
	
	
	
		/* 保存 */
		function save(){
			    
			if(check()){
				var start=$("#tradeTimeStart").val();
				var end=$("#tradeTimeEnd").val();		
				var nameId=$("#nameId").val();
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
					   	url:'<%=basePath%>main/addPaid_leaveRecord.do',
						type: "POST",
						dataType:'json',
						data: {
							"start":start,
							"end":end,
							"nameId":nameId,
							"remark":$("#remark").val()
						},
						success: function(data){
							console.log(data+"=======1121");
							 if(data.status=="Succ"){
								 console.log("kaishi========");
								 layer.close(load);	
								 layer.msg('操作成功！', {
											time : 1000,
											icon : 1
										},function(){
											window.location='<%=basePath%>main/paid_leaveList.do'; //跳转调休列表
										});
							 }else if(data.status=="Error"){
								 layer.close(load);
									layer.msg('保存失败！', { time : 2000,icon : 2 });
						 }else if(data.status=="NoTime"){
									 layer.close(load);
										layer.msg('当前时间段不需要调休！', { time : 2000,icon : 2 });
							 }else if(data.status=="MinimumPaidLeave"){
								 layer.close(load);
								 layer.msg('最小调休时间为1小时！', { time : 2000,icon : 2 });
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
		 
	

		//客户端校验
		function check() {
			var start=$("#tradeTimeStart").val();
			var end=$("#tradeTimeEnd").val();			
			console.log(start+"============="+end);
			
			
			if ($("#nameId").val().trim() =="-1") {
				$("#nameId").tips({
					side : 2,
					msg : '请选择人员',
					bg : '#AE81FF',
					time : 3
				});
				return false;
			}
			
			if ($("#tradeTimeStart").val().trim() =="") {
				$("#tradeTimeStart").tips({
					side : 2,
					msg : '请选择开始时间',
					bg : '#AE81FF',
					time : 3
				});
				return false;
			}
			if ($("#tradeTimeEnd").val().trim() == "") {
				$("#tradeTimeEnd").tips({
					side : 2,
					msg : '请选择结束时间',
					bg : '#AE81FF',
					time : 3
				});
				return false;
			}
			if (start>end) {
				$("#tradeTimeEnd").tips({
					side : 2,
					msg : '开始时间必须小于结束时间',
					bg : '#AE81FF',
					time : 3
				});
				return false;
			}
           	var hour=start.split(' ');
           	var minus=hour[1].split(":");
           	console.log(minus[0]);
           	if (minus[0]<9) {
				$("#tradeTimeStart").tips({
					side : 2,
					msg : '请选择9:00~17:30时间段',
					bg : '#AE81FF',
					time : 3
				});
				return false;
			}
           	
        	var hour1=end.split(' ');
           	var minus1=hour1[1].split(":");
           	console.log(minus1[0]);
           	if (minus1[0]>17) {
				$("#tradeTimeEnd").tips({
					side : 2,
					msg : '请选择9:00~17:30时间段',
					bg : '#AE81FF',
					time : 3
				});
				return false;
			}
           	
           /* 	var t1 = Date.parse(new Date(start.replace(/-/g, "/")));
           	var t2 = Date.parse(new Date(end.replace(/-/g, "/"))); 
           	var t3=t2-t1;
           	var t4=t3/1000/60/60;
           	var str = t4+"";
           	if(str.indexOf(".")!=-1){
           		$("#tradeTimeEnd").tips({
					side : 2,
					msg : '调休单位最小1小时',
					bg : '#AE81FF',
					time : 3
				});
           		return false;
           		
           	}  */
           
			return true;
		}

		
		
		
	</script>
</html>