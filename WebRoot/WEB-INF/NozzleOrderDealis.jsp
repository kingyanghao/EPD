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
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content"
						style="min-height: 750px; border: solid white;">
						<div class="right-content"
						style="min-height: 750px; border: solid white;">
						<div class="right-content"
						style="min-height: 750px; border: solid white;" >
						<div class="pull-right" >
							<button class="btn btn-default btn-sm active"
								data-toggle='batch-remove'
								style="border-radius: 5px; font-size: 14px; width: 130px;"
								onclick="delete_Order();">delete</button>
						</div>


						<form class="form-horizontal" id="formId">
							<input readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" type="hidden" value="${work_order.orderid}" id="orderid"/>
							<div class="row"
								style="margin-left: 0px; margin-right: 0px; margin-top: 60px;">
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
								<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5"
									style="min-height: 30px;">
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Select:</div>
										<input readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.type}" />

									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Part No:</div>
										<input readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.part_no}" />
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">VA
											No:</div>
										<input readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.va_no}" />
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">KB
											No:</div>
										<input readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.kb_no}" id="kb_no"/>
									</div>

									<div class="form-group" style="margin-bottom: 0px;" id="bm">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">SAP
											No:</div>
										<input id="sap_no" name="sap_no" readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.sap_no}"/>
									</div>
									
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Work
											Center:</div>
										<input id="work_center" name="work_center" readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.work_center}"/>
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Customer/Project:</div>
										<input id="customer_project" name="customer_project" readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.customer_project}"/>
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%;white-space: nowrap; display: inline-block; color: #606265;">Originator:</div>
											<input id="part_quantity" name="part_quantity" readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.order_placer}"/>
									</div>

								</div>
								<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5"
									style="min-height: 30px; border: saolid 1px;">

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Test
											bench:</div>
										<input id="issue_date" name="bench_name" readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.bench_name}"/>
									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Part Type:</div>
										<input id="issue_date" name="bench_name" readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.part_type}"/>
									</div>
									<div class="form-group" style="margin-bottom: 0px;" id="">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">Issue
											date:</div>
										<input id="issue_date" name="issue_date" readonly
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
											style="height: 38px; text-align: left;  white-space: nowrap;width: 30%; display: inline-block; color: #606265;">Plan
											work hours:</div>
										<input id="work_hours" name="work_hours" readonly
											style="width: 60%; margin-left: 5%;display: inline-block;"
											class="form-control"  value="${work_order.work_hours}" />
									</div>

									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; width: 30%; display: inline-block; color: #606265;">part
											quantity:</div>
										<input id="part_quantity" name="part_quantity" readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.part_quantity}"/>


									</div>
									<div class="form-group" style="margin-bottom: 0px;">
										<div
											style="height: 38px; text-align: left; white-space: nowrap;width: 30%; display: inline-block; color: #606265;">Preferred
											Operator:</div>
											<input id="part_quantity" name="part_quantity" readonly
											style="width: 60%; margin-left: 5%; display: inline-block;"
											class="form-control" value="${work_order.preferred_operator}"/>
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
											<input type="checkbox" id="inlineCheckbox1"  ${work_order.one==1?'checked':''} disabled="disabled"
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="one">
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">2
												Measure on handpump:</div>
											<input type="checkbox" id="inlineCheckbox1"  ${work_order.two==1?'checked':''} disabled="disabled"
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="two">
										</div>
										

									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">3
												Measure on open pressure test bench:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.three==1?'checked':''} disabled="disabled"
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="three">
										</div>
									</div>


									

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; ">
											<div style="display: inline-block; width: 30%;">4
												Standard picture:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.four==1?'checked':''} disabled="disabled"
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="four"> 
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap; ">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">All :</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.four_point1==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="four_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">KS:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.four_point2==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="four_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">NS:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.four_point3==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="four_point3">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">DS:</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.four_point4==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="four_point4">
											</div>
											
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%; white-space: nowrap;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block; margin-top: 10px;width: 70%;">
													KF:
												</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.four_point5==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="four_point5">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">NF:</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.four_point6==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="four_point6"> 


											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Inj:</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.four_point7==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="four_point7">
											</div>
										</div>
									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">5 Qhydr. Nozzle 100bar unclean:</div>
											<input type="checkbox" id="inlineCheckbox1"  ${work_order.five==1?'checked':''} disabled="disabled"
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="five">
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Wi100/60:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point1==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">Wi100:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point2==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point2">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">W/O100/60:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point3==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point3">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">W/O100:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.five_point4==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="five_point4">
											</div>

										</div>

									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">6
												Deliver the part to QMM for SEM:</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.six==1?'checked':''} disabled="disabled"
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="six">
										</div>
										
							
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">7
												PAKO(ultransonic clean):</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.seven==1?'checked':''} disabled="disabled"
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="seven">
										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">8 Mahr Body seat(unclean):</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.eight==1?'checked':''} disabled="disabled"
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="eight">
										</div>
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">1X120°:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.eight_point1==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="eight_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">3X120°:</div>
												<input type="checkbox" id="inlineCheckbox1"  ${work_order.eight_point2==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="eight_point2">
											</div>
											

										</div>
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">9
												Mahr Needle seat(unclean):</div>
											<input type="checkbox" id="inlineCheckbox1"  ${work_order.nine==1?'checked':''} disabled="disabled"
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="nine">
										</div>
										
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">1X120° :</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.nine_point1==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="nine_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">3X120°:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.nine_point2==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="nine_point2">
											</div>
											

										</div>
										
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">10
												Mahr Body seat(clean):</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.ten==1?'checked':''} disabled="disabled"
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="ten">
										</div>
										
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">1X120° :</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.ten_point1==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="ten_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">3X120°:</div> 
												<input type="checkbox" id="inlineCheckbox1" ${work_order.ten_point2==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="ten_point2">
											</div>
											

										</div>
										
									</div>
									
									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">11
												Mahr Needle seat(clean):</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.eleven==1?'checked':''} disabled="disabled"
												style="visibility: hidden;height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="eleven">
										</div>
										
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265; padding-left: 3%;">
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">1X120° :</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.eleven_point1==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="eleven_point1">
											</div>
											<div style="width: 20%; display: inline-block;">
												<div style="display: inline-block;width: 70%;">3X120°:</div>
												<input type="checkbox" id="inlineCheckbox1" ${work_order.eleven_point2==1?'checked':''} disabled="disabled"
													style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
													value="" name="eleven_point2">
											</div>
											

										</div>
										
									</div>
									
									

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 31%;">12
												Nozzle Protrusion/Neddle lift(ultransonic clean):</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.twelve==1?'checked':''} disabled="disabled"
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 0px;"
												value="" name="twelve">
										</div>
										
									</div>

									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">13
												Nozzle body seat angle :</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.thirteen==1?'checked':''} disabled="disabled"
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="thirteen">
										</div>
										
									</div>


									<div class="form-group" style="border-bottom: solid 1px #d2c3c3;">
										<div
											style="height: 38px; width: 100%; display: inline-block; color: #606265;">
											<div style="display: inline-block; width: 30%;">14
												Hardness test :</div>
											<input type="checkbox" id="inlineCheckbox1" ${work_order.fourteen==1?'checked':''} disabled="disabled"
												style="height: 18px; width: 18px; position: relative; top: 3px; left: 10px;"
												value="" name="fourteen">
										</div>
									</div>
								</div>
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
							
						
							</div>
							<div id="nozzleList" style="display: none;">${nozzleList}</div>
						<div class="row">
								<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1"
									style="min-height: 30px;"></div>
								<div class="col-md-11 col-lg-11 col-xl-11 col-sm-11 "
									style="margin-bottom: 10px;">
								
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
										style="min-height: 118px; width: 100%; color: #606265; padding-left: 3%; margin-top: 10px;">
										<div id="remark" name="remark"
											style="width: 100%; min-height: 118px; border-radius: 20px; padding-left: 10px; padding-top: 10px;border:solid 1px #d2c3c3;" disabled="disabled" >${work_order.remark}</div>
									</div>
								</div>
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
	<script type="text/javascript"  src="js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="js/public.js"></script>
