<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bench Overview</title>
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
table tr{
border: 1px solid #c7c7c7;
}
</style>
</head>
<body>
	<%@ include file="left.jsp"%> 
	<%@ include file="top.jsp"%>
	
	<!-- 主体内容 -->
      <div id="main">
        <!-- 蓝条  style="-webkit-appearance: none;"-->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Bench overview</div></div>
    	<div style="display: flex;">
    	<div style="background-color: #ededed;width: 11%;height: 87vh"></div>
    	<div style="width: 78%;">
    	<table align="center" style="margin-top: 22px;width: 86%;text-align: center;color:#a2a9b4">
    		<tr  style="color:#31c8f9;height:40px">
    			<td rowspan="4" style="border: 1px solid #c7c7c7;color:#31c8f9;font-size: 14px;font-family: 微软雅黑">CRIN</td>
    			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    			<td style="font-size: 12px;font-family: 微软雅黑;color: #31c8f9">CI4000 F1</td>
    			<td style="font-size: 12px;font-family: 微软雅黑;color: #31c8f9">CI4000 F2</td>
    			<td style="font-size: 12px;font-family: 微软雅黑;color: #31c8f9">CI4000 F3</td>
    			<td style="font-size: 12px;font-family: 微软雅黑;color: #31c8f9">CI4000 F4</td>
    			<td style="font-size: 12px;font-family: 微软雅黑;color: #31c8f9">ESS F6</td>
    			<td style="font-size: 12px;font-family: 微软雅黑;color: #31c8f9">ESS F8(NEW)</td>
    		</tr>
    		<tr height="40px">
    		<td style="font-size: 12px;font-family: 微软雅黑;color: #7d8186">CRIN25L/C</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian1==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian1==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian2==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian2==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td></td>
    			<td></td>
    			<td>
    			<c:choose>
    				<c:when test="${dian3==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian3==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td></td>
    		</tr>
    		<tr height="40px">
    		<td style="font-size: 12px;font-family: 微软雅黑;color: #7d8186">CRIN3-20/18</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian4==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian4==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian5==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian5==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td></td>
    			<td></td>
    			<td>
    			<c:choose>
    				<c:when test="${dian6==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian6==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td></td>
    		</tr>
    		<tr height="40px">
    		<td style="font-size: 12px;font-family: 微软雅黑;color: #7d8186">CRIN2-16</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian7==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian7==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian8==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian8==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td></td>
    			<td></td>
    			<td>
    			<c:choose>
    				<c:when test="${dian9==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian9==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td></td>
    		</tr>
    		<tr height="40px">
    			<td rowspan="3" style="border: 1px solid #c7c7c7;color:#31c8f9;font-size: 14px;font-family: 微软雅黑">CRI</td>
    			<td style="font-size: 12px;font-family: 微软雅黑;color: #7d8186">CRI2-20/18</td>
    			<td></td>
    			<td></td>
    			<td>
    			<c:choose>
    				<c:when test="${dian10==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian10==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian11==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian11==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td></td>
    			<td>
    			<c:choose>
    				<c:when test="${dian12==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian12==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    		</tr>
    		<tr height="40px">
    		<td style="font-size: 12px;font-family: 微软雅黑;color: #7d8186">CRI2-16</td>
    			<td></td>
    			<td>
    			<c:choose>
    				<c:when test="${dian13==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian13==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian14==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian14==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian15==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian15==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian16==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian16==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian17==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian17==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    		</tr>
    		<tr height="40px">
    		<td style="font-size: 12px;font-family: 微软雅黑;color: #7d8186">CRI1-20/18/16</td>
    			<td></td>
    			<td>
    			<c:choose>
    				<c:when test="${dian18==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian18==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian19==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian19==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian20==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian20==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian21==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian21==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    			<td>
    			<c:choose>
    				<c:when test="${dian22==1}">
    					<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:when test="${dian22==2}">
    					<span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>
    				</c:when>
    				<c:otherwise>
    					<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>
    				</c:otherwise>
    			</c:choose>
    			</td>
    		</tr>
    	</table>
    	<br><br>
    		<div>
    			<label style="color:#858a8a ;font-size: 19px;float: right;"><span style="font-size: 26px;color:#4ccf84" class="iconfont icon-yuan1"></span>&nbsp;&nbsp;Qualified&nbsp;&nbsp;<span style="font-size: 26px;color:#e78f35" class="iconfont icon-yuan1"></span>&nbsp;&nbsp;Overdue&nbsp;&nbsp;<span style="font-size: 26px;color:#f51818" class="iconfont icon-yuan1"></span>&nbsp;&nbsp;over Limit&nbsp;&nbsp;</label>
    		</div>
    	</div>
    	  <div style="background-color: #ededed;width: 11%;height: 87vh"></div>
    	</div>
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