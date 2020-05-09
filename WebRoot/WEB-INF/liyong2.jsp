<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Utilzation</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="/EPD/layui/css/layui.css" media="all">
<link rel="stylesheet" href="/EPD/f/iconfont.css" media="all">
<script src="/EPD/js/jquery-1.11.2.min.js"></script>
<script src="/EPD/f/iconfont.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<style type="text/css">
#main {
	margin-left: 15%
}

#lantiao {
	width: 100%;
	height: 5vh;
	background-color: #3564ba;
	margin-top: 8vh;
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
/*
table tr td{
border: 1px solid;
}
*/
input[type="checkbox"]+label::before {
	content: "\a0"; /*不换行空格*/
	display: inline-block;
	vertical-align: middle;
	width: 1vw;
	height: 1vw;
	margin-right: .5vw;
	border-radius: .2em;
	background-color: silver;
	text-indent: .15vw;
	line-height: 1vw;
	/*行高不加单位，子元素将继承数字乘以自身字体尺寸而非父元素行高*/
}

input[type="checkbox"]:checked+label::before {
	content: "\2713";
	background-color: yellowgreen;
	color: white;
}

input[type="checkbox"] {
	position: absolute;
	clip: rect(0, 0, 0, 0);
}

label {
	font-size: 0.69vw
}
</style>
</head>
<body>
	<%@ include file="left.jsp"%>
	<%@ include file="top.jsp"%>

	<!-- 主体内容 -->
	<div id="main">
		<!-- 蓝条  style="-webkit-appearance: none;"-->
		<div id="lantiao"
			style="display: flex;flex-direction:column;justify-content:center">
			<div style="color: white;font-size:1.2vw;margin-left:2%;">Utilzation</div>
		</div>
		<br>
		<!-- 搜索框 -->
		<form method="post">
			<input id="t" 
				style="width:20%;height: 3.2vh;margin-left: 2%;border: 2px solid #919aa7;border-radius:10px;" value="请选择台架">

			<input name="test1" type="text" id="test1"
				style="width:20%;height: 3.2vh;margin-left: 2%;border: 2px solid #919aa7;border-radius: 10px;">
			<input onclick="tubiao();" type="button"
				style="width:6%;height: 3.2vh;margin-left: 2%;border: 2px solid #919aa7;border-radius: 20px"
				value="Search">
			<div id="x"
				style="width:20%;height:160px;border-radius:0px 0px 20px 20px;border:2px solid #919aa7;margin-left: 2%;border-top:0px;display: none;">
				<div style="margin-left: 5%;">
					<div style="display: inline-block;width: 40%;margin-top: 10px">
						<input type="checkbox" id="awesome1" checked="checked" name="tai"
							value="CI4000 F1" /> <label for="awesome1">CI4000 F1</label>
					</div>
					<div style="display: inline-block;width: 40%">
						<input type="checkbox" id="awesome2" checked="checked" name="tai"
							value="CI4000 F2" /> <label for="awesome2">CI4000 F2</label>
					</div>
				</div>
				<div style="margin-left: 5%;margin-top: 10px">
					<div style="display: inline-block;width: 40%">
						<input type="checkbox" id="awesome3" checked="checked" name="tai"
							value="CI4000 F3" /> <label for="awesome3">CI4000 F3</label>
					</div>
					<div style="display: inline-block;width: 40%">
						<input type="checkbox" id="awesome4" checked="checked" name="tai"
							value="CI4000 F4" /> <label for="awesome4">CI4000 F4</label>
					</div>
				</div>
				<div style="margin-left: 5%;margin-top: 10px">
				<div style="display: inline-block;width: 40%">
						<input type="checkbox" id="awesome6" checked="checked" name="tai"
							value="CI4000-RAK F7" /> <label for="awesome6">CI4000-RAK
							F7</label>
					</div>
					<div style="display: inline-block;width: 55%">
						<input type="checkbox" id="awesome5" checked="checked" name="tai"
							value="ESS F6" /> <label for="awesome5">ESS F6</label>
					</div>
					
				</div>
				<div style="margin-left: 5%;margin-top: 10px">
					<div style="display: inline-block;width: 40%">
						<input type="checkbox" id="awesome7" checked="checked" name="tai"
							value="ESS F8(NEW)" /> <label for="awesome7">ESS F8(NEW)</label>
					</div>
					<div style="display: inline-block;width: 40%">
						<input type="checkbox" id="awesome8" checked="checked" name="tai"
							value="Nozzle flow rate" /> <label for="awesome8">Nozzle
							flow rate</label>
					</div>
				</div>
				<div style="margin-left: 5%;margin-top: 10px">
					<div style="display: inline-block;width: 40%">
						<input type="checkbox" id="awesome9" checked="checked" name="tai"
							value="Nozzle Pdoe" /> <label for="awesome9">Nozzle Pdoe</label>
					</div>
					<div style="display: inline-block;width: 45%">
						<input type="checkbox" id="awesome10" checked="checked" name="tai"
							value="HSM" /> <label for="awesome10">HSM</label>
					</div>
				</div>
			</div>
		</form>
		<div id="main1" style="width:80%;margin: 0 auto;height: 70vh;margin-top: 7vh"></div>

	</div>
