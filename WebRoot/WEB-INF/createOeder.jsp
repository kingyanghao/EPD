<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
<title>下单</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!-- CSS Files -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-select.min.css" rel="stylesheet" />
<link href="layui/css/layui.css" rel="stylesheet" media="all" />
<link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />

 <script src="/EPD/js/jquery-1.11.2.min.js"></script>
<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
}

#main {
	margin-left: 14%
}

#zuo {
	background: url("/EPD/img/caidan1.png");
	background-size: 100% 100%
}

.layui-nav {
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

.line {
	height: 5px(或者你觉得合适的高度);
	width: 1px;
	background: #000;
}

@media ( min-width :700px) {
	.container {
		width: auto;
		font-size: 60%;
	}
}

@media ( min-width :900px) {
	.container {
		width: auto;
		font-size: 60%;
	}
}

@media ( min-width :992px) {
	.container {
		width: auto;
		font-size: 60%;
	}
}

@media ( min-width :1200px) {
	.container {
		width: auto;
		font-size: 70%;
	}
}

@media ( min-width :1400px) {
	.container {
		width: auto;
		font-size: 100%;
	}
}

.btn:focus, .btn:active:focus, .btn.active:focus, .btn.focus, .btn:active.focus,
	.btn.active.focus {
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

window.location='main/sign_in.do' ;                            // 跳转到登录界面
</script> 
<%
}
%>	
<%
String errorInfo = (String)request.getAttribute("role");         // 获取错误属性
if(errorInfo != null) {
%>
<script type="text/javascript" language="javascript">
alert("权限不足");                                            // 弹出错误信息

window.location='main/getTaskPool.do' ;                            // 跳转到登录界面
</script> 
<%
}
%>

	<!-- 内容区 -->
	<div id="main">
				<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Creat Order</div></div>
		<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				
				<!-- 页面主体头部 -->
				<div class="panel-body">
					
					
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content"
						style="min-height: 750px; border: solid white;" >
						<div class="pull-right" >
							<button class="btn btn-default btn-sm active"
								data-toggle='batch-remove'
								style="border-radius: 5px; font-size: 14px; width: 130px;"
								onclick="insert_VA();" id="va">生成VA NO.</button>
							<button class="btn btn-default btn-sm active"
								data-toggle='batch-remove'
								style="border-radius: 5px; font-size: 14px; width: 130px;" onclick="insert_KB();" id="kb">
								生成KB NO.</button>
						</div>


						<form class="form-horizontal " id="formId">
	
							<div class="row"
								style="margin-left: 0px; margin-right: 0px; margin-top: 60px;">
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
								<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5"
									style="min-height: 30px;">
									
											<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">VA
											No:</div>
										<select id="va_no" name="va_no"
											style="width: 50%; margin-left: 5%; display: inline-block;"
											class="form-control"  onchange="selectVA_NO(this.value)">
											<option value='-1'>请选择VA No</option>
											<c:if test="${fn:length(va_recordList)!=0}">
											<c:forEach items="${va_recordList}" var="item" >
												<option value='${item.va_no}'>${item.va_no}</option>
										     	</c:forEach>
											</c:if>
											
										</select> 
										<select id="name" name="name"
											style="width: 20%; display: inline-block;"
											class="form-control">
											<option value='-1'>请选择人员</option>
											<c:if test="${fn:length(noOperatorList)!=0}">
											<c:forEach items="${noOperatorList}" var="item" >
												<option value='${item.username}'>${item.username}</option>
										     	</c:forEach>
											</c:if>
										</select>
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">KB
											No:</div>
										<select id="kb_no" name="kb_no"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control">
											<option value='-1'>请选择KB No</option>
										
						
										</select>
									</div>
									
									
									
									<div class="form-group" style="margin-bottom: 0px;">
										<div style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">Select:</div>
										<select id="type" name="type"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control"  >
											<option value='-1'>请选择种类</option>
											<option value='Injector'>Injector</option>
											<option value='Rail'>Rail</option>
											<option value='Nozzle'>Nozzle</option>
											<option value='Other'>Other</option>
										</select>

									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">Part No:</div>
										<input id="part_no" name="part_no"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control" />

									</div>
							

									<div class="form-group" style="margin-bottom: 0px;" id="bm">
										<div
											style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">BM
											No:</div>
										<input id="bm_no" name="bm_no"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control" />
									</div>
					
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">Work
											Center:</div>
										<!-- <input id="work_center" name="work_center"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control" /> -->
											
											<input list="browsers"  id="work_center"  name="work_center"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control">
 
												<datalist id="browsers" >
 													  <option data-id="260C0110" value="EPD2 CRIN PM/260C0110"></option>
												        <option data-id="260C0120" value="EPD5 Rail/ 260C0120"></option>
												        <option data-id="260C0150" value="EPD3 CRIN Platform/ 260C0150"></option>
												        <option data-id="260C0160" value="EPD1 CRI Platform/ 260C0160"></option>
												        <option data-id="260C0210" value="EPD2 CRI PM/ 260C0210"></option>
												        <option data-id="260C0220" value="EPD2 CRI Investigation/ 260C0220"></option>
												        <option data-id="260C0230" value="EPD1 CRI Design/ 260C0230"></option>
												        <option data-id="260C0240" value="EPD2 CRIN Investigation/ 260C0240"></option>
												        <option data-id="260C0250" value="EPD3 CRIN Design/ 260C0250"></option>
												        <option data-id="260C0310" value="EPD3 CRIN Plant support/ 260C0310"></option>
												        <option data-id="260C0510" value="EPD4 CR-Nozzle/ 260C0510"></option>
												        <option data-id="260C0520" value="EPD4 NHA/Nozzle/ 260C0520"></option>
												        <option data-id="260C0540" value="EPD4 Investigation/ 260C0540"></option>
												        <option data-id="EPD CVEV" value="EPD CVEV"></option>
												        <option data-id="EPD Fuel cell" value="EPD Fuel cell"></option>
												</datalist>
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">Customer/Project:</div>
										<input id="customer_project" name="customer_project"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control" />
									</div>


								</div>
								<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5"
									style="min-height: 30px; border: saolid 1px;">

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">Test
											bench:</div>
										<select id="bench_name" name="bench_name"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control">
											<option value='-1'>请选择台架</option>
											<option value='CI4000 F1'>CI4000 F1</option>
											<option value='CI4000 F2'>CI4000 F2</option>
											<option value='CI4000 F3'> CI4000 F3</option>
											<option value='CI4000 F4'>CI4000 F4</option>
											<option value='CI4000-RAK F7'>CI4000-RAK F7</option>
											<option value='ESS F6'> ESS F6</option>
											<option value='ESS F8(NEW)'> ESS F8(NEW)</option>
											<option value='HSM'>HSM</option>
											<option value='Large engine F9'>Large engine F9</option>
											<option value='Nozzle flow rate'>Nozzle flow rate</option>
											<option value='Nozzle Pdoe'>Nozzle Pdoe</option>
											<option value='Pako'>Pako</option>
											<option value='Marh'>Marh</option>
											<option value='Zwick'>Zwick</option>
											<option value='Other'>Other</option>
										</select>
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">Part Type:</div>
										<div class="" style="width: 70%; margin-left: 5%; display: inline-block;">
										
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
												<option value='CRIN3-20BL'>CRIN3-20BL</option>                   
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
										
										</div>	
									</div>
									
							<div class="form-group" style="margin-bottom: 0px;" id="">
										<div
											style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">Issue
											date:</div>
										<input id="issue_date" name="issue_date" readonly
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control" />
									</div>

									<div class="form-group" style="margin-bottom: 0px;" id="dead">
										<div
											style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">Deadline:</div>
										<input id="deadline" name="deadline" readonly
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control" />
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; white-space: nowrap;text-align: left; width: 20%; display: inline-block; color: #606265;">Plan
											work hours:</div>
										<!-- <input id="work_hours" name="work_hours"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control"  onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')" /> -->
									
											<select id="work_hours" name="work_hours"
												style="width: 70%; margin-left: 5%; display: inline-block;"
												class="form-control">
												<option  value="0.5">0.5h</option>
												<option  value="1.0">1.0h</option>
												<option  value="1.5">1.5h</option>
												<option  value="2.0">2.0h</option>
												<option  value="2.5">2.5h</option>
												<option  value="3.0">3.0h</option>
												<option  value="3.5">3.5h</option>
												<option  value="4.0">4.0h</option>
												<option  value="4.5">4.5h</option>
												<option  value="5.0">5.0h</option>
												<option  value="5.5">5.5h</option>
												<option  value="6.0">6.0h</option>
												<option  value="6.5">6.5h</option>
												<option  value="7.0">7.0h</option>
												<option  value="7.5">7.5h</option>
												<option  value="8.0">8.0h</option>
												<option  value="8.5">8.5h</option>
												<option  value="9.0">9.0h</option>
												<option  value="9.5">9.5h</option>
												<option  value="10.0">10.0h</option>
												<option  value="10.5">10.5h</option>
												<option  value="11.0">11.0h</option>
												<option  value="11.5">11.5h</option>
												<option  value="12.0">12.0h</option>
												<option  value="12.5">12.5h</option>
												<option  value="13.0">13.0h</option>
												<option  value="13.5">13.5h</option>
												<option  value="14.0">14.0h</option>
												<option  value="14.5">14.5h</option>
												<option  value="15.0">15.0h</option>
												<option  value="15.5">15.5h</option>
												<option  value="16.0">16.0h</option>
												<option  value="16.5">16.5h</option>
												<option  value="17.0">17.0h</option>
												<option  value="17.5">17.5h</option>
												<option  value="18.0">18.0h</option>
												<option  value="18.5">18.5h</option>
												<option  value="19.0">19.0h</option>
												<option  value="19.5">19.5h</option>
												<option  value="20.0">20.0h</option>
												<option  value="20.5">20.5h</option>
												<option  value="21.0">21.0h</option>
												<option  value="21.5">21.5h</option>
												<option  value="22.0">22.0h</option>
												<option  value="22.5">22.5h</option>
												<option  value="23.0">23.0h</option>
												<option  value="23.5">23.5h</option>
												<option  value="24.0">24.0h</option>
												<option  value="24.5">24.5h</option>
												<option  value="25.0">25.0h</option>
												<option  value="25.5">25.5h</option>
												<option  value="26.0">26.0h</option>
												<option  value="26.5">26.5h</option>
												<option  value="27.0">27.0h</option>
												<option  value="28.5">28.5h</option>
												<option  value="29.0">29.0h</option>
												<option  value="29.5">29.5h</option>
												<option  value="30.0">30.0h</option>
												<option  value="30.5">30.5h</option>
												<option  value="31.0">31.0h</option>
												<option  value="31.5">31.5h</option>
												<option  value="32.0">32.0h</option>
												<option  value="32.5">32.5h</option>
												<option  value="33.0">33.0h</option>
												<option  value="33.5">33.5h</option>
												<option  value="34.0">34.0h</option>
												<option  value="34.5">34.5h</option>
												<option  value="35.0">35.0h</option>
												<option  value="35.5">35.5h</option>
												<option  value="36.0">36.0h</option>
												<option  value="36.5">36.5h</option>
												<option  value="37.0">37.0h</option>
												<option  value="38.5">38.5h</option>
												<option  value="39.0">39.0h</option>
												<option  value="39.5">39.5h</option>
												<option  value="40.0">40.0h</option>
											</select>
									
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 20%; display: inline-block; color: #606265;">part
											quantity:</div>
										<input id="part_quantity" name="part_quantity"
											style="width: 70%; margin-left: 5%; display: inline-block;"
											class="form-control" />


									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 20%; white-space: nowrap; display: inline-block; color: #606265;">Preferred
											Operator:</div>
										<select id="preferred_operator" name="preferred_operator"
											style="width: 70%; margin-left: 5%;display: inline-block;"
											class="form-control">
											<option value='-1'>请选择推荐人</option>
											<c:if test="${fn:length(operatorList)!=0}">
											<c:forEach items="${operatorList}" var="item" >
												<option value='${item.username}'>${item.username}</option>
										     	</c:forEach>
											</c:if>
										</select>
									</div>
								</div>
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
							</div>
							<!-- 1 -->

							<!-- 具体内容区 -->
							
							<!-- 8 -->
							<div class="row" style="margin-left: 0px; margin-top: 30px;" id="Other">
								
							</div>
						
							
							
							<div class="row">
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
								<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10 "
									style="margin-top: 40px; margin-bottom: 40px;">
									<div style="width: 20%; display: inline-block;">
										<div>Remark:</div>
									</div>
									<div
										style="height: 118px; width: 100%; color: #606265; padding-left: 3%; margin-top: 10px;">
										<textarea id="remark" name="remark"
											style="width: 100%; height: 118px; border-radius: 20px; padding-left: 10px; padding-top: 10px;"></textarea>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
								<div class="col-md-11 col-lg-11 col-xl-11 col-sm-11 "
									style="margin-bottom: 40px;">
								
									<div  id="listId">
										
									</div>
								</div>
							</div>
					
						
							
							
							
								<div class="row">
							<div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 "style="text-align: center; margin-top: 40px; margin-bottom: 40px;">
									
								<button type="button" class="btn btn-primary btn-lg" style="padding: 11px 122px;" onclick="save();" id="confirm">confirm</button>
							</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 控制va是否已经创建过订单，0没有创建， 100已经创建 -->
	<input hidden="hiddin" value="0" id="disId">
</body>
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="/EPD/layui/layer.js"></script>
	<script type="text/javascript"  src="js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="js/bootstrap-select.min.js"></script>
	<script type="text/javascript"  src="js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="js/public.js"></script>
<script>
//浏览器自动刷新时，删除所有的数据
window.onload=function() {
	  document.forms[0].reset();
	  placeFocus();
	}
	function placeFocus() {
	  document.forms[0].elements[0].focus();
	  // assuming the first element
	}
	


/**
 * 查询下拉选选中的va的值
 */
function selectVA_NO(value){

	if(value==-1){
		//没有选中va——no
		$("#type option:first").prop("selected", true); 
		$("select#type").attr("disabled", false);
		$("select#type").trigger("change");
		$("#part_no").val("").attr("disabled", false);
		$("#bm_no").val("").attr("disabled", false);
		$("#work_center").val("").attr("disabled", false);
		$("#customer_project").val("").attr("disabled", false);
		$("#disId").val("0");
		 $("#kb_no").empty();
		$("#kb_no").append('<option value="-1">请选择KB No</option>')
		return;
	}else{
		//根据va,查询该va是否已经下过单，下过单则禁用
		$.ajax({
		   	url:'<%=basePath%>main/selectVANO.do',
			type: "POST",
			dataType:'json',
			data:{
				vaNo:value
			},
			success: function(data){
				console.log(data.succ+"=======1121");
				 if(data.succ==1){
					//进行数据的处理
					console.log(data.work_order);
					//type选择的初始化
					$("select#type").find("option[value='"+data.work_order.type+"']").prop("selected", "selected"); 
			    	$("select#type").attr("disabled", true);
					$("#part_no").val(data.work_order.part_no).attr("disabled", true);
					$("#bm_no").val(data.work_order.bm_no).attr("disabled", true);
					$("#work_center").val(data.work_order.work_center).attr("disabled", true);
					$("#customer_project").val(data.work_order.customer_project).attr("disabled", true);
					$("select#type").trigger("change");
					$("#disId").val("1");
				 }else{
					 $("#type option:first").prop("selected", true); 
						$("select#type").attr("disabled", false);
						$("select#type").trigger("change");
						$("#part_no").val("").attr("disabled", false);
						$("#bm_no").val("").attr("disabled", false);
						$("#work_center").val("").attr("disabled", false);
						$("#customer_project").val("").attr("disabled", false);
						$("#disId").val("0");
				 }
				 $("#kb_no").empty();
					$("#kb_no").append('<option value="-1">请选择KB No</option>')
					$.each(data.kb_recordList, function(i, li) {
						var trs1 = '<option value="'+li.kb_no+'">'+li.kb_no+'</option>';
						$("#kb_no").append(trs1);
					}); 	
				 	
				}
	   	
		});
		
		
		
	}
	
	
}
/**work_center,处理选中的值
 * 
 */
$("#work_center").on("input",function(){
    var $options=$("#browsers").children();
    console.log($("#work_center").val().trim());
    var text= $("#work_center").val().trim().split("/ ");
    if(text[1]!=undefined){
    	$("#work_center").val(text[1]);
    }
    
    console.log(text[1]);
});

$(document).ready(function(){  
	
	three();
});

	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  //常规用法
		  laydate.render({
		    elem: '#test1'
		  });
	});	
	

	
	  //日期时间选择器
	  layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  //常规用法
		 var myDate = new Date();
		  laydate.render({
			    elem: '#issue_date'
			    ,min: "'"+myDate+"'"
			    ,max: '2099-12-31'
			  });
	});	
	  layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  //常规用法
		   var myDate1 = new Date();
		  laydate.render({
			    elem: '#deadline'
			    ,min: "'"+myDate1+"'"
				,max: '2099-12-31'
		});
	});	
	  
	  
	  //点击添加列表
	  function add(){
		  var a =$("#titleId").children("div");
		if(a.length<13){
			  var add=[];
			  add.push('<div style=" width: 100%; " id="del'+a.length+'">');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;"  type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150"value="" /></div>');
			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;cursor:pointer;" onclick="delete1('+a.length+');">delete</div>');
			  add.push('</div>');
			  $("#titleId").append(add.join('')); 
			  
		}
		  
		
	  }
	  
	  


	  
	  
	  //删除元素
	  function delete1(id){
		  $("#del"+id).remove();
	  }
	  
	  //获取列表的数据
	  function getList(){
		  var nozzlelist =$("#titleId").children("div");
		  var JSONArr=[];
		  //进行数据的处理
		  if(nozzlelist.length>1){
			  for(var i=1;i<nozzlelist.length;i++){
				  var JSONObject= {
							"number":nozzlelist[i].children[0].childNodes[0].value,
							"cylinder_no":nozzlelist[i].children[1].childNodes[0].value,
							"ingector_no":nozzlelist[i].children[2].childNodes[0].value,
							"injector_type":nozzlelist[i].children[3].childNodes[0].value,
							"nozzle_no":nozzlelist[i].children[4].childNodes[0].value,
							"nozzle_type":nozzlelist[i].children[5].childNodes[0].value,
							"md":nozzlelist[i].children[6].childNodes[0].value,
							"mf":nozzlelist[i].children[7].childNodes[0].value,
							"work_time":nozzlelist[i].children[8].childNodes[0].value,
							"remark":nozzlelist[i].children[9].childNodes[0].value,
					}
				  JSONArr.push(JSONObject);
			  }
		  }
		  return JSONArr;
	  }
	  
	  //保存
	  
	  function save(){
			if(check()){
				var JSONArrList=[]; 
				var JSONArrStr="";
				if($("#type").val().trim() =='Nozzle'){
					console.log("进入==");
					JSONArrList=getList();
					JSONArrStr=JSON.stringify(JSONArrList);
					
				}
				
				$('#confirm').attr("disabled",true);  
				
				
				
				   var flag=true;
				   layer.alert('确认保存？', {
				  skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
				}, function(){  
				   console.log("开始："+$("#remark").text());
				   if($("#disId").val()==1){//代表已经创建，则先清除禁用，再执行提交
						$("select#type").attr("disabled", false);
						$("#part_no").attr("disabled", false);
						$("#bm_no").attr("disabled", false);
						$("#work_center").attr("disabled", false);
						$("#customer_project").attr("disabled", false);
				   }
				   
				   
				   if(flag){
						flag=false;
						var load = layer.load(1, {shade: [0.1,'#fff']});	
						$.ajax({
					   	url:'<%=basePath%>main/insertOrder.do',
						type: "POST",
						dataType:'text',
						data:$.param({'table':JSONArrStr})+'&'+$('#formId').serialize(),
						success: function(data){
							console.log(data+"=======1121");
							 if(data=="success"){
								 console.log("kaishi========");
								 layer.close(load);	
								 layer.msg('操作成功！', {
											time : 1000,
											icon : 1
										},function(){
											window.location='<%=basePath%>main/allOrderList.do'; 
										});
							 }else if(data=="fail_kb"){
									 layer.close(load);
									   if($("#disId").val()==1){//代表已经创建，则先清除禁用，再执行提交
											$("select#type").attr("disabled", true);
											$("#part_no").attr("disabled", true);
											$("#bm_no").attr("disabled", true);
											$("#work_center").attr("disabled", true);
											$("#customer_project").attr("disabled", true);
									   }
										layer.msg('该KB号已被使用！', { time : 2000,icon : 2 });
							 }else if(data=="fail"){
								   if($("#disId").val()==1){//代表已经创建，则先清除禁用，再执行提交
										$("select#type").attr("disabled", true);
										$("#part_no").attr("disabled", true);
										$("#bm_no").attr("disabled", true);
										$("#work_center").attr("disabled", true);
										$("#customer_project").attr("disabled", true);
								   }
								 layer.close(load);
									layer.msg('登录异常，请检查输入！', { time : 2000,icon : 2 });
							 }
								
							 	
							}
				   	
					});
					}
				});	
			}
			var tts=setTimeout(function(){
				   $('#confirm').attr("disabled",false);
				},3000)
		}
	
		 
	  //校验
	  function check(){
		  if ($("#type").val().trim() =='-1') {
				$("#type").tips({
					side : 2,
					msg : '请选择订单种类',
					bg : '#AE81FF',
					time : 3
				});
				$("#type").focus();
				return false;
			}
		  
		  if ($("#bench_name").val().trim() =='-1') {
				$("#bench_name").tips({
					side : 2,
					msg : '请选择台架类型',
					bg : '#AE81FF',
					time : 3
				});
				$("#bench_name").focus();
				return false;
			}
		  if ($("#part_no").val().trim() =='') {
				$("#part_no").tips({
					side : 2,
					msg : '请输入信息',
					bg : '#AE81FF',
					time : 3
				});
				window.scrollTo(0, 0);
				$("#part_no").focus();
				return false;
			}
		  if ($("#part_type").val().trim() =='-1') {
				$("#part_type").tips({
					side : 2,
					msg : '请选择种类',
					bg : '#AE81FF',
					time : 3
				});
				$("#part_type").focus();
				return false;
			}
		  
		  
		  if ($("#va_no").val().trim() =='-1') {
				$("#va_no").tips({
					side : 2,
					msg : '请选择VA No',
					bg : '#AE81FF',
					time : 3
				});
				$("#va_no").focus();
				return false;
			}
		  
		  if ($("#issue_date").val().trim() =='') {
				$("#issue_date").tips({
					side : 2,
					msg : '请选择issue date',
					bg : '#AE81FF',
					time : 3
				});
				window.scrollTo(0, 0);
				//$("#is").focus();
				return false;
			}
		  if ($("#kb_no").val().trim() =='-1') {
				$("#kb_no").tips({
					side : 2,
					msg : '请选择KB No',
					bg : '#AE81FF',
					time : 3
				});
				$("#kb_no").focus();
				return false;
			}
		  if ($("#deadline").val().trim() =='') {
				$("#deadline").tips({
					side : 2,
					msg : '请选择Deadline',
					bg : '#AE81FF',
					time : 3
				});
				window.scrollTo(0, 0);
				return false;
			}
		  if ($("#bm_no").val().trim() =='') {
				$("#bm_no").tips({
					side : 2,
					msg : '请输入BM No',
					bg : '#AE81FF',
					time : 3
				});
				window.scrollTo(0, 0);
				return false;
			}
		  if ($("#work_center").val().trim() =='') {
				$("#work_center").tips({
					side : 2,
					msg : '请输入 Work Center',
					bg : '#AE81FF',
					time : 3
				});
				$("#work_center").focus();
				return false;
			}
		  
		  if ($("#work_hours").val().trim() =='') {
				$("#work_hours").tips({
					side : 2,
					msg : '请输入 Plan work hours',
					bg : '#AE81FF',
					time : 3
				});
				$("#work_hours").focus();
				return false;
			}
		  		var aa=$("#work_hours").val();
		  		console.log(aa);
		  		console.log(check1(aa));
				if(!check1(aa)){
				$("#work_hours").tips({
					side : 2,
					msg : '输入有误',
					bg : '#AE81FF',
					time : 3
				});
				$("#work_hours").focus();
				return false;
			}
		  if ($("#customer_project").val().trim() =='') {
				$("#customer_project").tips({
					side : 2,
					msg : '请输入 Customer/Project',
					bg : '#AE81FF',
					time : 3
				});
				$("#customer_project").focus();
				return false;
			}
		  if ($("#part_quantity").val().trim() =='') {
				$("#part_quantity").tips({
					side : 2,
					msg : '请输入 part quantity',
					bg : '#AE81FF',
					time : 3
				});
				$("#part_quantity").focus();
				return false;
			}
		  if ($("#preferred_operator").val().trim() =='-1') {
				$("#preferred_operator").tips({
					side : 2,
					msg : '请选择 Preferred Operator',
					bg : '#AE81FF',
					time : 3
				});
				$("#preferred_operator").focus();
				return false;
			}
		  return true;
	  }
	  
	  /*正整数，小数的校验*/
	  
	  function check1(e) { 
		    var re = /^\d+(?=\.{0,1}\d+$|$)/ 
		        if (!re.test(e)){ 
		           return false; 
		        } 
		   return true; 
		} 
	  function insert_KB(){
		  var flag=true;
		  console.log("开始执行");
		  if($("#va_no").val()==-1){//没有选中va号
				layer.msg('请先选择VA No ! ', {
					time : 2000,
					icon : 3
				});
		  	return;
		  }
		 if(flag){
			 flag=false;
			 $('#kb').attr("disabled",true);
			 var load = layer.load(1, {shade: [0.1,'#fff']});
			  $.ajax({
					type : "POST",
					url : "<%=basePath%>main/insertKbNo.do",
					data :{va_no:$("#va_no").val().trim()},
					dataType : "json",
					success : function(data) {
						layer.close(load);
						if(data.succ=='success'){
							layer.msg('创建成功！', {
								time : 2000,
								icon : 1
							});
							if(data.succ==-1){
								layer.msg('暂无数据！', {
									time : 2000,
									icon : 3
								});
									//刷新VO的下拉选
								$("#kb_no").empty();
								$("#kb_no").append('<option value="-1">请选择KB No</option>')
							}else{
								$("#kb_no").empty();
								$("#kb_no").append('<option value="-1">请选择KB No</option>')
								$.each(data.kb_recordList, function(i, li) {
									var trs1 = '<option value="'+li.kb_no+'">'+li.kb_no+'</option>';
									$("#kb_no").append(trs1);
								}); 
							}
						}else if(data.fail==-5){
							layer.msg('权限不足！', {
								time : 2000,
								icon : 3
							});
						}else{
							layer.msg('创建失败！', {
								time : 2000,
								icon : 3
							});
						}
					}
				});
		 }
		 var tts=setTimeout(function(){
			   $('#kb').attr("disabled",false);
			},3000)
	  }
	  /* 生成VA */
	 
	  function insert_VA(){
		  console.log("开始执行");
		  var flag=true;
		  var load = layer.load(1, {shade: [0.1,'#fff']});
		 if(flag){
			 flag=false;
			 $('#va').attr("disabled",true);
			 $.ajax({
					type : "POST",
					url : "<%=basePath%>main/insertVaNo.do",
					data :{},
					dataType : "json",
					success : function(data) {
						layer.close(load);
						if(data.succ=='success'){
							layer.msg('创建成功！', {
								time : 2000,
								icon : 1
							});
							var name=$("#name").val();
							if(name==data.username||name==-1){
								select_VA(data.username);
							}
						}else if(data.fail==-5){
							layer.msg('权限不足！', {
								time : 2000,
								icon : 3
							});
						}else{
							layer.msg('创建失败！', {
								time : 2000,
								icon : 3
							});
						}
					}
				});
		 }
		  var tts=setTimeout(function(){
			   $('#va').attr("disabled",false);
			},3000) 
	  }
	
	  /*点击选择VA号*/
	  $(function() {
	        $("select#name").change(function(event) {
	            var obj = $(this).val();
	            	select_VA(obj);
	        });
	          
	    }) 
	  
	 
	  
	  
	$("select#type").change(function(){
	     console.log($(this).val());
	     if($(this).val()==-1){
	    	 $("#Other").empty();
	    	 $("#listId").empty();
	    	/*  $("#bm").css("display","none");
	    	 $("#sap").css("display","none"); */
	    	 console.log("--sdsad========");
	    	 return;
	     }else if($(this).val()=='Injector'){//喷油器工作单
	    	 $("#Other").empty();
	    	 $("#listId").empty();
	    	/*  $("#bm").css("display","block");
	    	 $("#sap").css("display","none"); */
	    	 var html1=[];
	     		html1.push('<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 30px;"></div>');
	     		html1.push('<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10" style="min-height: 30px;">');
	     		html1.push('<div class="form-group" style="margin-bottom: 0px; border-bottom: solid 1px #d2c3c3;">');
	     		html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     		html1.push('<div style="display: inline-block; width: 30%;">1 Register:</div>');
	     		html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1"  name="one">');
	     		html1.push('</div></div>');
	     		html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     		html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; border-bottom: solid 1px #d2c3c3;">');
	     		html1.push('<div style="display: inline-block; width: 30%;">2 Electrical parameter measure:</div>');
	     		html1.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="two"></div>');
	     		html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	     		html1.push('<div style="width: 20%; display: inline-block;">');
	     		html1.push('<div style="display: inline-block;width: 70%;">AH:</div>');
	     		html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="two_point1"></div>');
	     		html1.push('<div style="width: 20%; display: inline-block;">');
	     		html1.push('<div style="display: inline-block;width: 70%;">Ian/Iab:</div>');
	     		html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="two_point2"></div>');
	     		html1.push('<div style="width: 20%; display: inline-block;">');
	     		html1.push('<div style="display: inline-block;width: 70%;">Rd:</div>');
	     		html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="two_point3"></div>');
	     		html1.push('<div style="width: 20%; display: inline-block;">');
	     		html1.push('<div style="display: inline-block;width: 70%;">Ls:</div>');
	     		html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="two_point4"></div>');
	     		html1.push('</div></div>');
	     		html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     		html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     		html1.push('<div style="display: inline-block; width: 30%;">3 Flushing:</div>');
	     		html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="three">');
	     		html1.push('</div></div>');
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');	
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');	
				html1.push('<div style="display: inline-block; width: 30%;">4 Injector surface clean by paper :</div>');	
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four">');	
				html1.push('</div></div>');	
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');	
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; ">');	
				html1.push('<div style="display: inline-block; width: 30%;">5 Function test:</div>');	
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five"> ');	
				html1.push('<span style="margin-left: 5%;">Repat</span><select  name="injector_round" style="margin-left: 1%;height: 28px; width: 20%;  display: inline-block; padding: 0px 0px;" class="form-control">');	
				html1.push('<option value="1">1</option><option value="2">2</option><option value="3">3</option>');
				html1.push('<option value="4">4</option><option value="5">5</option><option value="6">6</option>');
				html1.push('<option value="7">7</option><option value="8">8</option><option value="9">9</option>');
				html1.push('<option value="10">10</option><option value="11">11</option><option value="12">12</option>');
				html1.push('<option value="13">13</option><option value="14">14</option><option value="15">15</option>');
				html1.push('<option value="20">20</option></select></div>');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap; ">');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;">test point:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point1">');
				html1.push('<select  name="injector_test_point_round" style="margin-left: 5%;height: 28px; width: 30%;  display: inline-block; padding: 0px 0px;" class="form-control">');	
				html1.push('<option value="1">1</option><option value="2">2</option><option value="3">3</option>');
				html1.push('<option value="4">4</option><option value="5">5</option><option value="6">6</option>');
				html1.push('<option value="7">7</option><option value="8">8</option><option value="9">9</option>');
				html1.push('<option value="10">10</option><option value="11">11</option><option value="12">12</option>');
				html1.push('<option value="13">13</option><option value="14">14</option><option value="15">15</option>');
				html1.push('<option value="20">20</option></select></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;">Injection Rate:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point2"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;">Zwick test:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point3"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;">Mahr test:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point4"> </div>');
				html1.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;">PAKO Cleance test:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point5"></div></div>');			
				html1.push('<div style="height: 58px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap;">');			
				html1.push('<div style="width: 30%; display: inline-block;"><div style="display: inline-block; margin-top: 10px;">');			
				html1.push('Signal snatch <br />(AH,NH,EMI signal):</div>');			
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"value="1" name="five_point6"></div>');			
				html1.push('<div style="width: 35%; display: inline-block;"><div style="display: inline-block;">Curve:</div>');			
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point7">');			
				html1.push('<select name="injector_num" style="height: 28px; width: 30%; margin-left: 5%; display: inline-block; padding: 0px 0px;"class="form-control">');			
				html1.push('<option value="1">1</option><option value="2">2</option><option value="3">3</option>');			
				html1.push('<option value="4">4</option><option value="5">5</option><option value="6">6</option>');			
				html1.push('<option value="7">7</option><option value="8">8</option><option value="9">9</option>');			
				html1.push('<option value="10">10</option><option value="11">11</option><option value="12">12</option>');			
				html1.push('<option value="13">13</option><option value="14">14</option><option value="15">15</option>');			
				html1.push('<option value="20">20</option></select></div>');		
				html1.push('<div style="width: 35%; display: inline-block;"><div style="display: inline-block;">Closing time:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point8">');		
				html1.push('<select id="injector_time" name="injector_time"style="height: 28px; width: 30%; margin-left: 5%; display: inline-block; padding: 0px 0px;"class="form-control">');		
				html1.push('<option value="Dry">Dry</option><option value="Wet">Wet</option></select></div></div></div>');		
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');		
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');		
				html1.push('<div style="display: inline-block; width: 30%;">6 Parts exchange:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="six"></div>');		
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');		
				html1.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;width: 70%;">Nozzle:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="six_point1"></div>');		
				html1.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;width: 70%;">Magnet:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="six_point2"></div>');		
				html1.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;width: 70%;">Valve sets:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="six_point3"></div>');		
				html1.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;width: 70%;">Others:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="six_point4">');		
				html1.push('</div></div></div>');		
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');		
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');		
				html1.push('<div style="display: inline-block; width: 30%;">7 Injector assembly:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven"></div>');		
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');		
				html1.push('<div style="width: 20%; display: inline-block;">');		
				html1.push('<div style="display: inline-block;width: 70%;">NSF:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point1"></div>');		
				html1.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;width: 70%;">AH:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point2"></div>');		
				html1.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;width: 70%;">VSF:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point3"> </div>');		
				html1.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;width: 70%;">NH:</div>');		
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point4"></div></div>');		
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');		
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Limitle sample:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point5"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Others:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point6">');
				html1.push('</div></div></div>');
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
				html1.push('<div style="display: inline-block; width: 30%;">8 Disassembly:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eight"></div></div>');
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
				html1.push('<div style="display: inline-block; width: 30%;">9 HPC edge filter press out:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="nine"></div></div>');
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
				html1.push('<div style="display: inline-block; width: 30%;">10 Ultrasonic clean:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="ten"></div></div>');
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
				html1.push('<div style="display: inline-block; width: 30%;">11 Photo make :</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eleven"></div>');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Sem:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eleven_point1"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Hirox:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eleven_point2"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Lecia:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eleven_point3">');
				html1.push('</div></div></div>');
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
				html1.push('<div style="display: inline-block; width: 30%;">12 Metallography :</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="twelve"></div>');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Parts cutting:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="twelve_point1"></div>');
				html1.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;width: 70%;">Parts polishing:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="twelve_point2">');
				html1.push('</div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Parts mounting:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1"style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="twelve_point3"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Hardness test:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="twelve_point4"></div></div></div>');
				html1.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
				html1.push('<div style="display: inline-block; width: 30%;">13 Cross Function Service :</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="thirteen"></div>');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Package:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="thirteen_point1"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Parts deliver:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"value="1" name="thirteen_point2"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Pick up:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="thirteen_point3"></div></div>');
				html1.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Antirust:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="thirteen_point4"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Mechanic Support:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="thirteen_point5"></div>');
				html1.push('<div style="width: 20%; display: inline-block;">');
				html1.push('<div style="display: inline-block;width: 70%;">Scrap:</div>');
				html1.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="thirteen_point6">');
				html1.push('</div></div></div></div>');
				html1.push('<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 30px;"></div>');
	    	 $("#Other").html(html1.join(''));
	     }else if($(this).val()=='Rail'){//Rail工作单
	    	 /* $("#bm").css("display","none");
	    	 $("#sap").css("display","block"); */
	    	 $("#Other").empty();
	    	 $("#listId").empty();
	    	 var html2=[];
	    	 html2.push('<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 30px;"></div>');
	    	 html2.push('<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10" style="min-height: 30px;">');
	    	 html2.push('<div class="form-group" style="margin-bottom: 0px; border-bottom: solid 1px #d2c3c3;">');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	    	 html2.push('<div style="display: inline-block; width: 30%;">1 Register:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="one"></div></div>');
	    	 html2.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; ">');
	    	 html2.push('<div style="display: inline-block; width: 30%;">2 Flushing:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="two"></div></div>');
	    	 html2.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	    	 html2.push('<div style="display: inline-block; width: 30%;">3 Function test:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="three"> </div>');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">RPS F:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="three_point1">');
	    	 html2.push('</div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">PLV F:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="three_point2">');
	    	 html2.push('</div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">PCV F:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="three_point3">');
	    	 html2.push('</div></div></div>');
	    	 html2.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	    	 html2.push('<div style="display: inline-block; width: 30%;">4:</div></div>');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap; ">');
	    	 html2.push('<div style="width: 30%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Rail disassembly:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four"></div>');
	    	 html2.push('<div style="width: 30%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;">PLV disassembly:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four_point1"></div>');
	    	 html2.push('<div style="width: 40%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;">Throttle out-pressing:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four_point2">');
	    	 html2.push('</div></div></div>');
	    	 html2.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; ">');
	    	 html2.push('<div style="display: inline-block; width: 30%;">5:</div></div>');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap; ">');
	    	 html2.push('<div style="width: 40%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Throttle out-pressing:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five"></div>');
	    	 html2.push('<div style="width: 40%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Hole dring:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point1">');
	    	 html2.push('</div></div>');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap;">');
	    	 html2.push('<div style="width: 30%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block; margin-top: 10px;width: 70%;">Rail throttle depth measurement:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point2"></div></div></div>');
	    	 html2.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	    	 html2.push('<div style="display: inline-block; width: 30%;">6 Photo make:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="six"></div>');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">SEM:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="six_point1"></div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">HIROX:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"value="1" name="six_point2"></div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">LECIA:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"value="1" name="six_point3">');
	    	 html2.push('</div></div></div>');
	    	 html2.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	    	 html2.push('<div style="display: inline-block; width: 30%;">7 Cross Function Service:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven"></div>');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Package:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point1"></div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Parts deliver:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point2"></div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Pick up:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point3"></div></div>');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Antirust:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point4"></div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Mechanic Support:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point5">');
	    	 html2.push('</div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;"><div style="display: inline-block;width: 70%;">Scrap:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven_point6">');
	    	 html2.push('</div></div></div>');
	    	 html2.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	    	 html2.push('<div style="display: inline-block; width: 30%;">8 Metallography:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eight"></div>');
	    	 html2.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Parts cutting:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eight_point1"></div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Parts polishing:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eight_point2"></div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Parts mounting:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eight_point3"></div>');
	    	 html2.push('<div style="width: 20%; display: inline-block;">');
	    	 html2.push('<div style="display: inline-block;width: 70%;">Hardness test:</div>');
	    	 html2.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eight_point4">');
	    	 html2.push('</div></div></div></div>');
	    	 html2.push('<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 30px;"></div>');
	    	 
	    	 $("#Other").html(html2.join(''));
	     }else if($(this).val()=='Nozzle'){//Nozzle工作单
	    	 $("#Other").empty();
	    	/*  $("#bm").css("display","none");
	    	 $("#sap").css("display","block"); */
	    	 var html3=[];
	     	html3.push('<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 30px;"></div>');
	     	html3.push('<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10" style="min-height: 30px;">');
	     	html3.push('<div class="form-group" style="margin-bottom: 0px; border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">1 Mark:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="one"></div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">2 Measure on handpump:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="two"></div>');
	     	html3.push('</div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">3 Measure on open pressure test bench:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="three">	</div>');
	     	html3.push('</div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; ">');
	     	html3.push('<div style="display: inline-block; width: 30%;">4 Standard picture:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four"> </div>');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap; ">');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">All :</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four_point1"></div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">KS:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"value="1" name="four_point2"></div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">NS:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four_point3"></div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">DS:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four_point4"></div></div>');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap;">');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block; margin-top: 10px;width: 70%;">KF:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four_point5"></div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">NF:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four_point6"></div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">Inj:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="four_point7">');
	     	html3.push('</div></div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">5 Qhydr. Nozzle 100bar unclean:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five"></div>');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">Wi100/60:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point1"></div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">Wi100:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point2"></div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">W/O100/60:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point3"></div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">W/O100:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="five_point4"></div>');
	     	html3.push('</div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">6 Deliver the part to QMM for SEM:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="six">');
	     	html3.push('</div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">7 PAKO(ultransonic clean):</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="seven">');
	     	html3.push('</div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">8 Mahr Body seat(unclean):</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eight">');
	     	html3.push('</div>');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">1X120°:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eight_point1"></div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">3X120°:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eight_point2"></div></div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">9 Mahr Needle seat(unclean):</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="nine">');
	     	html3.push('</div>');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">1X120° :</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="nine_point1">');
	     	html3.push('</div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">3X120°:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="nine_point2">');
	     	html3.push('</div></div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">10 Mahr Body seat(clean):</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="ten">');
	     	html3.push('</div>');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">1X120° :</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="ten_point1">');
	     	html3.push('</div>');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">3X120°:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="ten_point2"> </div>');
	     	html3.push('</div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">11 Mahr Needle seat(clean):</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eleven"> </div>');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	     	html3.push('<div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">1X120° :</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eleven_point1">');
	     	html3.push('</div><div style="width: 20%; display: inline-block;">');
	     	html3.push('<div style="display: inline-block;width: 70%;">3X120°:</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="eleven_point2">');
	     	html3.push('</div></div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 31%;">12 Nozzle Protrusion/Neddle lift(ultransonic clean) :</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 0px;" value="1" name="twelve">');
	     	html3.push('</div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">13 Nozzle body seat angle :</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="thirteen">');
	     	html3.push('</div></div>');
	     	html3.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	     	html3.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">');
	     	html3.push('<div style="display: inline-block; width: 30%;">14 Hardness test :</div>');
	     	html3.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="fourteen">');
	     	html3.push('</div></div></div>');
	     	html3.push('<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"style="min-height: 30px;"></div>');
	    	 $("#Other").html(html3.join(''));
	    	 
	    	 
	    	 var html4=[];
	    	 html4.push(' <div style=" width: 100%; color: #606265; padding-left: 3%; min-height:130px;" id="titleId">');
	    	 html4.push(' <div style=" width: 100%; " >');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">Number</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">Cylinder No</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">Ingector No</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">Injector Type</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">Nozzle No</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">Nozzle Type</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">MD</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">MF</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">Work Time</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;">Remark</div>');
	    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;cursor:pointer;" onclick="add();" >add</div></div></div>');
	    	 $("#listId").html(html4.join(''));
	    
				
					
			
	     }else if($(this).val()=='Other'){//Other工作单
	    	 $("#Other").empty();
	    	 $("#listId").empty();
	    /* 	 $("#bm").css("display","none");
	    	 $("#sap").css("display","block"); */
	    	 var html4=[];
	    	 html4.push('<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 30px;"></div>');
	    	 html4.push('<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10"style="min-height: 30px;">');
	    	 html4.push('<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">');
	    	 html4.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; border-bottom: solid 1px #d2c3c3;">');
	    	 html4.push('<div style="display: inline-block; width: 30%;">1 Cross Function Service:</div>');
	    	 html4.push('<input type="checkbox" id="inlineCheckbox1" style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="one">');
	    	 html4.push('</div><div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	    	 html4.push('<div style="width: 20%; display: inline-block;">');
	    	 html4.push('<div style="display: inline-block;width: 70%;">Package:</div>');
	    	 html4.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="one_point1">');
	    	 html4.push('</div>');
	    	 html4.push('<div style="width: 20%; display: inline-block;">');
	    	 html4.push('<div style="display: inline-block;width: 70%;">Parts deliver:</div>');
	    	 html4.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="one_point2">');
	    	 html4.push('</div><div style="width: 20%; display: inline-block;">');
	    	 html4.push('<div style="display: inline-block;width: 70%;">Pick up:</div>');
	    	 html4.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="one_point3">');
	    	 html4.push('</div></div>');
	    	 html4.push('<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">');
	    	 html4.push('<div style="width: 20%; display: inline-block;">');
	    	 html4.push('<div style="display: inline-block;width: 70%;">Antirust:</div>');
	    	 html4.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="one_point4">');
	    	 html4.push('</div><div style="width: 20%; display: inline-block;">');
	    	 html4.push('<div style="display: inline-block;width: 70%;">Mechanic Support:</div>');
	    	 html4.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="one_point5"></div>');
	    	 html4.push('<div style="width: 20%; display: inline-block;">');
	    	 html4.push('<div style="display: inline-block;width: 70%;">Scrap:</div>');
	    	 html4.push('<input type="checkbox" id="inlineCheckbox1" style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;" value="1" name="one_point6">');
	    	 html4.push('</div></div></div></div>');
	    	 html4.push('<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 30px;"></div>');
	    	 $("#Other").html(html4.join(''));
	     }
	 });  
	
	
	
	
	
	
		
</script>
</html>