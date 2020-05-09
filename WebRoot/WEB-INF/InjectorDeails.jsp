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

<script src="/EPD/js/jquery-1.11.2.min.js"></script>
	<script  src="/EPD/js/jQuery.print.js"></script>

<base href="<%=basePath%>">
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>详情</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!-- CSS Files -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="all" />

<link href="layui/css/layui.css" rel="stylesheet" media="all" />
<link type="text/css" href="layui/css/modules/layer/default/layer.css"
	rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />

<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	
}

#main {
	margin-left: 14%
}
#lantiao{
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;
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
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>

	<!-- 内容区 -->
	<div id="main">
		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Task pool</div></div>
		<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				
				<!-- 页面主体头部 -->
				<div class="panel-body">
					<input id="biuuu_button" class="btn btn-primary " type="button" style="padding: 5px 32px;float:right;" value="Print"></input> 
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content"
						style="min-height: 750px; border: solid white;">
							<!-- 具体内容区 -->
							<div class="row" style="margin-left: 0px; margin-top: 30px;" id="">
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"></div>
									<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10"
									style="min-height: 30px;">
						
						<div>排单详情</div>
						<c:if test="${fn:length(scheduling_recordList)>0}">
						<c:forEach items="${scheduling_recordList}" var="item" >
						<div>
						<div class="layui-inline" style="">
							<div style="height:38px;width:100px;display: inline-block;">Date Time:
							</div>
							<div class="layui-input-inline" style="width:100px;">
							<input type="text"  class="layui-input" style="background-color: #eeeeee;padding-left:0px;text-align: center;"  disabled="disabled" value="${item.scheduling_date}"/>
							</div>
						</div>
						<div class="layui-inline" style="">
							<div style="height:38px;width:75px;display: inline-block;">Start Time:
							</div>
							<div class="layui-input-inline" style="width:80px;">
							<input type="text"  class="layui-input" style="background-color: #eeeeee;padding-left:0px;text-align: center;"  disabled="disabled" value="${item.start_time}"/>
							</div>
						</div>
						<div class="layui-inline" style="">
							<div style="height:38px;width:70px;display: inline-block;">End Time:
							</div>
							<div class="layui-input-inline" style="width:80px;background-color: #eeeeee;">
							<input type="text"  class="layui-input" style="background-color: #eeeeee;padding-left:0px;text-align: center;" disabled="disabled" value="${item.end_time}"/>
							</div>
						</div>
						<div class="layui-inline" style="">
							<div style="height:38px;width:70px;display: inline-block;">OverTime:
							</div>
							<div class="layui-input-inline" style="width:80px;">
								<c:if test="${item.work_overtime==0}">
									<input type="text"  class="layui-input" style="background-color: #eeeeee;padding-left:0px;text-align: center;" disabled="disabled" value="no"/>
								</c:if>
								<c:if test="${item.work_overtime==1}">
									<input type="text"  class="layui-input" style="background-color: #eeeeee;padding-left:0px;text-align: center;" disabled="disabled" value="yes"/>
								</c:if>
							</div>
						</div>
						
							<div class="layui-inline" style="">
								<div style="height:38px;width:50px;display: inline-block;">Status:
								</div>
								<div class="layui-input-inline" style="width:80px;">
								<c:if test="${item.scheduling_status==1}">
								<input type="text"  class="layui-input" style="background-color: #eeeeee;padding-left:0px;text-align: center;" disabled="disabled" value="unfinished"/>
								</c:if>
							<c:if test="${item.scheduling_status==2}">
								<input type="text"  class="layui-input" style="background-color: #eeeeee;padding-left:0px;text-align: center;" disabled="disabled" value="finished" />
							</c:if>
							</div>	
							</div>
							<div class="layui-inline" style="">
								<div style="height:38px;display: inline-block;">操作:</div>
								<c:if test="${item.scheduling_status==1&&(item.workers==loginName||roles==1)}">
								<button class="layui-input" style="background-color: #eeeeee;display: inline-block;width:60px;padding-left: 0px;" onclick="closeOrder(${item.scheduling_id})">关单</button>
								</c:if>
								<c:if test="${item.scheduling_status==1&&roles==1}">
									<button  class="layui-input" style="background-color: #eeeeee;display: inline-block;width:60px;padding-left: 0px;" onclick="deleteOrder(${item.scheduling_id})">删除</button>
								</c:if>
								<c:if test="${item.scheduling_status==2}">
									<button  class="layui-input" style="background-color: #eeeeee;display: inline-block;width:60px;padding-left: 0px;">OK</button>
								</c:if>
								
							</div>
						</div>
						</c:forEach>
						</c:if>
					</div>
					<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"></div>
				</div>
