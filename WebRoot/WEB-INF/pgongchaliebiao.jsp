<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tolerance Setting</title>
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
	width:130px;
	height: 31px;
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
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Tolerance Setting</div></div>
    <form action="" style="display: inline-block;width: 70%;margin-left: 5%;">
    <select class="in" name="bench" style="margin-top: 2%;">
    			<option value="0" disabled selected hidden>Test Bench</option>
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
	<select class="in" name="product">
				<option value="0" disabled selected hidden>Injector</option>
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
	<input class="in" type="submit" style="width:130px;border-radius:30px;margin-left:2%" value="Search">
    </form>
	<input onclick="one();" type="button" class="in" style="width:130px;border-radius:30px;display: inline-block;" value="Add">
	<table style="font-size: 20px;color: #919aa7;margin: 0 auto;margin-top: 2%;width: 90%">
	<c:forEach items="${gongchas}" var="a">
		<c:if test="${ !empty  a.normal1 }">
		<tr style="background-color: #f2f6f7;height: 30px">
			<td rowspan="${a.count}">${a.product}<br>${a.bench}<br>${a.injector_no}</td>
			<td>Test point1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tolerance:${a.tolerance1}</td>
			<td>Normal Value:${a.normal1}</td>
			<td>ESS Offset:${a.ess1}</td>
			<td>TL:${a.tl1}</td>
			<td>TH:${a.th1}</td>
			<!-- 
			<td>
			<a href="/EPD/gongcha/findOneGongcha.do?id=${a.id}"  style="color:#589df1;font-size: 25px" class="iconfont icon-xiugai"></a>
			</td>
			 -->
		</tr>
		</c:if>
		<c:if test="${ !empty  a.normal2 }">
		<tr style="background-color: #f2f6f7;height: 30px">
			<td>Test point2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tolerance:${a.tolerance2}</td>
			<td>Normal Value:${a.normal2}</td>
			<td>ESS Offset:${a.ess2}</td>
			<td>TL:${a.tl2}</td>
			<td>TH:${a.th2}</td>
		</tr>
		</c:if>
		<c:if test="${ !empty  a.normal3 }">
		<tr style="background-color: #f2f6f7;height: 30px">
			<td>Test point3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tolerance:${a.tolerance3}</td>
			<td>Normal Value:${a.normal3}</td>
			<td>ESS Offset:${a.ess3}</td>
			<td>TL:${a.tl3}</td>
			<td>TH:${a.th3}</td>
		</tr>
		</c:if>
		<c:if test="${ !empty  a.normal4 }">
		<tr style="background-color: #f2f6f7;height: 30px">
			<td>Test point4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tolerance:${a.tolerance4}</td>
			<td>Normal Value:${a.normal4}</td>
			<td>ESS Offset:${a.ess4}</td>
			<td>TL:${a.tl4}</td>
			<td>TH:${a.th4}</td>
		</tr>
		</c:if>
		<c:if test="${ !empty  a.normal5 }">
		<tr style="background-color: #f2f6f7;height: 30px">
			<td>Test point5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tolerance:${a.tolerance5}</td>
			<td>Normal Value:${a.normal5}</td>
			<td>ESS Offset:${a.ess5}</td>
			<td>TL:${a.tl5}</td>
			<td>TH:${a.th5}</td>
		</tr>
		</c:if>
		<c:if test="${ !empty  a.normal6 }">
		<tr style="background-color: #f2f6f7;height: 30px">
			<td>Test point6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tolerance:${a.tolerance6}</td>
			<td>Normal Value:${a.normal6}</td>
			<td>ESS Offset:${a.ess6}</td>
			<td>TL:${a.tl6}</td>
			<td>TH:${a.th6}</td>
		</tr>
		</c:if>
		<c:if test="${ !empty  a.normal7 }">
		<tr style="background-color: #f2f6f7;height: 30px">
			<td>Test point7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tolerance:${a.tolerance7}</td>
			<td>Normal Value:${a.normal7}</td>
			<td>ESS Offset:${a.ess7}</td>
			<td>TL:${a.tl7}</td>
			<td>TH:${a.th7}</td>
		</tr>
		</c:if>
		<c:if test="${ !empty  a.normal8 }">
		<tr style="background-color: #f2f6f7;height: 30px">
			<td>Test point8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tolerance:${a.tolerance8}</td>
			<td>Normal Value:${a.normal8}</td>
			<td>ESS Offset:${a.ess8}</td>
			<td>TL:${a.tl8}</td>
			<td>TH:${a.th8}</td>
		</tr>
		</c:if>
		<c:if test="${ !empty  a.normal9 }">
		<tr style="background-color: #f2f6f7;height: 30px">
			<td>Oil point&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tolerance:${a.tolerance9}</td>
			<td>Normal Value:${a.normal9}</td>
			<td>ESS Offset:${a.ess9}</td>
			<td>TL:${a.tl9}</td>
			<td>TH:${a.th9}</td>
		</tr>
		</c:if>
		<tr style="height: 20px">
			<td colspan="6"></td>
		</tr>
		<tr style="height: 20px">
			<td colspan="6"></td>
		</tr>
	</c:forEach>
	</table>
	
	
	
	</div>
</body>
<script type="text/javascript">
	function one(){
		window.location.href=("/EPD/gongcha/toAddGongcha.do");	//当前页面全部刷新

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
            for (var i = 0; i < obj.options.length; i++) {
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
</html>