</body>
<script type="text/javascript" src="/EPD/js/echarts.js"></script>

<script type="text/javascript">
function fontSize(res){
  let docEl = document.documentElement,
    clientWidth = window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth;
  if (!clientWidth) return;
  let fontSize = 100 * (clientWidth / 1920);
  return res*fontSize;
 
}
	function tubiao() {
		var a = document.getElementById("test1").value;
		var box = document.getElementsByName("tai");
		var tai = '';
		for (var i = 0; i < box.length; i++) {
			if (box[i].checked) {
				tai += box[i].value + ';';
			}
		}
		var testModel = new Map();
		testModel["test1"] = a,
		testModel["tai"] = tai
		//alert(testModel)
		$("#x").css("display","none");
	$('#t').css('border-radius','10px');
		$(function() {
			var myChart1 = echarts.init(document.getElementById('main1'));
			myChart1.showLoading();

			$.ajax({
				type : "post",
				url : "/EPD/liyong/liyongnian.do", //请求发送到TestServlet处
				dataType : "json", //返回数据形式为json
				data : testModel,
				success : function(res) {
				/*
					var run1 = (res["run1"] / res["wordtime"] * 100).toFixed(1);
					var stand1 = (res["stand1"] / res["wordtime"] * 100).toFixed(1);
					var down1 = (res["down1"] / res["wordtime"] * 100).toFixed(1);
					var run2 = (res["run2"] / res["wordtime"] * 100).toFixed(1);
					var stand2 = (res["stand2"] / res["wordtime"] * 100).toFixed(1);
					var down2 = (res["down2"] / res["wordtime"] * 100).toFixed(1);
					var run3 = (res["run3"] / res["wordtime"] * 100).toFixed(1);
					var stand3 = (res["stand3"] / res["wordtime"] * 100).toFixed(1);
					var down3 = (res["down3"] / res["wordtime"] * 100).toFixed(1);
					var run4 =( res["run4"] / res["wordtime"] * 100).toFixed(1);
					var stand4 =( res["stand4"] / res["wordtime"] * 100).toFixed(1);
					var down4 = (res["down4"] / res["wordtime"] * 100).toFixed(1);
					var run5 = (res["run5"] / res["wordtime"] * 100).toFixed(1);
					var stand5 = (res["stand5"] / res["wordtime"] * 100).toFixed(1);
					var down5 = (res["down5"] / res["wordtime"] * 100).toFixed(1);
					var run6 = (res["run6"] / res["wordtime"] * 100).toFixed(1);
					var stand6 = (res["stand6"] / res["wordtime"] * 100).toFixed(1);
					var down6 = (res["down6"] / res["wordtime"] * 100).toFixed(1);
					var run7 = (res["run7"] / res["wordtime"] * 100).toFixed(1);
					var stand7 =( res["stand7"] / res["wordtime"] * 100).toFixed(1);
					var down7 = (res["down7"] / res["wordtime"] * 100).toFixed(1);
					var run8 = (res["run8"] / res["wordtime"] * 100).toFixed(1);
					var stand8 = (res["stand8"] / res["wordtime"] * 100).toFixed(1);
					var down8 = (res["down8"] / res["wordtime"] * 100).toFixed(1);
					var run9 = (res["run9"] / res["wordtime"] * 100).toFixed(1);
					var stand9 =( res["stand9"] / res["wordtime"] * 100).toFixed(1);
					var down9 =( res["down9"] / res["wordtime"] * 100).toFixed(1);
					var run10 = (res["run10"] / res["wordtime"] * 100).toFixed(1);
					var stand10 = (res["stand10"] / res["wordtime"] * 100).toFixed(1);
					var down10 =( res["down10"] / res["wordtime"] * 100).toFixed(1);
					*/
					myChart1.hideLoading();

					myChart1.setOption({
						tooltip : {
							trigger : 'axis',
							show: true,
							axisPointer : { // 坐标轴指示器，坐标轴触发有效
								type : 'line' // 默认为直线，可选为：'line' | 'shadow'
							},
						},
						title:{
							text:'Annual utilization rate',
							textStyle:{
								color:'#3692ef',
								fontFamily:'Microsoft YaHei',
								fontSize:fontSize(0.3)
							},
							left:'center',
						},
						legend : {
							data : [ 'Working Hours', 'Stand by Hours', 'Down Hours' ],
							left:'right',
							top:'5%',//距上边距
						},
						grid : {
							top:'10%',//距上边距
							bottom: '20%'
						},
						xAxis : [
							{
							padding:[50,0,0,0],
								type : 'category',
								data :function() {
												var ynum3 = [];
												for (var i = 0; i < res["taijia"].length; i++) {
													ynum3.push(res["taijia"][i]);
												}
												return ynum3;
											}(),
								axisLine:{
									lineStyle:{
												color:'#949492'
											},
											symbol: ['none', 'arrow'],
											symbolOffset: [0, 15]
										},
								axisLabel:{
									interval:0,
									rotate:-45,
									color:'#949492',
									fontSize:fontSize(0.15)
								}
							},
						],
						yAxis : [
							{
								type : 'value',
								axisLine:{
									lineStyle:{
												color:'#949492'
											},
											symbol: ['none', 'arrow'],
											symbolOffset: [0, 15]
										},
								axisLabel : {
									show : true,
									interval : 'auto',
									formatter : '{value} %',
									interval:0,
									color:'#949492',
									fontSize:fontSize(0.15)
								},
								show : true
							}
						],
						series : [
						{
								label:{
									show:true,
									position:'left',
									color:'#949492',
									fontSize:fontSize(0.15)
								},
								itemStyle:{
									color:'#ffbe01',
									barBorderRadius: [0, 0, 20, 20],
								},
								name : 'Down Hours',
								type : 'bar',
								stack : 1,
								barMaxWidth:'10%',
								data :function() {
												var ynum3 = [];
												for (var i = 0; i < res["down"].length; i++) {
													ynum3.push(res["down"][i]);
												}
												return ynum3;
											}(),
							},
							{
								name : 'Stand by Hours',
								type : 'bar',
								stack : 1,
								label:{
									show:true,
									position:'left',
									color:'#949492',
									fontSize:fontSize(0.15)
								},
								itemStyle:{
									color:'#28b9d5',
									barBorderRadius: [0, 0, 0, 0],
								},
								barMaxWidth:'10%',
							/*	barMinHeight: '10%',*/
								data : function() {
												var ynum3 = [];
												for (var i = 0; i < res["stand"].length; i++) {
													ynum3.push(res["stand"][i]);
												}
												return ynum3;
											}(),
							},
							{
							label:{
									show:true,
									position:'left',
									color:'#949492',
									fontSize:fontSize(0.15)
								},
								itemStyle:{
									color:'#54e09a',
									barBorderRadius: [20, 20, 0, 0],
								},
								name : 'Working Hours',
								type : 'bar',
								stack : 1,
								barMaxWidth:'10%',
								data :function() {
												var ynum3 = [];
												for (var i = 0; i < res["run"].length; i++) {
													ynum3.push(res["run"][i]);
												}
												return ynum3;
											}(),
							}
						]
					});


				},

				error : function() {
					//请求失败时执行该函数
					alert("图表请求数据失败!");
					var se1 = document.getElementById("sese1"); //获取目标Id
					se1.style.display = "inline";
					var ww = document.getElementById("ww"); //获取目标Id
					ww.style.display = "none";
					myChart.hideLoading();
				}
			});
		});
	}
</script>
<script>
	//注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function() {
		var element = layui.element;
	});
	layui.use('laydate', function() {
		var date = new Date();
		date.getFullYear(); //获取完整的年份(4位)
		date.getMonth(); //获取当前月份(0-11,0代表1月
		var laydate = layui.laydate;
		//执行一个laydate实例
		laydate.render({
			elem : '#test1', //指定元素
			type : 'year',
			value : date.getFullYear()
		});
	});
</script>
<script type="text/javascript">
	//select跳页
	function s_click(obj) {
		var num = 0;
		for (var i = 0; i < obj.options.length; i++) {
			if (obj.options[i].selected == true) {
				num++;
			}
		}
		if (num == 1) {
			var url = obj.options[obj.selectedIndex].value;
			// window.open(url); //这里修改打开连接方式
			window.location.href = url;
		}
	}
	$(document).ready(function() {
		first();
	});
	//年月选择器
	$("#t").focus(function(){
	$("#x").css("display","block");
	$('#t').css('border-radius','10px 10px 0px 0px');
	//document.getElementById("t").css('border-radius','50px')
	})
</script>
</html>