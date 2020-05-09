<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>OnePage</title>
<!-- 
<meta http-equiv="refresh" content="10">
 -->
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="/EPD/f/iconfont.css" media="all">
<script src="/EPD/js/jquery-1.11.2.min.js"></script>
<script src="/EPD/f/iconfont.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<style type="text/css">
/*
table tr td{
border: 1px solid;
}
overflow-y:hidden;
*/
html{
overflow-x:hidden;
}
</style>
</head>
<body >
<table style="width:97%;margin-left: 2%">
   <tr>
   <td style="width: 75%">
   <span style="font-size: 2vw;font-family:微软雅黑;color: #16b8fb;margin-left: 3%;margin-top: 1.5vh">Test Bench Status</span></td>
    <td>
    <span style='color: #25cd68;font-size:2.5vw;vertical-align: middle;' class="iconfont icon-bofang"></span>
    <span style="font-size: 0.63vw;color:#666461;vertical-align: middle;">Running</span>
    </td>
    <td>
    <span style="color: #2bc0e8;font-size:2.5vw;vertical-align: middle;" class="iconfont icon-zanting"></span>
    <span style="font-size: 0.63vw;color:#666461;vertical-align: middle;">Stand by</span>
    </td>
    <td>
    <span style="color: #ee3a3a;font-size:2.5vw;vertical-align: middle;" class="iconfont icon-bofang1"></span>
    <span style="font-size: 0.63vw;color:#666461;vertical-align: middle;">Down</span>
    </td>
   </tr>
  </table>	
		<!-- 1 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#16ca5e;margin-left: 3.3%;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">CI4000 F1</td>
				<td>
					<c:choose>
				<c:when test="${taijias[0].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[0].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[0].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[0].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[0].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
					Pressure level:2500bar
					<br>
					Product:CRIN&nbsp;2-16,3-18/20BL/2x
				</td>
				<td rowspan="2">
					<c:choose>
				<c:when test="${taijias[0].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[0].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	<!-- 2 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#16ca5e;margin-left: 1.3vw;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">CI4000 F2</td>
				<td>
					<c:choose>
				<c:when test="${taijias[1].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[1].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[1].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[1].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[1].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
		    		Pressure level:2500bar
		    		<br>
    				Product:CRIN 2-16,3-18/20BL/2x  
    				<br>
   				 	CRI 2-16,1-20/18
				</td>
				<td rowspan="2">
					<c:choose>
				<c:when test="${taijias[1].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[1].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	<!-- 3 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#16ca5e;margin-left: 1.3vw;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">CI4000 F3</td>
				<td>
					<c:choose>
				<c:when test="${taijias[2].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[2].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[2].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[2].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[2].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
		   			 Pressure level:2000bar<br>
    				Product:CRI 2-16/18,1-18/20
				</td>
				<td rowspan="2">
					<c:choose>
				<c:when test="${taijias[2].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[2].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	<!-- 4 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#16ca5e;margin-left: 1.3vw;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">CI4000 F4</td>
				<td>
					<c:choose>
				<c:when test="${taijias[3].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[3].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[3].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[3].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[3].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
		   		Pressure level:2200bar<br>
    			CRI 2-16/18,1-20/18
				</td>
				<td rowspan="2">
					<c:choose>
				<c:when test="${taijias[3].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[3].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	<!-- 5 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#dca010;margin-left: 1.3vw;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">ESS F6</td>
				<td>
					<c:choose>
				<c:when test="${taijias[4].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[4].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[4].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[4].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[4].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
		  		  Pressure level:2500bar<br>
  				 	Product:CRIN 2-16,3-18/20BL/2x<br>
  			 		 CRI 2-16,1-18/20

		

				</td>
				<td rowspan="2">
					<c:choose>
				<c:when test="${taijias[4].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[4].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	<!-- 6 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#16ca5e;margin-left: 3.3%;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">CI4000-RAK F7</td>
				<td>
					<c:choose>
				<c:when test="${taijias[5].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[5].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[5].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[5].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[5].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
    			Pressure level:3000bar<br>
    			Product: Rail,PLV,PCV,RDS
				</td>
				<td rowspan="2">
					<c:choose>
				<c:when test="${taijias[5].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[5].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	<!-- 7 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#dca010;margin-left: 1.3vw;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">ESS F8(NEW)</td>
				<td>
					<c:choose>
				<c:when test="${taijias[6].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[6].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[6].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[6].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[6].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
    			Pressure level:2000bar<br>
			    Product:CRI 2-16,1-18/20
				</td>
				<td rowspan="2">
					<c:choose>
				<c:when test="${taijias[6].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[6].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	<!-- 8 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#7966a0;margin-left: 1.3vw;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">Nozzle flow rate</td>
				<td>
					<c:choose>
				<c:when test="${taijias[8].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[8].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[8].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[8].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[8].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
    			Pressure level:/<br>
   				 Product:P nozzle
				</td>
				<td rowspan="2">
					<c:choose>
				<c:when test="${taijias[8].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[8].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	<!-- 9 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#7966a0;margin-left: 1.3vw;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">Nozzle Pdoe</td>
				<td>
					<c:choose>
				<c:when test="${taijias[9].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[9].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[9].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[9].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[9].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
    				Pressure level:/<br>
    			Product:P nozzle
				</td>
				<td rowspan="2">
				<c:choose>
				<c:when test="${taijias[9].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[9].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	<!-- 10 -->
	<div style="width: 17.4%;height: 15.6vh;border: 3px solid;border-radius:5px;color:#5dc8e3;margin-left: 1.3vw;margin-top:1vh;display: inline-block;">
		<table style="width:100%;margin-top:5%;">
			<tr>
				<td style="width: 71%;font-size:1.3vw;color: #939090">HSM</td>
				<td>
					<c:choose>
				<c:when test="${taijias[10].shifoudianjian==0}">
				<c:choose>
					<c:when test="${taijias[10].rijian==0}">
					<span style="font-size: 1vw;color: #fbf460" class="iconfont icon-D"></span>
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
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-M"></span>
					</c:when>
					<c:when test="${taijias[10].yuejian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-M"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-M"></span>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${taijias[10].nianjian==0}">
					<span style="font-size: 1vw;margin-left: 1%;color: #fbf460" class="iconfont icon-Y"></span>
					</c:when>
					<c:when test="${taijias[10].nianjian==1}">
					<span style="font-size: 1vw;margin-left: 1%;color: #25cd68" class="iconfont icon-Y"></span>
					</c:when>
					<c:otherwise>
					<span style="font-size: 1vw;margin-left: 1%;color: #e86161" class="iconfont icon-Y"></span>
					</c:otherwise>
				</c:choose>
				</c:when>
				<c:otherwise>
					<span style="font-size: 1vw;color: #a9afb8" class="iconfont icon-D"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-M"></span>
					<span style="font-size: 1vw;margin-left: 1%;color: #a9afb8" class="iconfont icon-Y"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>
			<table style="width: 100%;margin-top:1vh;">
			<tr >
				<td style="width:71%;font-family: 微软雅黑;font-size: 0.63vw;color:#666461">
    				Pressure level:/<br>
    			Product:HSM,ARB,HGI,Mini HSM
				</td>
				<td rowspan="2">
				<c:choose>
				<c:when test="${taijias[10].taijiazhuangtai==0}">
					<span style='color: #25cd68;font-size:3.5vw;' class="iconfont icon-bofang"></span>
				</c:when>
				<c:when test="${taijias[10].taijiazhuangtai==1}">
					<span style="color: #2bc0e8;font-size:3.5vw;" class="iconfont icon-zanting"></span>
				</c:when>
				<c:otherwise>
					<span style="color: #ee3a3a;font-size:3.5vw;" class="iconfont icon-bofang1"></span>
				</c:otherwise>
				</c:choose>
				</td>
			</tr>
		</table>	
	</div>
	
	<img  src="/EPD/image/OnePage.png" style="width:102%;height: 8vh;margin-top: 1%;margin-left: -1%">
	
	
	
	<!-- 人员不论波 -->
	<!-- 人员不论波 -->
	<label style="font-size: 2vw;font-family:微软雅黑;color: #16b8fb;display: block;margin-left: 3%;">Mechanic Task Assigned</label>
     <table>
		<tr>
		<td>
      <c:choose>
      <c:when test="${sys_users[0].on_the_job!='off'}">
	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong1.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[0].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[0].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%;min-width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.order_placer}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${paid_leaves[0]}" var="a">
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%">${fn:substring(a.paid_leave_start,10,16)}~${fn:substring(a.paid_leave_end,10,16)}</label>
				</td>
				</tr>
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%;min-width: 100%">Leave&nbsp;&nbsp;&nbsp;&nbsp;${a.paid_leave_time}h&nbsp;&nbsp;</label>
				</td>
				</tr>
			</c:forEach>
		</table>
	</div>
      </c:when>
      <c:otherwise>
      	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong1.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[0].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
      </td>
      <td>
	<c:choose>
      <c:when test="${sys_users[1].on_the_job!='off'}">
	<div   style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong2.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[1].username}</label>
		<table style="width: 100%;line-height:2vh">
		<c:forEach items="${sys_users[1].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.order_placer}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
		<table style="width: 100%;line-height:2vh">
		<c:forEach items="${paid_leaves[1]}" var="a">
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%">${fn:substring(a.paid_leave_start,10,16)}~${fn:substring(a.paid_leave_end,10,16)}</label>
				</td>
				</tr>
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%;min-width: 100%">Leave&nbsp;&nbsp;&nbsp;&nbsp;${a.paid_leave_time}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	 </c:when>
      <c:otherwise>
      	<div style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong2.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[1].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
      </td>
      <td>
	<c:choose>
      <c:when test="${sys_users[2].on_the_job!='off'}">
	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.3vw;display: inline-block;background: url('/EPD/image/gong3.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[2].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[2].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.order_placer}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
		<table style="width: 100%;line-height:2vh">
		<c:forEach items="${paid_leaves[2]}" var="a">
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%">${fn:substring(a.paid_leave_start,10,16)}~${fn:substring(a.paid_leave_end,10,16)}</label>
				</td>
				</tr>
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%;min-width: 100%">Leave&nbsp;&nbsp;&nbsp;&nbsp;${a.paid_leave_time}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</c:when>
      <c:otherwise>
      	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong3.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[2].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
      </td>
      <td>
	<c:choose>
      <c:when test="${sys_users[3].on_the_job!='off'}">
	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong4.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[3].username}</label>
		 <table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[3].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.order_placer}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
		<table style="width: 100%;line-height:2vh">
		<c:forEach items="${paid_leaves[3]}" var="a">
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%">${fn:substring(a.paid_leave_start,10,16)}~${fn:substring(a.paid_leave_end,10,16)}</label>
				</td>
				</tr>
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%;min-width: 100%">Leave&nbsp;&nbsp;&nbsp;&nbsp;${a.paid_leave_time}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</c:when>
      <c:otherwise>
      	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong4.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[3].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
      </td>
      <td>
	<c:choose>
      <c:when test="${sys_users[4].on_the_job!='off'}">
	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong5.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[4].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[4].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.order_placer}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
		<table style="width: 100%;line-height:2vh">
		<c:forEach items="${paid_leaves[4]}" var="a">
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%">${fn:substring(a.paid_leave_start,10,16)}~${fn:substring(a.paid_leave_end,10,16)}</label>
				</td>
				</tr>
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%;min-width: 100%">Leave&nbsp;&nbsp;&nbsp;&nbsp;${a.paid_leave_time}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</c:when>
      <c:otherwise>
      	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong5.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[4].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
      </td>
      <td>
	<c:choose>
      <c:when test="${sys_users[5].on_the_job!='off'}">
	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong6.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[5].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[5].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.order_placer}</label>
				</td>
			</tr>
	</c:forEach>
		</table>
		<table style="width: 100%;line-height:2vh">
		<c:forEach items="${paid_leaves[5]}" var="a">
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%">${fn:substring(a.paid_leave_start,10,16)}~${fn:substring(a.paid_leave_end,10,16)}</label>
				</td>
				</tr>
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%;min-width: 100%">Leave&nbsp;&nbsp;&nbsp;&nbsp;${a.paid_leave_time}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</c:when>
      <c:otherwise>
      	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong6.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[5].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
      </td>
      <td>
	<c:choose>
      <c:when test="${sys_users[6].on_the_job!='off'}">
	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong7.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[6].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[6].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.order_placer}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
		<table style="width: 100%;line-height:2vh">
		<c:forEach items="${paid_leaves[6]}" var="a">
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%">${fn:substring(a.paid_leave_start,10,16)}~${fn:substring(a.paid_leave_end,10,16)}</label>
				</td>
				</tr>
				<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 100%;min-width: 100%">Leave&nbsp;&nbsp;&nbsp;&nbsp;${a.paid_leave_time}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
		</c:when>
      <c:otherwise>
      	<div  style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.1vw;display: inline-block;background: url('/EPD/image/gong7.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[6].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
      </td>
      </tr>
     </table>
	<!-- 人员 
	<label style="font-size: 2vw;font-family:微软雅黑;color: #16b8fb;display: block;margin-left: 3%;">Mechanic Task Assigned</label>
	 <div id="focus" style="display: inline-block;">
	 <ul  style="display: inline-block;">  
      <li>
      <c:choose>
      <c:when test="${sys_users[0].on_the_job!='off'}">
	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.4vw;display: inline-block;background: url('/EPD/image/gong1.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[0].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[0].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%;min-width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
      </c:when>
      <c:otherwise>
      	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.4vw;display: inline-block;background: url('/EPD/image/hei1.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[0].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
	</li>
	<li>
	<c:choose>
      <c:when test="${sys_users[1].on_the_job!='off'}">
	<div  class="switch_pic" id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.3vw;display: inline-block;background: url('/EPD/image/gong2.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[1].username}</label>
		<table style="width: 100%;line-height:2vh">
		<c:forEach items="${sys_users[1].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	 </c:when>
      <c:otherwise>
      	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.4vw;display: inline-block;background: url('/EPD/image/hei2.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[1].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
	</li>
	<li>
	<c:choose>
      <c:when test="${sys_users[2].on_the_job!='off'}">
	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.3vw;display: inline-block;background: url('/EPD/image/gong3.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[2].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[2].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</c:when>
      <c:otherwise>
      	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.4vw;display: inline-block;background: url('/EPD/image/hei3.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[2].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
	</li>
	<li>
	<c:choose>
      <c:when test="${sys_users[3].on_the_job!='off'}">
	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.3vw;display: inline-block;background: url('/EPD/image/gong4.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[3].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[3].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</c:when>
      <c:otherwise>
      	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.4vw;display: inline-block;background: url('/EPD/image/hei4.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[3].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
	</li>
	<li>
	<c:choose>
      <c:when test="${sys_users[4].on_the_job!='off'}">
	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.3vw;display: inline-block;background: url('/EPD/image/gong5.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[4].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[4].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</c:when>
      <c:otherwise>
      	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.4vw;display: inline-block;background: url('/EPD/image/hei5.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[4].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
	</li>
	<li>
	<c:choose>
      <c:when test="${sys_users[5].on_the_job!='off'}">
	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.3vw;display: inline-block;background: url('/EPD/image/gong6.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[5].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[5].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
	</c:forEach>
		</table>
	</div>
	</c:when>
      <c:otherwise>
      	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.4vw;display: inline-block;background: url('/EPD/image/hei6.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[5].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
	</li>
	<li>
	<c:choose>
      <c:when test="${sys_users[6].on_the_job!='off'}">
	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.3vw;display: inline-block;background: url('/EPD/image/gong7.png');background-size:100% 100%;background-repeat: no-repeat;">
		<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[6].username}</label>
		<table style="width: 100%;line-height:2vh">
			<c:forEach items="${sys_users[6].scheduling_list}" var="a">
			<tr>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.start_time}~${a.end_time}</label>
				</td>
				<td style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;width: 50%">${a.scheduling_hours}h&nbsp;&nbsp;</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;display: block;">${a.scheduling_kb}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.bench_name}</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<label style="color: #ffffff;font-size: 0.78vw;">${a.typeOrder}</label>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
		</c:when>
      <c:otherwise>
      	<div class="switch_pic"  id="dd" style="width: 12.46vw;height:42vh;border-radius:5px;margin-left: 1.4vw;display: inline-block;background: url('/EPD/image/hei7.png');background-size:100% 100%;background-repeat: no-repeat;">
      			<label style="color: #ffffff;font-size: 1.15vw;text-align:center;display: block;">${sys_users[6].username}</label>
      	<label style="font-size: 2.2vw;font-family: 微软雅黑;color: white;text-align:center;display: block;margin-top: 50%">Leave</label>
      </div>
      </c:otherwise>
      </c:choose>
	</li>
	</ul>
	</div>
	-->
	<!--轮播  
	<script type="text/javascript" src="/EPD/js/lazyload.min.js"></script>
   <script type="text/javascript">
    $(function() {  
        new LazyLoad({
            elements_selector: ".chara_switch"//lazyload的基本用法，就这一句话。
        });
        //原理和单张图片平移一样的
        //多个图片一直移动，一个图片移动到最左在屏幕里消失后，就移到最右的末端开始下一次左移，无限循环。

        var sWidth = $("#focus ul li").width(); //获取每张图片的宽度，因为我设了margin，所以每张图要在原有宽度上再加一点margin的距离 
        var len = $("#focus ul li").length; //获取图片个数  
        var index = 0;  
        var loop = 0;
        var picTimer;  
        var $pics = $("#focus ul").find('li');//这里的移动是移动的li，而不是li里的div了。
        showPics(index);  
        picTimer = setInterval(function() {  
            index++;  //index不再需要反复致零
            showPics(index);  
        },9000); 
        function showPics(index) { //普通切换  
            var nowLeft = -sWidth*(index+1); //整个ul无限左移
            var $pic = $pics.eq(index%len);//用求余获得图片的index

            $("#focus ul").animate({"left":nowLeft},9000,"linear",function(){
            //这里不会解释……自己运行的时候按F12观察一下left是怎么变动的就理解了……
                if(index%len == 0){
                    loop++;
                }
                $pic.css("left",sWidth*(len*loop));
            });
        }  

//下面是最前端的描边人物的交替动画，可无视，可删除。
        var indexChara = 0;
        var $charas = $(".switch_hero").find('.chara_switch');
        var charalen = $charas.length;
        // switchCharas(indexChara);  
        setInterval(function() {
            switchCharas(indexChara);  
            indexChara++;  
            if(indexChara == charalen) {indexChara = 0;}  
        },5000); 
        function switchCharas(indexChara) { //普通切换  
            var $chara = $charas.eq(indexChara%charalen);
            var $nextchara = $charas.eq((indexChara+1)%charalen);

//这里用的是animate.css，js_hide自己写的，大概就是什么display:none啊visibility: hidden啊这类的设置。
            $nextchara.removeClass('js_hide');
            $nextchara.addClass('animated fadeIn');
            $nextchara.one('animationend', function() {
                $(this).removeClass('animated fadeIn');
                $(this).removeClass('js_hide');
            });
            $chara.addClass('animated fadeOut');
            $chara.one('animationend', function() {
                $(this).removeClass('animated fadeOut');
                $(this).addClass('js_hide');
            });
        }  

    });  
</script>
-->

<style type="text/css">
    #focus ul{width:120vw;height:42vh;position:relative;white-space:nowrap;}  
    #focus ul li{display: inline-block;float:left;width:16.6vw;height:42vh;position:relative;}  
    #focus ul li div{position:absolute;width: 12.46vw;height:42vh;}  
</style>

</body>
</html>