<!-- 派单结束 -->
				<!--打印  -->
					<div id="printArea">
							<div class="row" style="margin-left: 0px; margin-right: 0px; margin-top: 60px;">
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 30px;"></div>
								<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height: 30px;">
									<div class="form-group" style="margin-bottom: 0px;">
										<div style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">Select:</div>
										<input readonly style="width:50%; margin-left: 5%; display: inline-block;" class="form-control" value="${work_order.type}" />
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">Part No:</div>
										<input readonly style="width:50%; margin-left: 5%; display: inline-block;" class="form-control" value="${work_order.part_no}" />
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">VA
											No:</div>
										<input readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.va_no}" />
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">KB
											No:</div>
										<input readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" id="kbId" value="${work_order.kb_no}" />
									</div>

									<div class="form-group" style="margin-bottom: 0px;" id="bm">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">BM
											No:</div>
										<input id="bm_no" name="bm_no" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.bm_no}"/>
									</div>
									
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">Work
											Center:</div>
										<input id="work_center" name="work_center" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.work_center}"/>
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">Customer/Project:</div>
										<input id="customer_project" name="customer_project" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.customer_project}"/>
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; white-space: nowrap;width:40%; display: inline-block; color: #606265;">
											Operator:</div>
											<input id="operator" name="operator" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.operator}"/>
									</div>

								</div>
								<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5"
									style="min-height: 30px; border: saolid 1px;">

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">Test
											bench:</div>
										<input id="issue_date" name="bench_name" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.bench_name}"/>
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">Part Type:</div>
										<input id="issue_date" name="bench_name" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.part_type}"/>
									</div>
									<div class="form-group" style="margin-bottom: 0px;" id="">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">Issue
											date:</div>
										<input id="issue_date" name="issue_date" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.issue_date}"/>
									</div>

									<div class="form-group"  style="margin-bottom: 0px;" id="dead">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">Deadline:</div>
										<input id="deadline" name="deadline" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.deadline}"/>
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left;white-space: nowrap; width:40%; display: inline-block; color: #606265;">Plan
											work hours:</div>
										<input id="work_hours" name="work_hours" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control"  value="${work_order.work_hours}" />
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width:40%; display: inline-block; color: #606265;">part
											quantity:</div>
										<input id="part_quantity" name="part_quantity" readonly
											style="width:50%; margin-left: 5%; display: inline-block;" class="form-control" value="${work_order.part_quantity}"/>
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div style="height: 38px; text-align: left; white-space: nowrap;width:40%; display: inline-block; color: #606265;">Preferred Operator:</div>
											<input id="part_quantity" name="part_quantity" readonly style="width:50%; margin-left: 5%; display: inline-block;" class="form-control" value="${work_order.preferred_operator}"/>
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width:40%;white-space: nowrap; display: inline-block; color: #606265;">Originator:</div>
											<input id="part_quantity" name="part_quantity" readonly
											style="width:50%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.order_placer}"/>
									</div>
								</div>
								
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
							</div>
							<!-- 1 -->

							<!-- 具体内容区 -->
							
						
							
							<!-- 8 -->
							<div class="row" style="margin-left: 0px; margin-top: 30px;" id="Other">
								
									<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 30px;"></div>
								
								<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10"
									style="min-height: 30px;">
									<div class="form-group"
										style="margin-bottom: 0px; border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">1 Register:</div>
											<input type="checkbox" ${work_order.one==1?'checked':''}  id="inlineCheckbox1"  style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value=""  name="one">
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; border-bottom: solid 1px #d2c3c3;">
											<div style="display: inline-block; width: 30%;">2 Electrical parameter measure:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.two==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="two">
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">AH:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.two_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="two_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Ian/Iab:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.two_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="two_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Rd:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.two_point3==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="two_point3">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Ls:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.two_point4==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="two_point4">
											</div>

										</div>

									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">3 Flushing:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.three==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"value="" name="three">
										</div>
									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">4
												Injector surface clean by paper :</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.four==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="four">
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; ">
											<div style="display: inline-block; width: 30%;">5
												Function test:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.five==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="five"> 
												<span style="margin-left: 5%;">Repat</span>
												<input  name="injector_round"
												style="height: 28px; width: 20%; margin-left: 1%; display: inline-block; padding: 0px 0px;"
												class="form-control"  value="${work_order.injector_round}"/>
												
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap; ">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;">test point:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point1">
													<input  name="injector_round"
												style="height: 28px; width: 20%; margin-left: 5%; display: inline-block; padding: 0px 0px;"
												class="form-control"  value="${work_order.injector_test_point_round}"/>
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;">Injection Rate:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;">Zwick test:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point3==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point3">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;">Mahr test:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point4==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point4">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;">PAKO Cleance test:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point5==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point5">
											</div>
										</div>
										<div
											style="height: 58px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap;">
											<div style="width: 30%; display: inline-block;">
												<div style="display: inline-block; margin-top: 10px;">
													Signal snatch <br />(AH,NH,EMI signal):
												</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point6==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point6">
											</div>
											<div style="width: 35%; display: inline-block;">
												<div style="display: inline-block;">Curve:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point7==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point7"> 
													<input 
													name="injector_num" 
													style="height: 28px; width: 30%; margin-left: 5%; display: inline-block; padding: 0px 0px;"
													class="form-control" value="${work_order.injector_num}"/>
													
				

											</div>
											<div style="width: 35%; display: inline-block;">
												<div style="display: inline-block;">Closing time:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point8==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point8"> 
													<input 
													name="injector_time" 
													style="height: 28px; width: 30%; margin-left: 5%; display: inline-block; padding: 0px 0px;"
													class="form-control" value="${work_order.injector_time}"/>
													
											</div>
										</div>
									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">6 Parts
												exchange:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.six==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="six">
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Nozzle:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.six_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="six_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Magnet:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.six_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="six_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Valve sets:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.six_point3==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="six_point3">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Others:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.six_point4==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="six_point4">
											</div>

										</div>

									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">7
												Injector assembly:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.seven==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="seven">
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">NSF:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.seven_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="seven_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">AH:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.seven_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="seven_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">VSF:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.seven_point3==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="seven_point3">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">NH:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.seven_point4==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="seven_point4">
											</div>
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Limitle sample:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.seven_point5==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="seven_point5">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Others:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.seven_point6==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="seven_point6">
											</div>
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">8
												Disassembly:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.eight==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="eight">
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">9 HPC
												edge filter press out:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.nine==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="nine">
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">10
												Ultrasonic clean:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.ten==1?'checked':''} 
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="ten">
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">11
												Photo make :</div>
											<input type="checkbox" id="inlineCheckbox1"  ${work_order.eleven==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="eleven">
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Sem:</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.eleven_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="eleven_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Hirox:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.eleven_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="eleven_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Lecia:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.eleven_point3==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="eleven_point3">
											</div>
										</div>
									</div>
											
								
								
									</div>
									<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
												style="min-height: 10px;"></div>
										</div>
										
									<div class="row" style="margin-left: 0px;margin-top: 10px; " >
								
									<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height: 10px;"></div>
								
								<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10"
									style="min-height: 10px;">
										<div class="form-group" style="margin-bottom:5px;">
										<div style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">12
												Metallography :</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.twelve==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="twelve">
										</div>
									</div>
									
										<div style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;border-bottom: solid 1px #d2c3c3;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Parts cutting:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.twelve_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="twelve_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Parts polishing:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.twelve_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="twelve_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Parts mounting:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.twelve_point3==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="twelve_point3">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Hardness test:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.twelve_point4==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="twelve_point4">
											</div>
										</div>
									


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">13
												Cross Function Service :</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.thirteen==1?'checked':''} 
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="thirteen">
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Package:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.thirteen_point1==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="thirteen_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Parts deliver:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.thirteen_point2==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="thirteen_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Pick up:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.thirteen_point3==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="thirteen_point3">
											</div>
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Antirust:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.thirteen_point4==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="thirteen_point4">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Mechanic Support:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.thirteen_point5==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="thirteen_point5">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Scrap:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.thirteen_point6==1?'checked':''} 
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="thirteen_point6">
											</div>
										</div>

									</div>


								</div>
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 10px;"></div>
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
										<div id="remark" name="remark"
											style="width: 100%; min-height: 118px; border-radius: 20px; padding-left: 10px; padding-top: 10px;border:solid 1px #d2c3c3;" disabled="disabled" >${work_order.remark}</div>
									</div>
								</div>
							</div>
						</div>	
						<!--建议回显  -->
							<c:if test="${fn:length(evaluationList)>0}">
						
							<div class="row">
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
								<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10 "
									style="margin-top: 10px; margin-bottom: 10px;">
								 <c:forEach items="${evaluationList}" var="evaluationList" >
									<div style="width: 20%; display: inline-block;">
										<div>${evaluationList.evaluation_name}对此kb的建议:</div>
									</div>
									<div style="width: 100%; color: #606265; padding-left: 3%; margin-top: 10px;">
										${evaluationList.evaluation}
									</div>
									</c:forEach>
								</div>
							</div>
						</c:if>	
							
							<!-- 建议回显结束 -->
							
							<!-- 建议开始 -->
						<c:if test="${work_order.status==3}">
							<div class="row">
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
								<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10 "
									style="margin-top: 10px; margin-bottom: 40px;">
									<div style="width: 20%; display: inline-block;">
										<div>对此kb的建议:</div>
									</div>
									<div
										style="height: 118px; width: 100%; color: #606265; padding-left: 3%; margin-top: 10px;">
										<textarea id="evaluation" name="evaluation"
											style="width: 100%; height: 118px; border-radius: 20px; padding-left: 10px; padding-top: 10px;" maxlength="200" placeholder="请输入建议内容，最大200字"></textarea>
									</div>
								</div>
								<div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 "
								style="text-align: center; margin-top: 10px; margin-bottom: 40px;">
								<button type="button" class="btn btn-primary btn-lg"
									style="padding: 11px 122px;" onclick="setinsert_evaluation();" id="confirm">confirm</button>
							</div>
							</div>
						</c:if>	
						<!-- 建议结束 -->	
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
	<script type="text/javascript"  src="js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="js/public.js"></script>
