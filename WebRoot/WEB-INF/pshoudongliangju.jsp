<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Hand gauge</title>
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
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;
}

#zuo {
	background: url("/EPD/img/caidan1.png");
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
</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>
	<!-- 内容区 -->
	<div id="main">
		<!-- 蓝条 -->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Hand gauge</div></div>
		<div
			style="background: #eef2f5;width: 97.6%;margin-top:1%;margin-left: 1.2%">
			<br>
			<div>
				<label id="zz" style="margin-left: 4%;font-size: 1vw;color:#9932CC;">Gauge
					of CRIN</label>
				<hr style="width: 99%">

				<label style="font-size: 0.9vw;color: #6499dd;margin-left: 4%;">CRIN:1-16</label>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 3.5%;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong1.do"><li><span style="color: black;font-size:0.82vw">Needle
										lift measure (E)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[0].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[0].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose>
						</a>
							</td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70023R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong2.do"><li><span style="color: black;font-size:0.82vw">Armature
										lift (F)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[1].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[1].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose>
							</a>
							</td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LX
								70064R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong3.do"><li><span style="color: black;font-size:0.82vw">Armature
										lift (E)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[2].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[2].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LX
								70065R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong4.do"><li><span style="color: black;font-size:0.82vw">Residual
										air gap (H2)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[3].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[3].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>

						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70035R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong5.do"><li><span style="color: black;font-size:0.82vw">Nozzle
										spring force (C)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[4].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[4].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LX
								70038R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 3.5%;display: inline-block;margin-top: 1.3vh">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong6.do"><li><span style="color: black;font-size:0.82vw">Valve
										spring force (B)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a>
						<c:choose>
								<c:when test="${shoudongliangjus[5].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[5].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70 031R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong7.do"><li><span style="color: black;font-size:0.82vw">Valve
										spring force (C)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[6].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[6].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70 032R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong8.do"><li><span style="color: black;font-size:0.82vw;width:10%">Over
										lift</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[7].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[7].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LX
								70 061R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong9.do"><li><span style="color: black;font-size:0.82vw">Residual
										air gap (H1)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[8].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[8].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LX
								70 061R</span></td>
					</tr>
				</table>
			</div>


			<br>
			<br>
			<div>
				<label style="font-size: 0.9vw;color: #6499dd;margin-left: 4%;">CRIN:2-16/3-18/3-20-BL</label>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 3.5%;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong10.do"><li><span style="color: black;font-size:0.82vw">Needle
										lift measure (E)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[9].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[9].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70112R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong11.do"><li><span style="color: black;font-size:0.82vw">Nozzle
										spring force (L pre-force)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[10].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[10].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70039R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong12.do"><li><span style="color: black;font-size:0.82vw">Nozzle
										spring force (C)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[11].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[11].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LX
								70307R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong13.do"><li><span style="color: black;font-size:0.82vw">Armature
										lift (E)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[12].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[12].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70110R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong14.do"><li><span style="color: black;font-size:0.82vw">Armature
										lift (F)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[13].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[13].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70109R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 3.5%;display: inline-block;margin-top: 1.3vh">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong15.do"><li><span style="color: black;font-size:0.82vw">Residual
										air gap</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[14].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[14].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70146R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong16.do"><li><span style="color: black;font-size:0.82vw">Valve
										spring force (C)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[15].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[15].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS 70111R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong17.do"><li><span style="color: black;font-size:0.82vw">Valve
										spring force (B)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a>
						<c:choose>
								<c:when test="${shoudongliangjus[16].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[16].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS 70108R</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong18.do"><li><span style="color: black;font-size:0.82vw">Over
										lift</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[17].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[17].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:LS
								70313R/LS 70314R</span></td>
					</tr>
				</table>
			</div>

			<br>
			<br>
			<div>
				<label style="font-size: 0.9vw;color: #6499dd;margin-left: 4%;">CRIN:CRINC</label>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 3.5%;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<li><span style="color: black;font-size:0.82vw">Nozzle
										needle spring force</span></li>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[18].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[18].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:Y445126152/Y445126162</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<li><span style="color: black;font-size:0.82vw">Valve
										spring lift</span></li>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[19].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[19].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:Y445126170</span></td>
					</tr>
				</table>
			</div>


			<br>
			<br>
			<div>
				<label style="font-size: 0.9vw;color: #6499dd;margin-left: 4%;">CRIN:CRINL</label>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 3.5%;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<li><span style="color: black;font-size:0.82vw">Needle
										lift</span></li>
							</ul>
						</td>
						<td style="width: 15%">
						<a ><c:choose>
								<c:when test="${shoudongliangjus[20].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[20].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:0446Y03047</span></td>
					</tr>
				</table>
			</div>
			<br>
			<br>
		</div>
		<div
			style="background: #eef2f5;width: 97.6%;height:38vh;margin-top: 22px;margin-left: 1.2%">
			<br>
			<div>
				<label id="zz" style="margin-left: 4%;font-size: 1vw;color:#9932CC;">Gauge
					of CRI</label>
				<hr style="width: 99%">

				<label style="font-size: 0.9vw;color: #6499dd;margin-left: 4%;">CRI:1-16/18/20/2-16</label>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 3.5%;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong22.do"><li><span style="color: black;font-size:0.82vw">Value
										spring force(C)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[21].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[21].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:CRI
								Nr.1</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong23.do"><li><span style="color: black;font-size:0.82vw">Valve
										spring force(d)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[22].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[22].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:CRI
								Nr.2</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong24.do"><li><span style="color: black;font-size:0.82vw">RAG(a)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[23].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[23].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:CRI
								Nr.6</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong25.do"><li><span style="color: black;font-size:0.82vw">RAG/overlift(bmf/bof)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[24].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[24].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:CRI Nr.7</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong26.do"><li><span style="color: black;font-size:0.82vw">Armature lift(E)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[25].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[25].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:CRI Nr.6</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 3.5%;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong27.do"><li><span style="color: black;font-size:0.82vw">Residual air gap</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[26].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[26].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:CRI Nr.7</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;margin-top: 1.3vh">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong28.do"><li><span style="color: black;font-size:0.82vw">Valve
										spring force(B)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[27].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[27].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:CRI Nr.11</span></td>
					</tr>
				</table>
			</div>
			<div
				style="background: white;width:17.7%;height: 85px;margin-left: 12px;display: inline-block;">
				<table style="padding-top:18px;display: block;margin-left: 3%">
					<tr>
						<td style="width: 15%"><span class="iconfont icon-celiang-"
							style="color: #8a8a8a;font-size: 28px;"></span></td>
						<td style="width: 70%">
							<ul>
								<a href="/EPD/shoudongliangju/shoudong29.do"><li><span style="color: black;font-size:0.82vw">Valve
										spring force(C)</span></li></a>
							</ul>
						</td>
						<td style="width: 15%">
						<a >
						<c:choose>
								<c:when test="${shoudongliangjus[28].liangjuzhuangtai==0}">
									<span class="iconfont icon-zhengque"
										style="color:#219b3e ;font-size: 38px"></span>
								</c:when>
								<c:when test="${shoudongliangjus[28].liangjuzhuangtai==1}">
									<span class="iconfont icon-yingyongchengxu-zhis"
										style="color:#ffc37d ;font-size: 38px"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
										style="color:#d55b5b ;font-size: 38px"></span>
								</c:otherwise>
							</c:choose></a></td>
					</tr>
					<tr>
						<td colspan="3"><span
							style="color: black;font-size: 13px;color: #8a8a8a;">Gauge:CRI Nr.12</span></td>
					</tr>
				</table>
			</div>
			<div style="display: inline-block;margin-left: 10%;width: 28%">
				<span class="iconfont icon-zhengque"
					style="color: #219b3e;font-size: 1.7vw;vertical-align:middle;"></span>
				<span style="vertical-align:middle;width: 30%;margin-left:2%">Available</span>
				<span
					class="iconfont icon-yingyongchengxu-zhis"
					style="color: #ffc37d;font-size: 1.7vw;vertical-align:middle;"></span>
				<span style="vertical-align:middle;width: 30%">On Calibration</span>
				<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu"
					style="color: #d55b5b;font-size: 1.7vw;vertical-align:middle;"></span>
				<span style="vertical-align:middle;width: 15%">Down</span> 
			</div>
			<br>
			<br>
		</div>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function(){ 
    		first();
    	});
</script>
</html>