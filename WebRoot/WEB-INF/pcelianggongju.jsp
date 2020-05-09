<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Other Equipment</title>
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
#main{
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
        <!-- 蓝条 -->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Other equipment</div></div>
        
	<!-- 内容区 -->
		<div style="background: #eef2f5;width: 97.6%;margin-top:1%;margin-left: 1.2%">
	<br><br>
			<label style="color: #606060;font-size: 1.2vw;font-family: 微软雅黑;margin-left: 2%">Other Equipment Overview</label>
			<hr>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1.8vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang1.do">
						<span style="color: black;font-size:0.7vw">Zwick(Force distance measurement)</span>
						</a>
						</td>
						<td style="width:4vw">
						<a>
						<c:choose>
								<c:when test="${celianggongjus[0].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>
						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang2.do">
						<span style="color: black;font-size:0.7vw">ESI(Spring Tester)</span>
						</a>
						</td>
						<td style="width:4vw">
						<a >
						<c:choose>
								<c:when test="${celianggongjus[1].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>
						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang3.do">
						<span style="color: black;font-size:0.7vw">Armature lift measurement(CRI)</span>
						</a>
						</td>
						<td style="width:4vw">
<a>
						<c:choose>
								<c:when test="${celianggongjus[2].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang4.do">
						<span style="color: black;font-size:0.7vw">Armature lift measurement(CRIN)</span>
						</a>
						</td>
						<td style="width:4vw">
<a >
						<c:choose>
								<c:when test="${celianggongjus[3].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1.8vw;display: inline-block;margin-top: 1.8vh">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang5.do">
						<span style="color: black;font-size:0.7vw">Pako(Clearance measurement)</span>
						</a>
						</td>
						<td style="width:4vw">
<a >
						<c:choose>
								<c:when test="${celianggongjus[4].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang6.do">
						<span style="color: black;font-size:0.7vw">Mahr(surface profire)</span>
						</a>
						</td>
						<td style="width:4vw">
<a >
						<c:choose>
								<c:when test="${celianggongjus[5].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang7.do">
						<span style="color: black;font-size:0.7vw">VM Picture system</span>
						</a>
						</td>
						<td style="width:4vw">
<a >
						<c:choose>
								<c:when test="${celianggongjus[6].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang8.do">
						<span style="color: black;font-size:0.7vw">Leica microscope</span>
						</a>
						</td>
						<td style="width:4vw">
<a >
						<c:choose>
								<c:when test="${celianggongjus[7].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1.8vw;display: inline-block;margin-top: 1.8vh">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang9.do">
						<span style="color: black;font-size:0.7vw">Keyence(Microscope)</span>
						</a>
						</td>
						<td style="width:4vw">
<a >
						<c:choose>
								<c:when test="${celianggongjus[8].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang10.do">
						<span style="color: black;font-size:0.7vw">HiRox(Microscope)</span>
						</a>
						</td>
						<td style="width:4vw">
<a >
						<c:choose>
								<c:when test="${celianggongjus[9].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang11.do">
						<span style="color: black;font-size:0.7vw">Dry closing time test device</span>
						</a>
						</td>
						<td style="width:4vw">
<a >
						<c:choose>
								<c:when test="${celianggongjus[10].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang12.do">
						<span style="color: black;font-size:0.7vw">Cutting machine</span>
						</a>
						</td>
						<td style="width:4vw">
<a >
						<c:choose>
								<c:when test="${celianggongjus[11].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1.8vw;display: inline-block;margin-top: 1.8vh">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang13.do">
						<span style="color: black;font-size:0.7vw">Polishing machine</span>
						</a>
						</td>
						<td style="width:4vw">
<a>
						<c:choose>
								<c:when test="${celianggongjus[12].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			<div style="background: white;width:23%;height: 8.2vh;margin-left: 1vw;display: inline-block;">
				<table style="padding-top:1.8vh;display: block;margin-left: 0.8vw">
					<tr>
						<td style="width:2.7vw"><span class="iconfont icon-zhuangji" style="color: white;font-size:2.1vw;background-color:#8E8E8E"></span></td>
						<td style="width:11.7vw">
						<a href="/EPD/celianggongju/toceliang14.do">
						<span style="color: black;font-size:0.7vw">Mounting machine</span>
						</a>
						</td>
						<td style="width:4vw">
<a>
						<c:choose>
								<c:when test="${celianggongjus[13].gongjuzhuangtai==0}">
						<span class="iconfont icon-zhengque" style="color:#219b3e ;font-size: 2vw"></span>
								</c:when>
								<c:otherwise>
									<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color:#d55b5b ;font-size: 2vw"></span>
								</c:otherwise>
						</c:choose>
						</a>						</td>
					</tr>
				</table>
			</div>
			
			<div style="display: inline-block;margin-left: 10%;width: 28%">
			<table style="width: 100%">
			<tr>
				<td style="width: 10%">
					<span class="iconfont icon-zhengque" style="color: #219b3e;font-size: 1.7vw"></span>
				</td>
				<td>
					<span style="vertical-align:middle;width: 10%">Ok</span>
				</td>
				<td style="width: 10%">
					<span class="iconfont icon-yingyongchengxu-zhishe-weibaoweixiu" style="color: #d55b5b;font-size: 1.7vw"></span>
				</td>
				<td>
					<span style="vertical-align:middle;width: 10%">Down</span>
				</td>
			</tr>
			</table>
			</div>
			<br>
			<br>
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