<script>



$(document).ready(function(){  
	  $("input#biuuu_button").click(function(){  
	  
	
	 /*  $.print("#printArea"); */
	 
	  
	  
	  $("#printArea").print({
		    globalStyles:true,//是否包含父文档的样式，默认为true
		    mediaPrint:false,//是否包含media='print'的链接标签。会被globalStyles选项覆盖，默认为false
		    stylesheet:null,//外部样式表的URL地址，默认为null
		   
		    iframe:true,//是否使用一个iframe来替代打印表单的弹出窗口，true为在本页面进行打印，false就是说新开一个页面打印，默认为true
		    append:null,//将内容添加到打印内容的后面
		    prepend:null,//将内容添加到打印内容的前面，可以用来作为要打印内容
		    deferred: $.Deferred()//回调函数
		});
	  }); 
	  
	});  




layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  //常规用法
	  laydate.render({
	    elem: '#test1'
	  });
});	



//日期时间选择器
/* layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  //常规用法
	 var myDate = new Date();
	  laydate.render({
		    elem: '#issue_date'
		    ,type: 'datetime'
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
		    ,type: 'datetime'
		    ,min: "'"+myDate1+"'"
			,max: '2099-12-31'
	});
});	 */
$(document).ready(function(){ 
	four();
});
function setinsert_evaluation(){
	//进行数据的计算
	/* alert($("#kbId").val());
		alert($("#evaluation").val()); */
	 if($("#evaluation").val()==''){
		 layer.msg('输入有误！',{time : 2000,icon :2});	
		 return;
	 }
		
		var flag=true;
	   layer.alert('确认保存？', {
	  skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
	}, function(){  
	   console.log("开始：");
	   if(flag){  
		$.ajax({
			type: "POST",
			url: '<%=basePath%>main/insert_evaluation.do',
	    	data: {
	    		kbId:$("#kbId").val(),
	    		evaluation:$("#evaluation").val(),
	    	},
			dataType:'json',
			cache: false,
			success: function(data){
				if(data.success==1){
					layer.msg('建议成功！',{time : 2000,icon : 1},function(){
						var kb_no=$("#kbId").val();
						 window.location='<%=basePath%>main/orderDeails.do?kb_no='+kb_no;
						/* window.location.reload(); */
					});	
				}else{
					layer.msg('建议失败！',{time : 2000,icon : 2});	
				}
			},
			error: function(data){
				layer.close(load);
				layer.msg('操作失败！',{time : 2000,icon : 2});	
			}
		});
	 }
  });
				 
  }
  


