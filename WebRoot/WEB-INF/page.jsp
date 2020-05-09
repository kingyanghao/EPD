<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
html {
	overflow-x: hidden;
	overflow-y: hidden;
}

body {
	background: url("../images/12334.png") no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
	background-color: #CCCCCC;
}

span {
	font-size: 1.2vw;
	font-family: "微软雅黑";
	color: #333
}
a:hover{
    text-decoration:none;//鼠标放上面不显示下划线
} 
</style>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
<body>
	<div style="margin-left: 12vw;margin-top: 4vh">
		<a href="http://eng.bosch-iov.com/#/"><span
			style="margin-left: 5vw;vertical-align: middle;display: inline-block;">管理</span></a>
		<span onclick="closewin()"
			style="margin-left: 2.2vw;vertical-align: middle;display: inline-block;cursor:pointer;">数据</span>
		<span
			style="margin-left: 2.2vw;vertical-align: middle;display: inline-block;cursor:pointer;">APP</span>
	</div>

	<a href="http://eng.bosch-iov.com/#/"><img
		style="height:38.5vh;width: 25vw;margin-left:9.7vw;margin-top:48vh;"
		src="../images/kongzhi.png"></a>
	<img onclick="closewin()"
		style="height:38.5vh;width: 25vw;margin-left: 2.8vw;cursor:pointer;"
		src="../images/shuju.png">
	<img style="height:38.5vh;width: 25vw;margin-left: 1.6vw;cursor:pointer;"
		src="../images/app1.png">
	<!-- 
	<img style="width: 100%;height: 2vh" src="../images/caidai.png">
 	-->

</body>
<script type="text/javascript">
	function closewin() {
		window.opener = null;
		window.open('', '_self');
		window.close();
	}
</script>

</html>