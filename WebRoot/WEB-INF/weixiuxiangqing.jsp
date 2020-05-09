<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Repair Order</title>
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
</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>

	<!-- 内容区 -->
	<div id="main">
	<!-- 蓝条 -->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Repair Order</div></div>
		<input type="hidden" name=id value="${weixiu.id}">
		<div style="margin-left:16%;margin-top: 52px">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Device Name:</label> <input
				class="in" style="height: 3.5vh;width: 19.2%" name="shebeimingcheng"
				value="${weixiu.shebeimingcheng}" readonly="readonly"> <label
				style="font-family: 微软雅黑;font-size: 0.78vw;margin-left:16%;width: 9.5vw;display: inline-block;">Maintenance staff:</label>
			<input type="text" class="in" name="weixiurenyuan"
				value="${weixiu.weixiurenyuan}" readonly="readonly">
		</div>
		<div style="margin-left:16%;margin-top: 15px;">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Breakdown Start time:</label> <input
				type="text" class="in" name="guzhangshijian1"
				value="${weixiu.guzhangshijian1}" readonly="readonly"> <label
				style="font-family: 微软雅黑;font-size: 0.78vw;margin-left:16%;width: 9.5vw;display: inline-block;">Breakdown End time:</label>
			<c:choose>
				<c:when test="${weixiu.guandanshijian1 eq '维修中...'}">
					<input type="text" class="in" name="guandanshijian1" value="维修中..."
						readonly="readonly">
				</c:when>
				<c:otherwise>
					<input  name="guandanshijian1" class="in"
						value="${weixiu.guandanshijian1}" readonly="readonly">
				</c:otherwise>
			</c:choose>
		</div>


		<div style="margin-left:16%;margin-top: 15px">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Photos:</label> <br>
			<br>
			<div id="layer-photos-demo" class="layer-photos-demo">
				<img layer-src="${weixiu.img1}" src="${weixiu.img1}" id="box1"
					style="margin-left: 14%;width: 22%;height: 16vh;display: inline-block;">
				<img layer-src="${weixiu.img2}" src="${weixiu.img2}" id="box2"
					style="margin-left: 1%;width: 22%;height: 16vh;display: inline-block;">
				<img layer-src="${weixiu.img3}" src="${weixiu.img3}" id="box3"
					style="margin-left: 1%;width: 22%;height: 16vh;display: inline-block;">
			</div>
		</div>
	<br><br>
		<div style="margin-left:16%;margin-top: 15px;">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Problem description:</label>
			<textarea type="text" class="in"
				style="height: 16vh;width: 68%;vertical-align: top;"
				name="wentimiaoshu" readonly="readonly">${weixiu.wentimiaoshu}</textarea>
		</div>

		<div style="margin-left:16%;margin-top: 15px;">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Solution measures:</label>
			<textarea type="text" class="in"
				style="height: 7vh;width: 68%;vertical-align: top;"
				name="jiejuecuoshi" readonly="readonly">${weixiu.jiejuecuoshi}</textarea>
		</div>
		<div style="margin-left:16%;margin-top: 15px;">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Preventire measures</label>
			<textarea type="text" class="in"
				style="height: 7vh;width: 68%;vertical-align: top;"
				name="fangfancuoshi" readonly="readonly">${weixiu.fangfancuoshi}</textarea>
		</div>
		<br>
		<br>
	</div>
</body>
<script type="text/javascript">
	function tanchuang() {
		if (window.confirm('确认提交？')) {
			document.getElementById("ttt1").submit();

		} else {
			return false;
		}
	}
</script>
<script>
	layui.use('element', function() {
		var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

		//监听导航点击
		element.on('nav(demo)', function(elem) {
			//console.log(elem)
			layer.msg(elem.text());
		});
	});
</script>
<script>
	layui.use('laydate', function() {
		var laydate = layui.laydate;

		//日期时间选择器
		laydate.render({
			elem : '#test5',
			type : 'datetime'
		});

	});
	layui.use('laydate', function() {
		var laydate = layui.laydate;

		//日期时间选择器
		laydate.render({
			elem : '#test55',
			type : 'datetime'
		});

	});
</script>
<script>
	//调用示例
	layui.use('layer', function() {
		var $ = layui.jquery, layer = layui.layer;
		$('#box1').on('click', function() {
			layer.photos({
				photos : '#layer-photos-demo'
			//,anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
			});
		});
	});
	//调用示例
	layui.use('layer', function() {
		var $ = layui.jquery, layer = layui.layer;
		$('#box2').on('click', function() {
			layer.photos({
				photos : '#layer-photos-demo'
			//,anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
			});
		});
	});
	//调用示例
	layui.use('layer', function() {
		var $ = layui.jquery, layer = layui.layer;
		$('#box3').on('click', function() {
			layer.photos({
				photos : '#layer-photos-demo'
			//,anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
			});
		});
	});
	$(document).ready(function(){ 
		two();
	});
</script>

</html>