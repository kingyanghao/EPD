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
<title>月点检详情</title>
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
html, body {width:100%;height:100%;}
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

window.location='main/sign_in.do' ;                            // 跳转到登录界面
</script> 
<%
}
%>
	<!-- 内容区 -->
	<div id="main">
								<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Monthly Maintenance</div></div>
			<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				
				<!-- 页面主体头部 -->
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" style="min-height: 550px;">
						<form class="form-horizontal" id="formId">
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:5%;">
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
							<div class="col-md-8 col-lg-8 col-xl-8 col-sm-8" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">名称:</div>
								     <input  type="hidden" style="width:50%;margin-left:5%;display: inline-block;" class="form-control" id="month_id" name="month_id" value="${month_check.month_id}">
                                            <select disabled="true"  id="bench_name" name="bench_name"   style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               <option  ${month_check.bench_name=='CI4000 F1'?'selected':''} value='CI4000 F1'>CI4000 F1</option>
                                               <option  ${month_check.bench_name=='CI4000 F2'?'selected':''} value='CI4000 F2'>CI4000 F2</option>
                                               <option  ${month_check.bench_name=='CI4000 F3'?'selected':''} value='CI4000 F3'> CI4000 F3</option>
                                               <option  ${month_check.bench_name=='CI4000 F4'?'selected':''} value='CI4000 F4'>CI4000 F4</option>
                                               <option  ${month_check.bench_name=='CI4000-RAK F7'?'selected':''} value='CI4000-RAK F7'>CI4000-RAK F7</option>
                                               <option  ${month_check.bench_name=='ESS F6'?'selected':''} value='ESS F6'> ESS F6</option>
                                               <option  ${month_check.bench_name=='ESS F8(NEW)'?'selected':''} value='ESS F8(NEW)'> ESS F8(NEW)</option>
                                               <option  ${month_check.bench_name=='Large engine F9'?'selected':''} value='Large engine F9'>Large engine F9</option>
                                               <option  ${month_check.bench_name=='Nozzle flow rate'?'selected':''} value='Nozzle flow rate'>Nozzle flow rate</option>
                                               <option  ${month_check.bench_name=='Nozzle Pdoe'?'selected':''} value='Nozzle Pdoe'>Nozzle Pdoe</option>
                                               <option  ${month_check.bench_name=='HSM'?'selected':''} value='HSM'>HSM</option>
	                                 		</select>  
	                                
								  </div>
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">点检实施者:</div>
								       <input disabled="true" type="text"style="width:50%;margin-left:5%;display: inline-block;" class="form-control" id="username" name="username" value="${month_check.username}">
								  </div>
								   <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">检查日期:</div>
								 		<input disabled="true" type="text" class="form-control layui-input" style="width:50%;margin-left:5%;display: inline-block;" id="test1" name="check_time" placeholder="yyyy-MM" value="${month_check.check_time}"/>
								  </div>
							</div>
						
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						</div>
						<!-- 1 -->
						<c:if test="${ month_check.bench_name=='CI4000 F1'||month_check.bench_name=='CI4000 F4'||month_check.bench_name=='ESS F6'||month_check.bench_name=='ESS F8(NEW)'}">
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:10px;" id="f1">
						<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
							<div class="col-md-8 col-lg-8 col-xl-8 col-sm-8" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">废油箱排空:</div>
								     <select  id="m_01" name="m_01" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               	<option ${month_check.m_01==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_01==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_01==3?'selected':''} value='3'>p</option>
                                            
	                                 </select>  
								  </div>
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">回油滤芯更换:</div>
								     <select  id="m_02" name="m_02" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               	<option ${month_check.m_02==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_02==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_02==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								  </div>
								  
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">回油连接头密封圈检查（破损更换）:</div>
								     <select  id="m_03" name="m_03" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                              	<option ${month_check.m_03==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_03==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_03==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								  </div>
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">EMI内腔清洗:</div>
								     <select  id="m_04" name="m_04" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                              	<option ${month_check.m_04==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_04==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_04==3?'selected':''} value='3'>p</option>
                                              
	                                 </select>  
								  </div>
								  
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">EMI密封垫片检查（破损更换）:</div>
								     <select  id="m_05" name="m_05" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                              	<option ${month_check.m_05==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_05==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_05==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								  </div>
							</div>
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						</div>
						</c:if>
						<c:if test="${ month_check.bench_name=='CI4000 F2'||month_check.bench_name=='CI4000 F3'}">
						<!-- 8 -->
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:10px;" id="f2">
						<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
							<div class="col-md-8 col-lg-8 col-xl-8 col-sm-8" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">废油箱排空:</div>
								     <select  id="m_01" name="m_01" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                            	<option ${month_check.m_01==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_01==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_01==3?'selected':''} value='3'>p</option>
                                             
	                                 </select>  
								  </div>
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">回油滤芯更换:</div>
								     <select  id="m_02" name="m_02" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               	<option ${month_check.m_02==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_02==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_02==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								  </div>
								  
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">回油连接头密封圈检查（破损更换）:</div>
								     <select  id="m_03" name="m_03" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                             	<option ${month_check.m_03==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_03==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_03==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								  </div>
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">HDA内腔清洗洗:</div>
								     <select  id="m_04" name="m_04" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               	<option ${month_check.m_04==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_04==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_04==3?'selected':''} value='3'>p</option>
                                              
	                                 </select>  
								  </div>
								  
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">HDA排空阀清洗:</div>
								     <select  id="m_05" name="m_05" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                              	<option ${month_check.m_01==5?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_01==5?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_01==5?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								  </div>
							</div>
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						</div>
						</c:if>
						<c:if test="${month_check.bench_name=='CI4000-RAK F7'||month_check.bench_name=='Large engine F9'||month_check.bench_name=='Nozzle flow rate'||month_check.bench_name=='Nozzle flow rate'}">
						<!-- 8 -->
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:10px;" id="f3">
						<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
							<div class="col-md-8 col-lg-8 col-xl-8 col-sm-8" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">废油箱排空:</div>
								     <select  id="m_01" name="m_01" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               	<option ${month_check.m_01==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_01==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_01==3?'selected':''} value='3'>p</option>
                                             
	                                 </select>  
								  </div>
								  <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">夹具密封圈检查（破损更换）:</div>
								     <select  id="m_02" name="m_02" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               	<option ${month_check.m_02==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_02==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_02==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								  </div>
							</div>
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						</div>
						</c:if>
						
							<c:if test="${month_check.bench_name=='HSM'}">
						<!-- 8 -->
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:10px;" id="f3">
						<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
							<div class="col-md-8 col-lg-8 col-xl-8 col-sm-8" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group" style="margin-bottom:0px;">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">气管接头与夹具连接处接头密封圈检查（破损更换）:</div>
								     <select  id="m_01" name="m_01" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               	<option ${month_check.m_01==1?'selected':''} value='1'>√</option>
                                               <option ${month_check.m_01==2?'selected':''} value='2'>∈</option>
                                               <option ${month_check.m_01==3?'selected':''} value='3'>p</option>
                                             
	                                 </select>  
								  </div>
								  
							</div>
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						</div>
						</c:if>
						
						<div class="row">
						<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5 "  style="margin-top:10px;">
									<div style="padding-left:20%;padding-top:10px;">
								    	<div>点检：<span style="margin-left:5%;">OK:√ 异常：∈ 停机:p </span></div>
								    	
								    </div>
						</div>
						</div>
						
						<div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 "  style="text-align:center;margin-top:40px;margin-bottom:40px;">
                            <button type="button" class="btn btn-primary btn-lg" style=" padding: 11px 122px;" onclick="save();" id="confirm">confirm</button>
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
	<script type="text/javascript"  src="js/bootstrap-datetimepicker.min.js"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
	$(document).ready(function(){ 
		two_first();
	});

	/* 保存 */
	function save(){
		    
		
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
				   	url:'<%=basePath%>main/updateMonthly.do',
					type: "POST",
					dataType:'text',
					data: $('#formId').serialize(),
					success: function(data){
						console.log(data+"=======1121");
						 if(data=="success"){
							 console.log("kaishi========");
							 layer.close(load);	
							 layer.msg('操作成功！', {
										time : 1000,
										icon : 1
									},function(){
										window.location='<%=basePath%>main/monthCheckList.do'; 
									});
						 }else if(data=="error"){
							 layer.close(load);
								layer.msg('当日以进行点检！', { time : 2000,icon : 2 });
					 }else if(data=="fail"){
								 layer.close(load);
									layer.msg('操作失败，请检查输入！', { time : 2000,icon : 2 });
						 }else if(data=="other"){
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
	
		
		
		
	</script>
</html>