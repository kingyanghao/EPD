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
<title>修改订单</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!-- CSS Files -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-select.min.css" rel="stylesheet" />
<link href="layui/css/layui.css" rel="stylesheet" media="all" />
<link type="text/css" href="layui/css/modules/layer/default/layer.css"
	rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
<script src="/EPD/js/jquery-1.11.2.min.js"></script>
<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	font-family:'Microsoft YaHei'; 
}
#lantiao{
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;

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
</style>
</head>
<body>
<%
String errorInfo = (String)request.getAttribute("role");         // 获取错误属性
if(errorInfo != null) {
%>
<script type="text/javascript" language="javascript">
alert("权限不足");                                            // 弹出错误信息

window.location='main/allOrderList.do' ;                            // 跳转到登录界面
</script> 
<%
}
%>
<%
String errorInfo1 = (String)request.getAttribute("operator");         // 获取错误属性
if(errorInfo1 != null) {
%>
<script type="text/javascript" language="javascript">
alert("请选择订单");                                            // 弹出错误信息

window.location='main/modifyOrder.do' ;                            // 跳转到登录界面
</script> 
<%
}
%>


	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>

	<!-- 内容区 -->
	<div id="main">
								<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Modify Order</div></div>
		<div class="container">
			<div class="panel panel-content">
				
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content"
						style="min-height: 750px; border: solid white;">
						


							<form class="form-horizontal" id="formId">
							<input id="orderid" name="orderid" type="hidden" value="${work_order.orderid}" />	
							
							<div class="row"
								style="margin-left: 0px; margin-right: 0px; margin-top: 60px;">
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
								<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5"
									style="min-height: 30px;">
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Select:</div>
										<input disabled="disabled"
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.type}" />

									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Part No:</div>
										<input  disabled="disabled" id="part_no" name="part_no"
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.part_no}"/>
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div 
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">VA
											No:</div>
										<input  disabled="disabled"
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.va_no}" />
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div 
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">KB
											No:</div>
										<input  disabled="disabled"
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.kb_no}" />
									</div>

										<div class="form-group" style="margin-bottom: 0px;" id="bm">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">BM
											No:</div>
										<input  disabled="disabled" id="bm_no" name="bm_no" 
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.bm_no}"/>
									</div>
									
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Work
											Center:</div>
										<input  disabled="disabled" id="work_center" name="work_center" 
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.work_center}"/>
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Customer/Project:</div>
										<input  disabled="disabled" id="customer_project" name="customer_project" 
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.customer_project}"/>
									</div>


								</div>
								<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5"
									style="min-height: 30px; border: saolid 1px;">

									<div class="form-group" style="margin-bottom: 0px;">
										<div 
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Test
											bench:</div>
									<%-- 	<input id="bench_name" name="bench_name"  disabled="disabled"
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.bench_name}"/> --%>
											<select id="bench_name" name="bench_name"
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control">
											<option ${work_order.bench_name=='CI4000 F1'?'selected':''} value='CI4000 F1'>CI4000 F1</option>
											<option ${work_order.bench_name=='CI4000 F2'?'selected':''} value='CI4000 F2'>CI4000 F2</option>
											<option ${work_order.bench_name=='CI4000 F3'?'selected':''} value='CI4000 F3'> CI4000 F3</option>
											<option ${work_order.bench_name=='CI4000 F4'?'selected':''} value='CI4000 F4'>CI4000 F4</option>
											<option ${work_order.bench_name=='CI4000-RAK F7'?'selected':''} value='CI4000-RAK F7'>CI4000-RAK F7</option>
											<option ${work_order.bench_name=='ESS F6'?'selected':''} value='ESS F6'> ESS F6</option>
											<option ${work_order.bench_name=='ESS F8(NEW)'?'selected':''} value='ESS F8(NEW)'> ESS F8(NEW)</option>
											<option ${work_order.bench_name=='Large engine F9'?'selected':''} value='Large engine F9'>Large engine F9</option>
											<option ${work_order.bench_name=='Nozzle flow rate'?'selected':''} value='Nozzle flow rate'>Nozzle flow rate</option>
											<option ${work_order.bench_name=='Nozzle Pdoe'?'selected':''} value='Nozzle Pdoe'>Nozzle Pdoe</option>
											<option ${work_order.bench_name=='Pako'?'selected':''} value='Pako'>Pako</option>
											<option ${work_order.bench_name=='Marh'?'selected':''} value='Marh'>Marh</option>
											<option ${work_order.bench_name=='Zwick'?'selected':''} value='Zwick'>Zwick</option>
											<option ${work_order.bench_name=='HSM'?'selected':''} value='HSM'>HSM</option>
											<option ${work_order.bench_name=='Other'?'selected':''} value='Other'>Other</option>
										</select>
									</div>
