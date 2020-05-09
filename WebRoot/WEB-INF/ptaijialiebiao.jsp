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
<!-- 
<script>
$(function(){
		 function state1(){
			 $("#rotate").removeClass("r2"); 
			 $("#rotate").addClass("r1");
			 setTimeout(state2,590);
		 }
		function state2(){	   
		     $("#rotate").removeClass("r1");
		     $("#rotate").addClass("r2"); 
			 setTimeout(state1,590);
		}
		state1();
		
})

</script>
 -->

<style type="text/css">
.r1{
	 -moz-transform:rotate(-20deg);
    -webkit-transform:rotate(-20deg);
	-o-transform:rotate(-20deg);
}

.r2{
	 -moz-transform:rotate(20deg);
    -webkit-transform:rotate(20deg);
	-o-transform:rotate(20deg);
}
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
#dd{
	background: -moz-linear-gradient(top, #fefefe 0%,#f3f3f3 50%, #e6e6e6 100%) ;
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#fefefe),color-stop(50%,#f3f3f3), color-stop(100%,#e6e6e6))  ;
    background: -webkit-linear-gradient(top, #fefefe 0%,#f3f3f3 50%,#e6e6e6 100%) ;
    background: -o-linear-gradient(top, #fefefe 0%,#f3f3f3 50%,#e6e6e6 100%) ;
    background: -ms-linear-gradient(top, #fefefe 0%,#f3f3f3 50%,#e6e6e6 100%) ;
    border-radius:5px;
}
</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>	
	<!-- 内容区 -->

	<div id="main" >
	<!-- 蓝条 -->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Test Bench</div></div>
	<!-- 1 -->
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#54cf62;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">CI4000 F1</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing1.do">
				<ul>
					<li>Pressure level:2500bar</li>
					<li>Product:CRIN 2-16,3-18/20BL/2x</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
				<c:choose>
				<c:when test="${taijias[0].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[0].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[0].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[0].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[0].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[0].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[0].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;" >
				<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[0].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;display: inline-block;' class="iconfont icon-bofang" ></span>
				</c:when>
				<c:when test="${taijias[0].taijiazhuangtai==1}">
					<span id="rotate" style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting" ></span>
				</c:when>
				<c:otherwise>
					<span id="rotate" style="color: #ee3a3a;font-size:3.6vw;display: inline-block;" class="iconfont icon-bofang1" ></span>
				</c:otherwise>
				</c:choose>
				</form>
				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option  disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=CI4000 F1">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=CI4000 F1">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#54cf62;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">CI4000 F2</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing2.do">
				<ul >
					<li>Pressure level:2500bar</li>
					<li>Product:CRIN 2-16,3-18/20BL/2x</li>
					<li style="margin-left: 20%">CRI 2-16,1-20/18</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[1].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[1].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[1].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[1].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[1].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[1].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[1].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
		<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[1].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[1].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				
				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=CI4000 F2">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=CI4000 F2">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<!-- 2 -->
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#54cf62;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">CI4000 F3</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing3.do">
				<ul >
					<li>Pressure level:2000bar</li>
					<li>Product:CRI 2-16/18,1-18/20</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[2].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[2].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[2].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[2].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[2].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[2].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[2].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[2].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[2].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=CI4000 F3">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=CI4000 F3">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#54cf62;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">CI4000 F4</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing4.do">
				<ul >
					<li>Pressure level:2200bar</li>
					<li>CRI 2-16/18,1-20/18</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[3].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[3].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[3].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[3].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[3].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[3].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[3].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[3].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[3].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=CI4000 F4">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=CI4000 F4">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<!-- 3 -->
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#dca010;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">ESS F6</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing5.do">
				<ul >
					<li>Pressure level:2500bar</li>
					<li>Product:CRIN 2-16,3-18/20BL/2x</li>
					<li style="margin-left: ">CRI 2-16,1-18/20</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[4].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[4].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[4].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[4].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[4].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[4].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[4].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[4].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[4].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=ESS F6">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=ESS F6">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#54cf62;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">CI4000-RAK F7</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing6.do">
				<ul >
					<li>Pressure level:3000bar</li>
					<li>Product: Rail,PLV,PCV,RDS</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[5].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[5].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[5].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[5].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[5].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[5].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[5].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[5].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[5].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=CI4000-RAK F7">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=CI4000-RAK F7">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<!-- 4 -->
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#dca010;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">ESS F8(NEW)</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing7.do">
				<ul >
					<li>Pressure level:2000bar</li>
					<li>Product:CRI 2-16,1-18/20</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[6].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[6].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[6].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[6].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[6].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[6].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[6].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[6].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[6].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=ESS F8(NEW)">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=ESS F8(NEW)">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#dca010;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">Large engine F9</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing8.do">
				<ul >
					<li>Pressure level:2200bar</li>
					<li>Product:Large engline injector</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[7].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[7].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[7].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[7].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[7].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[7].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[7].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[7].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[7].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=Large engine F9">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=Large engine F9">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<!-- 5 -->
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#7966a0;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">Nozzle flow rate</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing9.do">
				<ul >
					<li>Pressure level:/</li>
					<li>Product:P nozzle</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[8].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[8].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[8].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[8].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[8].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[8].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[8].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[8].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[8].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=Nozzle flow rate">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=Nozzle flow rate">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#7966a0;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">Nozzle Pdoe</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing10.do">
				<ul >
					<li>Pressure level:/</li>
					<li>Product:P nozzle</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[9].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[9].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[9].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[9].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[9].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[9].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[9].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[9].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[9].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option  disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=Nozzle Pdoe">Repair Order</option>
					<option value="/EPD/main/dailyCheckList.do?taijiamingcheng=Nozzle Pdoe">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<div id="dd"  style="height: 12.8vh;width: 47%;margin-left: 2%;display:inline-block;float: left;margin-top: 1%">
		<table style="margin-top:1.5vh;width: 100%;height:11.3vh ;vertical-align:middle">
			<tr>
				<td style="width: 10.4%;">
				<span style="color:white;background-color:#5dc8e3;font-size: 3.1vw;margin-left: 24.5%;" class="iconfont icon-i-Mpingtaixingzhinen1"></span>
				</td>
				<td style="width: 24%;"><label style="margin-left:22%;font-family: 微软雅黑;font-size: 0.85vw;color:#606060">HSM</label></td>
				<td style="width: 35%;font-family: 微软雅黑;font-size: 0.7vw;color:#666461">
				<a href="/EPD/xiangqing11.do">
				<ul >
					<li>Pressure level:/</li>
					<li>Product:HSM,ARB,HGI,Mini HSM</li>
				</ul>
				</a>
				</td>
				<td style="width: 15.6%;">
					<c:choose>
				<c:when test="${taijias[10].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[10].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460;" class="iconfont icon-D"></span>
					</c:when>
					<c:when test="${taijias[10].rijian==1}">
					<span style="font-size: 1vw;color: #25cd68" class="iconfont icon-D"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;color: #e86161" class="iconfont icon-D"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[10].yuejian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[10].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[10].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 3px;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[10].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 3px;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 3px;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 3px;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
				<td style="width: 15%;">
<form action="" style="display: inline-block;">
				<input type="hidden" name="taijiamingcheng" value="CI4000 F1">
				<c:choose>
				<c:when test="${taijias[10].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.6vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[10].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.6vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.6vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</form>				</td>
			</tr>
			<tr >
			<td ALIGN="RIGHT" colspan="5">
				<select  style="-webkit-appearance: none;width:10px;border:0px;background-image:url('/EPD/image/444.png');background-size:90%;background-repeat: no-repeat;" onchange="s_click(this)">
					<option disabled selected hidden></option>
					<option value="/EPD/weixiuadd.do?taijiamingcheng=HSM">Repair Order</option>
					<option value="/EPD/main/dailyCheck.do">Daily Check</option>
				</select>
			</td>
			</tr>
		</table>
		</div>
		<div style="float:right;margin-top: 3%;margin-right: 19%"">
			<span style="color:#16ca5e;font-size: 2.5vw;vertical-align:middle;" class="iconfont icon-bofang"></span>
			<span style="vertical-align:middle;color:#606060;vertical-align:middle;">Running</span>
			<span style="color:#2bc0e8;font-size: 2.5vw;vertical-align:middle;" class="iconfont icon-zanting"></span>
			<span style="vertical-align:middle;color:#606060;vertical-align:middle;">Stand by</span>
			<span style="color:#ee3a3a;font-size: 2.5vw;vertical-align:middle;" class="iconfont icon-bofang1"></span>
			<span style="vertical-align:middle;color:#606060;vertical-align:middle;">Down</span>
		</div>
	</div>
</body>
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
    		first();
    	});
    </script>
</html>