function closeOrder(scheduling_id){
	//进行数据的计算
		
	var flag=true;
 layer.alert('确认关单？', {
skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
}, function(){  
 console.log("开始：");
 if(flag){  
	$.ajax({
		type: "POST",
		url: '<%=basePath%>main/closeOrder.do',
  	data: {
  		id:scheduling_id,
  	},
		dataType:'json',
		cache: false,
		success: function(data){
			if(data.succ==1){
				layer.msg('关单成功！',{time : 2000,icon : 1}
					,function(){
					var kb_no=$("#kbId").val();
					 window.location='<%=basePath%>main/orderDeails.do?kb_no='+kb_no;
					/* window.location.reload(); */
				});	
				
			}else{
				layer.msg('关单失败！',{time : 2000,icon : 2});	
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
/* 删除该订单 */
function deleteOrder(scheduling_id){
	//进行数据的计算
	  var flag=true;
			layer.alert('确认修改？', {
			  skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
			}, function(){  
			   console.log("开始：");
			   if(flag){
					flag=false;
					var load = layer.load(1, {shade: [0.1,'#fff']});
					$.ajax({
						type: "POST",
						url: '<%=basePath%>main/delete_Order.do',
				    	data: {
				    		id:scheduling_id,
				    	},
						dataType:'json',
						cache: false,
						success: function(data){
							layer.close(load);
							if(data.succ==1){
								layer.msg('删除成功！',{time : 2000,icon : 1},function(){
									var kb_no=$("#kbId").val();
									 window.location='<%=basePath%>main/orderDeails.do?kb_no='+kb_no;
									/* window.location.reload(); */
								});	
							}else{
								layer.msg('删除失败！',{time : 2000,icon : 2},function(){
									var kb_no=$("#kbId").val();
									 window.location='<%=basePath%>main/orderDeails.do?kb_no='+kb_no;
								});
							}
						},
						error: function(data){
							layer.close(load);
							layer.msg('查询失败！',{time : 1000,icon : 2});	
						}
					});
			   }
		});

}

		
</script>
</html>