<div class="form-group" style="margin-bottom: 0px;">
										<div style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Part Type:</div>
										<div class="" style="width: 60%; margin-left: 5%; display: inline-block;">
										
												<select class="selectpicker form-control"  data-live-search="true" id="part_type" name="part_type" >
											    <option  value='-1'>请选择种类</option>
												<option ${work_order.part_type=='CRI1.3'?'selected':''} value='CRI1.3'>CRI1.3</option>
												<option ${work_order.part_type=='CRI1.4'?'selected':''} value='CRI1.4'>CRI1.4</option>
												<option ${work_order.part_type=='CRI1-16'?'selected':''} value='CRI1-16'>CRI1-16</option>
												<option ${work_order.part_type=='CRI1-18'?'selected':''} value='CRI1-18'>CRI1-18</option>    
												<option ${work_order.part_type=='CRI1-20'?'selected':''} value='CRI1-20'>CRI1-20</option>                   
												<option ${work_order.part_type=='CRI14 S3'?'selected':''} value='CRI14 S3'>CRI14 S3</option>                   
												<option ${work_order.part_type=='CRI2.2'?'selected':''} value='CRI2.2'>CRI2.2</option>                   
												<option ${work_order.part_type=='CRI2-14'?'selected':''} value='CRI2-14'>CRI2-14</option>                   
												<option ${work_order.part_type=='CRI2-16'?'selected':''} value='CRI2-16'>CRI2-16</option>                   
												<option ${work_order.part_type=='CRI2-18'?'selected':''} value='CRI2-18'>CRI2-18</option>                   
												<option ${work_order.part_type=='CRI2-20'?'selected':''} value='CRI2-20'>CRI2-20</option>                   
												<option ${work_order.part_type=='CRIN1.6'?'selected':''} value='CRIN1.6'>CRIN1.6</option>                   
												<option ${work_order.part_type=='CRIN1-14'?'selected':''} value='CRIN1-14'>CRIN1-14</option>                   
												<option ${work_order.part_type=='CRIN14 S3'?'selected':''} value='CRIN14 S3'>CRIN14 S3</option>                   
												<option ${work_order.part_type=='CRIN2-16'?'selected':''} value='CRIN2-16'>CRIN2-16</option>                   
												<option ${work_order.part_type=='CRIN2-16 BL'?'selected':''} value='CRIN2-16 BL'>CRIN2-16 BL</option>                   
												<option ${work_order.part_type=='CRIN3-18'?'selected':''} value='CRIN3-18'>CRIN3-18</option>                   
												<option ${work_order.part_type=='CRIN3-18 BL'?'selected':''} value='CRIN3-18 BL'>CRIN3-18 BL</option>                   
												<option ${work_order.part_type=='CRIN3-20'?'selected':''} value='CRIN3-20'>CRIN3-20</option>                   
												<option ${work_order.part_type=='CRIN3-22'?'selected':''} value='CRIN3-22'>CRIN3-22</option>                   
												<option ${work_order.part_type=='CRIN3-25'?'selected':''} value='CRIN3-25'>CRIN3-25</option>  
												<option ${work_order.part_type=='CRIN3-20BL'?'selected':''} value='CRIN3-20BL'>CRIN3-20BL</option>                           
												<option ${work_order.part_type=='CRIN25L'?'selected':''} value='CRIN25L'>CRIN25L</option>                   
												<option ${work_order.part_type=='CRIN25C'?'selected':''} value='CRIN25C'>CRIN25C</option>           
												<option ${work_order.part_type=='CRI1-20OWH'?'selected':''} value='CRI1-20OWH'>CRI1-20OWH</option>                   
												<option ${work_order.part_type=='HFR-16'?'selected':''} value='HFR-16'>HFR-16</option>                   
												<option ${work_order.part_type=='HFR-18'?'selected':''} value='HFR-18'>HFR-18</option>                   
												<option ${work_order.part_type=='HFRN-16'?'selected':''} value='HFRN-16'>HFRN-16</option>                   
												<option ${work_order.part_type=='HFRN-18'?'selected':''} value='HFRN-18'>HFRN-18</option>                   
												<option ${work_order.part_type=='HFRN-20'?'selected':''} value='HFRN-20'>HFRN-20</option>                   
												<option ${work_order.part_type=='HFRN-22'?'selected':''} value='HFRN-22'>HFRN-22</option>                   
												<option ${work_order.part_type=='LWR-16'?'selected':''} value='LWR-16'>LWR-16</option>                   
												<option ${work_order.part_type=='LWRN-18'?'selected':''} value='LWRN-18'>LWRN-18</option>                   
												<option ${work_order.part_type=='Nozzle'?'selected':''} value='Nozzle'>Nozzle</option>                   
												<option ${work_order.part_type=='Nozzle: CRI1.3'?'selected':''} value='Nozzle: CRI1.3'>Nozzle: CRI1.3</option>                   
												<option ${work_order.part_type=='Nozzle: CRI1.4'?'selected':''} value='Nozzle: CRI1.4'>Nozzle: CRI1.4</option>                   
												<option ${work_order.part_type=='Nozzle: CRI1-16'?'selected':''} value='Nozzle: CRI1-16'>Nozzle: CRI1-16</option>                   
												<option ${work_order.part_type=='Nozzle: CRI1-18'?'selected':''} value='Nozzle: CRI1-18'>Nozzle: CRI1-18</option>                   
												<option ${work_order.part_type=='Nozzle: CRI14 S3'?'selected':''} value='Nozzle: CRI14 S3'>Nozzle: CRI14 S3</option>                   
												<option ${work_order.part_type=='Nozzle: CRI2-14'?'selected':''} value='Nozzle: CRI2-14'>Nozzle: CRI2-14</option>                   
												<option ${work_order.part_type=='Nozzle: CRI2-16'?'selected':''} value='Nozzle: CRI2-16'>Nozzle: CRI2-16</option>                   
												<option ${work_order.part_type=='Nozzle: CRI2-18'?'selected':''} value='Nozzle: CRI2-18'>Nozzle: CRI2-18</option>                   
												<option ${work_order.part_type=='Nozzle: CRIN1.6'?'selected':''} value='Nozzle: CRIN1.6'>Nozzle: CRIN1.6</option>                   
												<option ${work_order.part_type=='Nozzle: CRIN1-14'?'selected':''} value='Nozzle: CRIN1-14'>Nozzle: CRIN1-14</option>                   
												<option ${work_order.part_type=='Nozzle: CRIN14 S3'?'selected':''} value='Nozzle: CRIN14 S3'>Nozzle: CRIN14 S3</option>                   
												<option ${work_order.part_type=='Nozzle: CRIN2-16'?'selected':''} value='Nozzle: CRIN2-16'>Nozzle: CRIN2-16</option>                   
												<option ${work_order.part_type=='Nozzle: CRIN2-16 BL'?'selected':''} value='Nozzle: CRIN2-16 BL'>Nozzle: CRIN2-16 BL</option>                   
												<option ${work_order.part_type=='Nozzle: CRIN3-18'?'selected':''} value='Nozzle: CRIN3-18'>Nozzle: CRIN3-18</option>                   
												<option ${work_order.part_type=='Nozzle: CRIN3-18 BL'?'selected':''} value='Nozzle: CRIN3-18 BL'>Nozzle: CRIN3-18 BL</option>                   
												<option ${work_order.part_type=='Others'?'selected':''} value='Others'>Others</option>                   
											                  
											</select>
										
										</div>	
									</div>
									<div class="form-group" style="margin-bottom: 0px;" id="">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Issue
											date:</div>
										<input id="issue_date" name="issue_date" disabled="disabled"
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.issue_date}"/>
									</div>

									<div class="form-group"  style="margin-bottom: 0px;" id="dead">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Deadline:</div>
										<input id="deadline" name="deadline" readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.deadline}"/>
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left;white-space: nowrap;  width: 30%; display: inline-block; color: #606265;">Plan
											work hours:</div>
										<input id="work_hours" name="work_hours" 
											style="width: 60%; margin-left: 5%;display: inline-block;"
											class="form-control"  value="${work_order.work_hours}" />
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">part
											quantity:</div>
										<input id="part_quantity" name="part_quantity" 
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.part_quantity}"/>


									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; white-space: nowrap;display: inline-block; color: #606265;">Preferred
											Operator:</div>
											<select id="preferred_operator" name="preferred_operator"
												style="width: 60%; margin-left: 5%; display: inline-block;"
												class="form-control">
												<option ${work_order.preferred_operator=='-1'?'selected':''} value='-1'>请选择推荐人</option>
												<c:if test="${fn:length(operatorList)!=0}">
												<c:forEach items="${operatorList}" var="item" >
													<option ${work_order.preferred_operator==item.username?'selected':''} value='${item.username}'>${item.username}</option>
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
								
								
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
								<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10"
									style="min-height: 30px;">
									<div class="form-group"
										style="margin-bottom: 0px; border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">1
												Mark:</div>
											<input type="checkbox" id="inlineCheckbox1"  ${work_order.one==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="one">
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">2
												Measure on handpump:</div>
											<input type="checkbox" id="inlineCheckbox1"  ${work_order.two==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="two">
										</div>
										

									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">3
												Measure on open pressure test bench:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.three==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="three">
										</div>
									</div>


									

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; ">
											<div style="display: inline-block; width: 30%;">4
												Standard picture:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.four==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="four"> 
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap; ">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">All :</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.four_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="four_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">KS:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.four_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="four_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">NS:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.four_point3==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="four_point3">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">DS:</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.four_point4==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="four_point4">
											</div>
											
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block; margin-top: 10px;width: 70%;">
													KF:
												</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.four_point5==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="four_point5">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">NF:</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.four_point6==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="four_point6"> 


											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Inj:</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.four_point7==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="four_point7">
											</div>
										</div>
									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">5 Qhydr. Nozzle 100bar unclean:</div>
											<input type="checkbox" id="inlineCheckbox1"  ${work_order.five==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="five">
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Wi100/60:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="five_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Wi100:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="five_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">W/O100/60:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point3==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="five_point3">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">W/O100:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point4==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="five_point4">
											</div>

										</div>

									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">6
												Deliver the part to QMM for SEM:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.six==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="six">
										</div>
										
							
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">7
												PAKO(ultransonic clean):</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.seven==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="seven">
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">8 Mahr Body seat(unclean):</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.eight==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="eight">
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">1X120°:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.eight_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="eight_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">3X120°:</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.eight_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="eight_point2">
											</div>
											

										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">9
												Mahr Needle seat(unclean):</div>
											<input type="checkbox" id="inlineCheckbox1"  ${work_order.nine==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="nine">
										</div>
										
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">1X120° :</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.nine_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="nine_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">3X120°:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.nine_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="nine_point2">
											</div>
											

										</div>
										
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">10
												Mahr Body seat(clean):</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.ten==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="ten">
										</div>
										
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">1X120° :</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.ten_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="ten_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">3X120°:</div> 
												<input type="checkbox" id="inlineCheckbox1" ${work_order.ten_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="ten_point2">
											</div>
											

										</div>
										
									</div>
									
									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">11
												Mahr Needle seat(clean):</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.eleven==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="eleven">
										</div>
										
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">1X120° :</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.eleven_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="eleven_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">3X120°:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.eleven_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="1" name="eleven_point2">
											</div>
											

										</div>
										
									</div>
									
									

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 31%;">12 Nozzle Protrusion/Neddle lift(ultransonic clean) :</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.twelve==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 0px;"
												value="1" name="twelve">
										</div>
										
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">13
												Nozzle body seat angle :</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.thirteen==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="thirteen">
										</div>
										
									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">14
												Hardness test :</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.fourteen==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="1" name="fourteen">
										</div>
									</div>
								</div>
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
							
						
							</div>
							<div id="nozzleList" style="display: none;">${nozzleList}</div>
						<div class="row">
								
								<div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 "
									style="margin-bottom: 40px;">
								
									<div  id="listId">
										
									<!-- 标题结束 -->
									</div>
								</div>
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
											style="width: 100%; height: 118px; border-radius: 20px; padding-left: 10px; padding-top: 10px;">${work_order.remark}</textarea>
									</div>
								</div>
							</div>
							<div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 "
								style="text-align: center; margin-top: 40px; margin-bottom: 40px;">
								<button type="button" class="btn btn-primary btn-lg"
									style="padding: 11px 122px;" onclick="save();" id="confirm">confirm</button>
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
	<script type="text/javascript" src="/EPD/layui/layer.js"></script>
	<script type="text/javascript"  src="js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="js/bootstrap-select.min.js"></script>
	<script type="text/javascript"  src="js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="js/public.js"></script>
<script>


	



	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  //常规用法
		  laydate.render({
		    elem: '#test1'
		  });
	});	
	
	$(document).ready(function(){ 
		four();
		title();
	});
	
	/* 标题的样式 */
	function title(){
		var nozzleList=$("#nozzleList").html(); 
	
		var html4=[];
    	 html4.push(' <div style=" width: 100%; color: #606265; padding-left: 3%; min-height:130px;" id="titleId">');
    	 html4.push(' <div style=" width: 100%; " >');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">Number</div>');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">Cylinder No</div>');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">Ingector No</div>');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">Injector Type</div>');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">Nozzle No</div>');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">Nozzle Type</div>');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">MD</div>');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">MF</div>');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">Work Time</div>');
    	 html4.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;margin:0;">Remark</div>');
    	 html4.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;margin:0;cursor:pointer;" onclick="add();" >add</div></div></div>');
    	 $("#listId").html(html4.join(''));
    	 var jsonObj =  JSON.parse(nozzleList);//转换为json对象
    	 
    	 if(jsonObj.length>0){
    		 for(var i=0;i<jsonObj.length;i++){
    		  var add=[];
    		  add.push('<div style=" width: 100%; " id="del'+i+'">');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;"  type="text"  max="150" value="'+jsonObj[i].number+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;" type="text"  max="150" value="'+jsonObj[i].cylinder_no+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;" type="text"  max="150" value="'+jsonObj[i].ingector_no+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value="'+jsonObj[i].injector_type+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value="'+jsonObj[i].nozzle_no+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value="'+jsonObj[i].nozzle_type+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value="'+jsonObj[i].md+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value="'+jsonObj[i].mf+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value="'+jsonObj[i].work_time+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150"value="'+jsonObj[i].remark+'" /></div>');
   			  add.push('<div style="display:inline-block;width:8%;border:solid 1px;text-align: center;cursor:pointer;" onclick="delete1('+i+');">delete</div>');
   			
   			  add.push('</div>');
   			  $("#titleId").append(add.join('')); 
    		 }
    	 }
    	 
	}
	
	 //点击添加列表
	  function add(){
		  var a =$("#titleId").children("div");
		if(a.length<11){
			  var add=[];
			  add.push('<div style=" width: 100%; " id="del'+a.length+'">');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;"  type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" value=""/></div>');
			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150"value="" /></div>');
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
	  
	  function save(){
			if(check()){
			 $('#confirm').attr("disabled",true);  
				var JSONArrList=[]; 
				var JSONArrStr="";
				
					console.log("进入==");
					JSONArrList=getList();
					JSONArrStr=JSON.stringify(JSONArrList);
					
				
				   var flag=true;
				   layer.alert('确认修改？', {
				  skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
				}, function(){  
				   console.log("开始：");
				   if(flag){
						flag=false;
						var load = layer.load(1, {shade: [0.1,'#fff']});	
						$.ajax({
					   	url:'<%=basePath%>main/updateOrder.do',
						type: "POST",
						dataType:'text',
						data: $.param({'table':JSONArrStr})+'&'+$('#formId').serialize(),
						success: function(data){
							console.log(data+"=======1121");
							 if(data=="success"){
								 console.log("kaishi========");
								 layer.close(load);	
								 layer.msg('修改成功！', {
											time : 1000,
											icon : 1
										},function(){
											window.location='<%=basePath%>main/allOrderList.do'; 
										});
							 }else if(data=="fail_kb"){
									 layer.close(load);
										layer.msg('操作失败，请检查输入！', { time : 2000,icon : 2 });
							 }else if(data=="fail"){
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
	 
		
</script>
</html>