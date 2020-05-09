<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Test Bench</title>
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
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Test Bench</div></div>
    		<form action="/EPD/taijia/xiugai.do"id="ttt1">
    		<div style="margin-left:20%;margin-top: 12vh">
			<label style=";color: #a2a9b4;font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Device Name:</label> 
			<input  style="height: 3.5vh;width: 19.2%;border: 0px;color: #a2a9b4" name="taijiamingcheng" value="${tai.taijiamingcheng}" readonly="readonly">
			
			<label style="color: #a2a9b4;font-family: 微软雅黑;font-size: 0.78vw;margin-left: 10%;width: 9.5vw;display: inline-block;">Device current status:</label>
			<c:choose>
				<c:when test="${tai.taijiazhuangtai==0}">
					<span style="height: 3.5vh;width: 19.2%;border: 0px;color: #a2a9b4;">Running</span>
					<span style="color:#16ca5e;font-size: 1.5vw;vertical-align:middle;" class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${tai.taijiazhuangtai==1}">
					<span style="height: 3.5vh;width: 19.2%;border: 0px;color: #a2a9b4;">Stand by</span>
					<span style="color:#f87a0b;font-size: 1.5vw;vertical-align:middle;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="height: 3.5vh;width: 19.2%;border: 0px;color: #a2a9b4;">Down</span>
					<span style="color:#ee3a3a;font-size: 1.5vw;vertical-align:middle;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
			</c:choose>
			</div>
		<div style="margin-left:20%;margin-top: 8vh;">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;color: #a2a9b4;">Status update:</label> 
			<select  class="in" style="height: 3.5vh;width: 19.2%;color: #a2a9b4" name="taijiazhuangtai">
				<option value="0">Running</option>
				<option value="1">Stand by</option>
				<option value="2">Down</option>
			</select>
			
		<label style="color: #a2a9b4;font-family: 微软雅黑;font-size: 0.78vw;margin-left: 10%;width: 9.5vw;display: inline-block;">Tally the trigger:</label>
			<select   class="in" style="height: 3.5vh;width: 19.2%;color: #a2a9b4" name="shifoudianjian">
				<option value="0">YES</option>
				<option value="1">NO</option>
			</select>
		</div>
		
		<br><br>
		<br><br>
		<br><br>
		<br><br>
		<input style="display:block;margin: 0 auto;width: 100px;height: 32px;"
                            				 type="button" onclick="tanchuang();" value="Confirm">
    		</form>
    		
		</div>
</body>
<script>
//注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  
  //…
});
</script>
<script type="text/javascript">
	function tanchuang(){
		if(window.confirm('确认提交？')){
		document.getElementById("ttt1").submit();
			
		}else{
			return false;
		}
	}
	</script>
	<script type="text/javascript">
$(document).ready(function(){ 
	first();
});
</script>
</html>