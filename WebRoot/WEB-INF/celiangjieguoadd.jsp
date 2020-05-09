<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Test Results List</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="multipart/form-data;charset=utf-8" />
<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
<link rel="stylesheet" href="/EPD/layui/css/layui.css" media="all">
<link rel="stylesheet" href="/EPD/f/iconfont.css" media="all">
<script src="/EPD/js/jquery-1.11.2.min.js"></script>
<script src="/EPD/f/iconfont.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<style type="text/css">
body{
overflow-x: hidden;
}
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

.upload_file {
	height: 38px;
	position: relative;
}

.upload_file input {
	position: absolute;
	left: 0;
	top: 0;
}

.upload_file input[type='file'] {
	z-index: 10;
	opacity: 0;
}

.upload_file input[type='text'] {
	z-index: 9;
}
table tr:nth-child(even){background:#cfe1ec;}
/*
table td:nth-child(even){color:#cfe1ec;}
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
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Other equipment</div></div>
	<form action="/EPD/celiangjieguo/celiangjieguoAdd.do" method="post" enctype="multipart/form-data" id="tt1">
		<div style="margin-left:16%;margin-top: 52px">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 7vw;display: inline-block;">Test Bench:</label> 
				<select id="test_bench" class="in" style="height: 3.5vh;width: 19.2%" name="test_bench"> 
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
				<label style="font-family: 微软雅黑;font-size: 0.78vw;margin-left: 16%;width: 5vw;display: inline-block;">Select:</label>
			<select id="selectt"  class="in" name="selectt">
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
		</div>
		<div style="margin-left:16%;margin-top: 16px">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 7vw;display: inline-block;">Date:</label> <input
				type="text" id="test55" class="in" name="tty" autocomplete="off">
			
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 5vw;display: inline-block;margin-left:16%;" id="drop">upload:</label>
			
				<input type="file" id="file" name="file" />
				<br><br><br>
			<input type="button" value="Confirm" style="width: 78px;height: 30px;margin-left: 34%;margin-top:2%" onclick="tanchuang();"/>
		</div>
		<br><br><br><br><br>
		<div style=" overflow:scroll;">
		<table id="ta"  style="width: 90%;font-size: 16px;color:#97a1ae;font-family: '微软雅黑';margin-left: 5%;text-align: center;">
			<tr height="40px">
				<td></td>
				<td>Test Point1</td>
				<td>Test Point2</td>
				<td>Test Point3</td>
				<td>Test Point4</td>
				<td>Test Point5</td>
				<td>Test Point6</td>
				<td>Test Point7</td>
				<td>Test Point8</td>
				<td>Test Point9</td>
			</tr>
			<tr  height="40px" style="background-color: #cfe1ec">
			<td>Injector No.</td>
			<td colspan="9"></td>
			</tr>
		</table>
		</div>
	</form>
	</div>
</body>
<script src="/EPD/jss/alertify.js"></script>
<script src="/EPD/jss/canvas-datagrid.js"></script>
<script src="/EPD/js/jquery-1.11.2.min.js"></script>
<script data-cfasync="false" src="/EPD/jss/email-decode.min.js"></script>
<script src="/EPD/jss/xlsx.full.min.js"></script>
<script src="/EPD/jss/dropsheet.js"></script>
<script src="/EPD/jss/main.js"></script>
<script src="/EPD/jss/spin.js"></script>
<script type="text/javascript">
		
	$("#file").change(
	function(){
		var formData = new FormData();
		var selectt=document.getElementById('selectt').value;
		var test_bench=document.getElementById('test_bench').value;
		formData.append("file", $("#file")[0].files[0]);  
	    formData.append("selectt", selectt);
	    formData.append("test_bench",test_bench);
		$.ajax({
			type: "post",
			url:"/EPD/celiangjieguo/celiangExcel.do",
			data:formData,
			cache: false,//上传文件无需缓存
            processData: false,//用于对data参数进行序列化处理 这里必须false
            contentType: false, //必须
            success: function (result) {
            	$(".mytr").remove();
                $.each(result,function(index,obj){
                	var trstr = '<tr class="mytr" height="40px">';
                	trstr+='<td>Nr.'+(index+1)+'</td>';
                	trstr+='<td>'+parseFloat(obj.test_point1).toFixed(2)+'</td>';
                	trstr+='<td>'+parseFloat(obj.test_point2).toFixed(2)+'</td>';
                	trstr+='<td>'+parseFloat(obj.test_point3).toFixed(2)+'</td>';
                	trstr+='<td>'+parseFloat(obj.test_point4).toFixed(2)+'</td>';
                	trstr+='<td>'+parseFloat(obj.test_point5).toFixed(2)+'</td>';
                	trstr+='<td>'+parseFloat(obj.test_point6).toFixed(2)+'</td>';
                	trstr+='<td>'+parseFloat(obj.test_point7).toFixed(2)+'</td>';
                	trstr+='<td>'+parseFloat(obj.test_point8).toFixed(2)+'</td>';
                	trstr+='<td>'+parseFloat(obj.oil_point).toFixed(2)+'</td>';
                	trstr+='</tr>';
                $("#ta").append(trstr);
                });
            },
            error: function () {
                alert("回显失败!");
            }
		});
		
	});
	
</script>

<script type="text/javascript">
	function tanchuang(){
		if(window.confirm('确认提交？')){
		document.getElementById("tt1").submit();
			
		}else{
			return false;
		}
	}
	</script>
<script>
	//注意：折叠面板 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function() {
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
			window.location.href = url;
		}
	}
	$(document).ready(function(){ 
		five();
	});
</script>
<script>
	layui.use('laydate', function() {
		var laydate = layui.laydate;

		//日期时间选择器
		laydate.render({
			elem : '#test55',
			type : 'date'
		});

	});
</script>
</html>