<script>

	$(document).ready(function(){ 
		four();
		title();
	});
	
	/* 标题的样式 */
	function title(){
		var nozzleList=$("#nozzleList").html(); 
	
		var html4=[];
    	 html4.push(' <div style=" width: 100%; color: #606265; padding-left: 3%;" id="titleId">');
    	 html4.push(' <div style=" width: 100%;font-size:90%; " >');
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
    	 html4.push('</div></div>');
    	 $("#listId").html(html4.join(''));
    	 var jsonObj =  JSON.parse(nozzleList);//转换为json对象
    	 
    	 if(jsonObj.length>0){
    		 for(var i=0;i<jsonObj.length;i++){
    		  var add=[];
    		  add.push('<div style=" width: 100%;font-size:90%; " id="del'+i+'">');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;"  type="text"  max="150" readonly value="'+jsonObj[i].number+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;" type="text"  max="150"  readonly value="'+jsonObj[i].cylinder_no+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;"><input style="width:100%;border:none;" type="text"  max="150"  readonly value="'+jsonObj[i].ingector_no+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" readonly value="'+jsonObj[i].injector_type+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" readonly value="'+jsonObj[i].nozzle_no+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" readonly value="'+jsonObj[i].nozzle_type+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" readonly  value="'+jsonObj[i].md+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" readonly value="'+jsonObj[i].mf+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" readonly value="'+jsonObj[i].work_time+'"/></div>');
   			  add.push('<div style="display:inline-block;width:9%;border:solid 1px;text-align: center;" ><input style="width:100%;border:none;" type="text"  max="150" readonly value="'+jsonObj[i].remark+'" /></div>');
   			
   			  add.push('</div>');
   			  $("#titleId").append(add.join('')); 
    		 }
    	 }
    	 
	}
	
	
	
	 
	  //删除订单
	  function delete_Order(){
		 /*  alert($("#orderid").val());
		  alert( $("#kb_no").val()); */
			var flag=true;
			 layer.alert('确认删除？', {
			skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
			}, function(){  
			 console.log("开始：");
			 if(flag){  
				$.ajax({
					type: "POST",
					url: '<%=basePath%>main/deleteOrder.do',
			  	data: {
			  		orderid:$("#orderid").val(),
			  		kb_no:$("#kb_no").val()
			  	},
					dataType:'json',
					cache: false,
					success: function(data){
						if(data.succ==1){
							layer.msg('删除成功！',{time : 2000,icon : 1});	
							window.location='<%=basePath%>main/modifyOrder.do';
						}else if(data.succ==-1){
							layer.msg('删除失败！',{time : 2000,icon : 2});	
						}else if(data.role==-1){
							layer.msg('权限不足！',{time : 2000,icon : 2});	
						}else if(data.role==-2){
							layer.msg('权限不足！',{time : 2000,icon : 2});	
						}else if(data.role==-3){
							layer.msg('订单异常，请刷新页面！',{time : 2000,icon : 2});	
							window.location='<%=basePath%>main/modifyOrder.do';
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
	 
		
</script>
</html>