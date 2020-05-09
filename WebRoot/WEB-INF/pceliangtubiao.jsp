<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Test Results List</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="/EPD/layui/css/layui.css" media="all">
<link rel="stylesheet" href="/EPD/f/iconfont.css" media="all">
<script src="/EPD/js/jquery-1.11.2.min.js"></script>
<script src="/EPD/f/iconfont.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<style type="text/css">
#main {
	margin-left: 15%
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
.in {
	background: -moz-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #eceff2),
		color-stop(50%, #eff2f4), color-stop(100%, #f9fafb));
	background: -webkit-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	background: -o-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	background: -ms-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	border-radius: 5px;
	width: 19%;
	height: 3vh;
}
/*
table tr td{
border: 1px solid;
}
*/
</style>
</head>
<body>
	<%@ include file="left.jsp"%> 
	<%@ include file="top.jsp"%>
	
	<!-- 主体内容 -->
      <div id="main">
        <!-- 蓝条  style="-webkit-appearance: none;"-->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Test results list</div></div>
    	<form  method="post" id="ff">
		<div style="margin-left:6%;margin-top: 32px" >
				<select class="in" style="height: 33px;width:8.5%" name="test_bench"> 
				<option value="CI4000 F1">CI4000 F1</option>
				<option value="CI4000 F2">CI4000 F2</option>
				<option value="CI4000 F3">CI4000 F3</option>
				<option value="CI4000 F4">CI4000 F4</option>
				<option value="ESS F6">ESS F6</option>
				<option value="CI4000-RAK F7">CI4000-RAK F7</option>
				<option value="ESS F8(NEW)">ESS F8(NEW)</option>
				<option value="Large engine F9">Large engine F9</option>
				<option value="Nozzle flow rate">Nozzle flow rate</option>
				<option value="Nozzle Pdoe">Nozzle Pdoe</option>
				</select>
				<select  class="in" name="selectt" style="height: 33px;margin-left: 17px;width:8.5%">
				<option value="CRIN25L/C">CRIN25L/C</option>
				<option value="CRIN3-20/18">CRIN3-20/18</option>
				<option value="CRIN2-16">CRIN2-16</option>
				<option value="CRI2-20/18">CRI2-20/18</option>
				<option value="CRI2-16">CRI2-16</option>
				<option value="CRI1-20/18/16">CRI1-20/18/16</option>
				<option value="PLV">PLV</option>
				<option value="PCV">PCV</option>
				<option value="Flow rate">Flow rate</option>
				<option value="Open Pressure">Open Pressure</option>
				</select>
				<select  class="in" name="test_point" style="height: 33px;margin-left: 17px;width:8.5%">
				<option value="1">TP1</option>
				<option value="2">TP2</option>
				<option value="3">TP3</option>
				<option value="4">TP4</option>
				<option value="5">TP5</option>
				<option value="6">TP6</option>
				<option value="7">TP7</option>
				<option value="8">TP8</option>
				<option value="9">BF1</option>
				</select>
		<input id="se" type="button" value="Search" style="width: 125px;border-radius:30px;height: 33px;margin-left: 14px" >
		</div>
    	</form>
    	<br><br><br>
    	<div style="overflow: auto; width: 90%;margin-left: 5%;">
    	<table id="ta" style="font-size: 16px;color:#97a1ae;font-family: '微软雅黑';text-align: center;">
    	</table>
    	</div>
    	<div id="main1" style="width:100%;height:655%;"></div>
	</div>
</body>
<script src="/EPD/js/echarts.js"></script>
<script type="text/javascript">
			$("#se")
			.click(
					function() {
						var myChart = echarts.init(document
								.getElementById('main1'));
							myChart.showLoading();
			$.ajax({
						type : "post",
						async : true, //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
						url : "/EPD/celiangjieguo/findCeliangtubiao.do", //请求发送到TestServlet处
						data : $("#ff").serialize(),
						dataType : "json", //返回数据形式为json
						success : function(res) {
							var celiangtubiaos=res["celiangtubiaos"];
							var celiangjieguos1=res["celiangjieguos1"];
							var celiangjieguos2=res["celiangjieguos2"];
							var celiangjieguos3=res["celiangjieguos3"];
							var celiangjieguos4=res["celiangjieguos4"];
							var test_point=res["test_point"];
							var th =[];
							var tl =[];
							var Moffset =[];
							var X_quer =[];
							var names = []; //类别数组（实际用来盛放X轴坐标值）
							//alert(test_point);
							$(".mytr").remove();
							if(test_point==1){
							var trstr='<tr class="mytr" style="background-color: #cfe1ec;" height="40px"><td>Date</td>';
			                $.each(celiangtubiaos,function(index,obj){
			                	trstr+='<td >'+obj.avgcejieshijian+"&nbsp;&nbsp;&nbsp;&nbsp;"+'</td>';
			                });
			                	trstr+='</tr><tr class="mytr" height="40px" ><td>Injector No.</td></tr><tr height="40px" class="mytr" style="background-color: #cfe1ec"><td>Nr.1</td>';
			                	 $.each(celiangjieguos1,function(index,obj){
					                	trstr+='<td>'+parseFloat(obj.test_point1).toFixed(2)+'</td>';
					                });
			                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.2</td>';
			                	 $.each(celiangjieguos2,function(index,obj){
					                	trstr+='<td>'+parseFloat(obj.test_point1).toFixed(2)+'</td>';
					                });
			                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color: #cfe1ec"><td>Nr.3</td>';
			                	 $.each(celiangjieguos3,function(index,obj){
					                	trstr+='<td>'+parseFloat(obj.test_point1).toFixed(2)+'</td>';
					                });
			                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.4</td>';
			                	 $.each(celiangjieguos4,function(index,obj){
					                	trstr+='<td>'+parseFloat(obj.test_point1).toFixed(2)+'</td>';
					                });
			                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#cfe1ec"><td>ESS</td>';
			                	 $.each(celiangtubiaos,function(index,obj){
					                	trstr+='<td>'+obj.point1_ESS+'</td>';
					                });
			                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#7FFFD4"><td>X quer</td>';
			                	 $.each(celiangtubiaos,function(index,obj){
					                	trstr+='<td>'+obj.avgtest_point1+'</td>';
					                });
			                	$("#ta").append(trstr);
			                	for (var i = 0; i <celiangtubiaos.length; i++) {
									names.push(celiangtubiaos[i].avgcejieshijian); //挨个取出类别并填入类别数组
									tl.push(celiangtubiaos[i].point1_TL);
									th.push(celiangtubiaos[i].point1_TH);
									Moffset.push(celiangtubiaos[i].point1_Normal-celiangtubiaos[i].point1_ESS);
									X_quer.push(celiangtubiaos[i].avgtest_point1);
								}
							}else if(test_point==2){
								var trstr='<tr class="mytr" style="background-color: #cfe1ec;" height="40px"><td>Date</td>';
				                $.each(celiangtubiaos,function(index,obj){
				                	trstr+='<td >'+obj.avgcejieshijian+"&nbsp;&nbsp;&nbsp;&nbsp;"+'</td>';
				                });
				                	trstr+='</tr><tr class="mytr" height="40px" ><td>Injector No.</td></tr><tr height="40px" class="mytr" style="background-color: #cfe1ec"><td>Nr.1</td>';
				                	 $.each(celiangjieguos1,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point2).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.2</td>';
				                	 $.each(celiangjieguos2,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point2).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color: #cfe1ec"><td>Nr.3</td>';
				                	 $.each(celiangjieguos3,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point2).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.4</td>';
				                	 $.each(celiangjieguos4,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point2).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#cfe1ec"><td>ESS</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.point2_ESS+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#7FFFD4"><td>X quer</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.avgtest_point2+'</td>';
						                });
				                	$("#ta").append(trstr);
				                	for (var i = 0; i <celiangtubiaos.length; i++) {
										names.push(celiangtubiaos[i].avgcejieshijian); //挨个取出类别并填入类别数组
										tl.push(celiangtubiaos[i].point2_TL);
										th.push(celiangtubiaos[i].point2_TH);
										Moffset.push(celiangtubiaos[i].point2_Normal-celiangtubiaos[i].point2_ESS);
										X_quer.push(celiangtubiaos[i].avgtest_point2);
									}
							}else if(test_point==3){
								var trstr='<tr class="mytr" style="background-color: #cfe1ec;" height="40px"><td>Date</td>';
				                $.each(celiangtubiaos,function(index,obj){
				                	trstr+='<td >'+obj.avgcejieshijian+"&nbsp;&nbsp;&nbsp;&nbsp;"+'</td>';
				                });
				                	trstr+='</tr><tr class="mytr" height="40px" ><td>Injector No.</td></tr><tr height="40px" class="mytr" style="background-color: #cfe1ec"><td>Nr.1</td>';
				                	 $.each(celiangjieguos1,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point3).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.2</td>';
				                	 $.each(celiangjieguos2,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point3).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color: #cfe1ec"><td>Nr.3</td>';
				                	 $.each(celiangjieguos3,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point3).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.4</td>';
				                	 $.each(celiangjieguos4,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point3).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#cfe1ec"><td>ESS</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.point3_ESS+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#7FFFD4"><td>X quer</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.avgtest_point3+'</td>';
						                });
				                	$("#ta").append(trstr);
				                	for (var i = 0; i <celiangtubiaos.length; i++) {
										names.push(celiangtubiaos[i].avgcejieshijian); //挨个取出类别并填入类别数组
										tl.push(celiangtubiaos[i].point3_TL);
										th.push(celiangtubiaos[i].point3_TH);
										Moffset.push(celiangtubiaos[i].point3_Normal-celiangtubiaos[i].point3_ESS);
										X_quer.push(celiangtubiaos[i].avgtest_point3);
									}
							}else if(test_point==4){
								var trstr='<tr class="mytr" style="background-color: #cfe1ec;" height="40px"><td>Date</td>';
				                $.each(celiangtubiaos,function(index,obj){
				                	trstr+='<td >'+obj.avgcejieshijian+"&nbsp;&nbsp;&nbsp;&nbsp;"+'</td>';
				                });
				                	trstr+='</tr><tr class="mytr" height="40px" ><td>Injector No.</td></tr><tr height="40px" class="mytr" style="background-color: #cfe1ec"><td>Nr.1</td>';
				                	 $.each(celiangjieguos1,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point4).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.2</td>';
				                	 $.each(celiangjieguos2,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point4).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color: #cfe1ec"><td>Nr.3</td>';
				                	 $.each(celiangjieguos3,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point4).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.4</td>';
				                	 $.each(celiangjieguos4,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point4).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#cfe1ec"><td>ESS</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.point4_ESS+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#7FFFD4"><td>X quer</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.avgtest_point4+'</td>';
						                });
				                	$("#ta").append(trstr);
				                	for (var i = 0; i <celiangtubiaos.length; i++) {
										names.push(celiangtubiaos[i].avgcejieshijian); //挨个取出类别并填入类别数组
										tl.push(celiangtubiaos[i].point4_TL);
										th.push(celiangtubiaos[i].point4_TH);
										Moffset.push(celiangtubiaos[i].point4_Normal-celiangtubiaos[i].point4_ESS);
										X_quer.push(celiangtubiaos[i].avgtest_point4);
									}
							}else if(test_point==5){
								var trstr='<tr class="mytr" style="background-color: #cfe1ec;" height="40px"><td>Date</td>';
				                $.each(celiangtubiaos,function(index,obj){
				                	trstr+='<td >'+obj.avgcejieshijian+"&nbsp;&nbsp;&nbsp;&nbsp;"+'</td>';
				                });
				                	trstr+='</tr><tr class="mytr" height="40px" ><td>Injector No.</td></tr><tr height="40px" class="mytr" style="background-color: #cfe1ec"><td>Nr.1</td>';
				                	 $.each(celiangjieguos1,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point5).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.2</td>';
				                	 $.each(celiangjieguos2,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point5).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color: #cfe1ec"><td>Nr.3</td>';
				                	 $.each(celiangjieguos3,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point5).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.4</td>';
				                	 $.each(celiangjieguos4,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point5).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#cfe1ec"><td>ESS</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.point5_ESS+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#7FFFD4"><td>X quer</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.avgtest_point5+'</td>';
						                });
				                	$("#ta").append(trstr);
				                	for (var i = 0; i <celiangtubiaos.length; i++) {
										names.push(celiangtubiaos[i].avgcejieshijian); //挨个取出类别并填入类别数组
										tl.push(celiangtubiaos[i].point5_TL);
										th.push(celiangtubiaos[i].point5_TH);
										Moffset.push(celiangtubiaos[i].point5_Normal-celiangtubiaos[i].point5_ESS);
										X_quer.push(celiangtubiaos[i].avgtest_point5);
									}
							}else if(test_point==6){
								var trstr='<tr class="mytr" style="background-color: #cfe1ec;" height="40px"><td>Date</td>';
				                $.each(celiangtubiaos,function(index,obj){
				                	trstr+='<td >'+obj.avgcejieshijian+"&nbsp;&nbsp;&nbsp;&nbsp;"+'</td>';
				                });
				                	trstr+='</tr><tr class="mytr" height="40px" ><td>Injector No.</td></tr><tr height="40px" class="mytr" style="background-color: #cfe1ec"><td>Nr.1</td>';
				                	 $.each(celiangjieguos1,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point6).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.2</td>';
				                	 $.each(celiangjieguos2,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point6).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color: #cfe1ec"><td>Nr.3</td>';
				                	 $.each(celiangjieguos3,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point6).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.4</td>';
				                	 $.each(celiangjieguos4,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point6).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#cfe1ec"><td>ESS</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.point6_ESS+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#7FFFD4"><td>X quer</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.avgtest_point6+'</td>';
						                });
				                	$("#ta").append(trstr);
				                	for (var i = 0; i <celiangtubiaos.length; i++) {
										names.push(celiangtubiaos[i].avgcejieshijian); //挨个取出类别并填入类别数组
										tl.push(celiangtubiaos[i].point6_TL);
										th.push(celiangtubiaos[i].point6_TH);
										Moffset.push(celiangtubiaos[i].point6_Normal-celiangtubiaos[i].point6_ESS);
										X_quer.push(celiangtubiaos[i].avgtest_point6);
									}
							}else if(test_point==7){
								var trstr='<tr class="mytr" style="background-color: #cfe1ec;" height="40px"><td>Date</td>';
				                $.each(celiangtubiaos,function(index,obj){
				                	trstr+='<td >'+obj.avgcejieshijian+"&nbsp;&nbsp;&nbsp;&nbsp;"+'</td>';
				                });
				                	trstr+='</tr><tr class="mytr" height="40px" ><td>Injector No.</td></tr><tr height="40px" class="mytr" style="background-color: #cfe1ec"><td>Nr.1</td>';
				                	 $.each(celiangjieguos1,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point7).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.2</td>';
				                	 $.each(celiangjieguos2,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point7).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color: #cfe1ec"><td>Nr.3</td>';
				                	 $.each(celiangjieguos3,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point7).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.4</td>';
				                	 $.each(celiangjieguos4,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point7).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#cfe1ec"><td>ESS</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.point7_ESS+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#7FFFD4"><td>X quer</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.avgtest_point7+'</td>';
						                });
				                	$("#ta").append(trstr);
				                	for (var i = 0; i <celiangtubiaos.length; i++) {
										names.push(celiangtubiaos[i].avgcejieshijian); //挨个取出类别并填入类别数组
										tl.push(celiangtubiaos[i].point7_TL);
										th.push(celiangtubiaos[i].point7_TH);
										Moffset.push(celiangtubiaos[i].point7_Normal-celiangtubiaos[i].point7_ESS);
										X_quer.push(celiangtubiaos[i].avgtest_point7);
									}
							}else if(test_point==8){
								var trstr='<tr class="mytr" style="background-color: #cfe1ec;" height="40px"><td>Date</td>';
				                $.each(celiangtubiaos,function(index,obj){
				                	trstr+='<td >'+obj.avgcejieshijian+"&nbsp;&nbsp;&nbsp;&nbsp;"+'</td>';
				                });
				                	trstr+='</tr><tr class="mytr" height="40px" ><td>Injector No.</td></tr><tr height="40px" class="mytr" style="background-color: #cfe1ec"><td>Nr.1</td>';
				                	 $.each(celiangjieguos1,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point8).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.2</td>';
				                	 $.each(celiangjieguos2,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point8).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color: #cfe1ec"><td>Nr.3</td>';
				                	 $.each(celiangjieguos3,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point8).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.4</td>';
				                	 $.each(celiangjieguos4,function(index,obj){
						                	trstr+='<td>'+parseFloat(obj.test_point8).toFixed(2)+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#cfe1ec"><td>ESS</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.point8_ESS+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#8FFFD4"><td>X quer</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.avgtest_point8+'</td>';
						                });
				                	$("#ta").append(trstr);
				                	for (var i = 0; i <celiangtubiaos.length; i++) {
										names.push(celiangtubiaos[i].avgcejieshijian); //挨个取出类别并填入类别数组
										tl.push(celiangtubiaos[i].point8_TL);
										th.push(celiangtubiaos[i].point8_TH);
										Moffset.push(celiangtubiaos[i].point8_Normal-celiangtubiaos[i].point8_ESS);
										X_quer.push(celiangtubiaos[i].avgtest_point8);
									}
							}else{
								var trstr='<tr class="mytr" style="background-color: #cfe1ec;" height="40px"><td>Date</td>';
				                $.each(celiangtubiaos,function(index,obj){
				                	trstr+='<td >'+obj.avgcejieshijian+"&nbsp;&nbsp;&nbsp;&nbsp;"+'</td>';
				                });
				                	trstr+='</tr><tr class="mytr" height="40px" ><td>Injector No.</td></tr><tr height="40px" class="mytr" style="background-color: #cfe1ec"><td>Nr.1</td>';
				                	 $.each(celiangjieguos1,function(index,obj){
						                	trstr+='<td>'+obj.oil_point+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.2</td>';
				                	 $.each(celiangjieguos2,function(index,obj){
						                	trstr+='<td>'+obj.oil_point+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color: #cfe1ec"><td>Nr.3</td>';
				                	 $.each(celiangjieguos3,function(index,obj){
						                	trstr+='<td>'+obj.oil_point+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px"><td>Nr.4</td>';
				                	 $.each(celiangjieguos4,function(index,obj){
						                	trstr+='<td>'+obj.oil_point+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#cfe1ec"><td>ESS</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.oil_ESS+'</td>';
						                });
				                	 trstr+='</tr><tr class="mytr" height="40px" style="background-color:#7FFFD4"><td>X quer</td>';
				                	 $.each(celiangtubiaos,function(index,obj){
						                	trstr+='<td>'+obj.avgoil_point+'</td>';
						                });
				                	$("#ta").append(trstr);
				                	for (var i = 0; i <celiangtubiaos.length; i++) {
										names.push(celiangtubiaos[i].avgcejieshijian); //挨个取出类别并填入类别数组
										tl.push(celiangtubiaos[i].oil_TL);
										th.push(celiangtubiaos[i].oil_TH);
										Moffset.push(celiangtubiaos[i].oil_Normal-celiangtubiaos[i].oil_ESS);
										X_quer.push(celiangtubiaos[i].avgoil_point);
									}
							}
							//==================================================
							

myChart.hideLoading();
							myChart
									.setOption({
										title : {
											//text : '喷油器温度变化曲线'
										},
										tooltip : {
											trigger : 'axis'
										},
										legend : {
												left:'center',
												width:'78%',
											//selected:false,
											data : ['TH','Moffset','TL','X_quer']
										},
										dataZoom:[
										           {
										               type: 'slider',
										               show: true,
										               xAxisIndex: [0],
										              start: 0,
										              end: 100
										           },
										           {
										               type: 'slider',
										               show: true,
										               yAxisIndex: [0],
										               left: '',
										               start:0,
										               end: 100
										           },
										       ],
										//加载数据图表
										xAxis : {
											name:'Date',
											type : 'category',
											data : names
										},
										//选取范围
										yAxis : [ {
											type : 'value',
											max: function(value) {
    											return value.max+1;
											},
											min: function(value) {
    											return value.min-1;
											},
				            	        	//maxInterval:1,//分割间隔
				            	        	splitNumber:20,//分割条数
				            	        	//minInterval:0.05,//间隔数
				            	        	//name:'温度/℃',
										} ],
										series : [
										          {
									        		  name:'TL',
											          type:'line',
											          data:tl,
											          step: 'start',
											          itemStyle:{
											        	  color:'#ff0000'
											          },
											        	  lineStyle:{
											        		  normal:{
											        			  width:3
											        		  }
										        	  }
									          },
										          {
									        		  name:'Moffset',
											          type:'line',
											          data:Moffset,
											          step: 'start',
											          itemStyle:{
											        	  color:'#002cdb'
											          },
											        	  lineStyle:{
											        		  normal:{
											        			  width:3
											        		  }
											        	  }
									          },
									          {
								        		  name:'X_quer',
										          type:'line',
										          data:X_quer,
										         itemStyle:{
										        	  color:'#00baff'
										          }
								          },
								          {
									          name:'TH',
									          type:'line',
									          data:th,
									          step: 'start',
									          itemStyle:{
									        	  color:'#ff0000'
									          },
									        	  lineStyle:{
									        		  normal:{
									        			  width:3
									        		  }
									        	  }
									        	  
									        	}  
										          ]
										});
						},
						error : function() {
							//请求失败时执行该函数
							alert("图表请求数据失败!");
							var se1 = document.getElementById("sese1");//获取目标Id
							se1.style.display = "inline";
							var ww = document.getElementById("ww");//获取目标Id
							ww.style.display = "none";
							myChart.hideLoading();
						}
					});
		});
	</script>
<script type="text/javascript">
	function tanchuang1(){
		window.location.href="/EPD/celiangjieguoadd.do";
	}
</script>
<script>
//注意：折叠面板 依赖 element 模块，否则无法进行功能性操作

layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
<script type="text/javascript">
        //select跳页
        function s_click(obj) {
            var num = 0;
            for (var i = 0; i < obj.options.length;i++) {
                if (obj.options[i].selected == true) {
                    num++;
            	}
            }
            if (num == 1) {
                var url = obj.options[obj.selectedIndex].value;
               // window.open(url); //这里修改打开连接方式
                window.location.href=url;
            }
        }
        $(document).ready(function(){ 
    		five();
    	});
    </script>
    <style type="text/css">
    	#ta tr td{
    	width: 220px;
    	}
    </style>
</html>