<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
/*
table tr td{
border: 1px solid;
}
*/
.in {
	background: -moz-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #eceff2),
		color-stop(50%, #eff2f4), color-stop(100%, #f9fafb));
	background: -webkit-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	background: -o-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	background: -ms-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	border-radius: 5px;
	width: 19%;
	height: 31px;
}
.in1 {
	background: -moz-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #eceff2),
		color-stop(50%, #eff2f4), color-stop(100%, #f9fafb));
	background: -webkit-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	background: -o-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	background: -ms-linear-gradient(top, #eceff2 0%, #eff2f4 50%, #f9fafb 100%);
	border-radius: 5px;
	width: 19%;
	height: 28px;
}
</style>
</head>
<body>
	<%@ include file="left.jsp"%> 
	<%@ include file="top.jsp"%>
	
	<!-- 主体内容 -->
      <div id="main">
        <!-- 蓝条  style="-webkit-appearance: none;"-->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Tolerance Setting</div></div>
	<form action="/EPD/gongcha/gongchaxiugai.do" method="post" id="ttt1" onsubmit="javascript:return confirm('确定修改？');">
		<input type="hidden" value="${gongcha.id}" name="id">
		<div>
			<label style="color:#919aa7;margin-top: 10vh;margin-left: 14%;width:6.6%;display: inline-block;font-size: 0.8vw">Product Type:</label>
			<input class="in" name="product" value="${gongcha.product}" readonly="readonly">
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 14%;width:6.6%;display: inline-block;font-size: 0.8vw">Inj.Nr.:</label>
			<input type="text" class="in" name="injector_no" value="${gongcha.injector_no}" readonly="readonly">
		</div>
		<div>
		<label style="color:#919aa7;margin-top: 2vh;margin-left: 14%;width:6.6%;display: inline-block;font-size: 0.8vw">Test Bench</label>
			<input class="in" name="bench" value="${gongcha.bench}" readonly="readonly">
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 14%;width:6.6%;display: inline-block;font-size: 0.8vw">Coefficinet:</label>
			<input type="number" min="-100000" max="10000" step="0.01" class="in" name="coefficinet" value="${gongcha.coefficinet}">
		</div>
		<!-- Test point 1: -->
		<div>
			<label style="color:#919aa7;margin-top: 5vh;margin-left: 19%;width:7.2%;display: inline-block;font-size: 0.8vw">Test point 1:</label>
			<label style="color:#919aa7;margin-top: 2vh;width:6.6%;display: inline-block;font-size: 0.8vw">Tolerance:</label>
			<input value="${gongcha.tolerance1}" name="tolerance1" class="in1" style="width: 7.2%;" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" />
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">Normal Value:</label>
			<input value="${gongcha.normal1}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="normal1" class="in1" style="width: 7.2%;">
			<label  style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">ESS Offset:</label>
			<input value="${gongcha.ess1}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="ess1" class="in1" style="width: 7.2%;">
		</div>
		<!-- Test point 2: -->
		<div>
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 19%;width:7.2%;display: inline-block;font-size: 0.8vw">Test point 2:</label>
			<label style="color:#919aa7;margin-top: 2vh;width:6.6%;display: inline-block;font-size: 0.8vw">Tolerance:</label>
			<input value="${gongcha.tolerance2}"  onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="tolerance2" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">Normal Value:</label>
			<input value="${gongcha.normal2}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="normal2" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">ESS Offset:</label>
			<input value="${gongcha.ess2}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="ess2" class="in1" style="width: 7.2%;">
		</div>
		<!-- Test point 3: -->
		<div>
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 19%;width:7.2%;display: inline-block;font-size: 0.8vw">Test point 3:</label>
			<label style="color:#919aa7;margin-top: 2vh;width:6.6%;display: inline-block;font-size: 0.8vw">Tolerance:</label>
			<input value="${gongcha.tolerance3}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="tolerance3" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">Normal Value:</label>
			<input value="${gongcha.normal3}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="normal3" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">ESS Offset:</label>
			<input value="${gongcha.ess3}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="ess3" class="in1" style="width: 7.2%;">
		</div>
		<!-- Test point 4: -->
		<div>
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 19%;width:7.2%;display: inline-block;font-size: 0.8vw">Test point 4:</label>
			<label style="color:#919aa7;margin-top: 2vh;width:6.6%;display: inline-block;font-size: 0.8vw">Tolerance:</label>
			<input value="${gongcha.tolerance4}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="tolerance4" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">Normal Value:</label>
			<input value="${gongcha.normal4}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="normal4" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">ESS Offset:</label>
			<input value="${gongcha.ess4}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="ess4" class="in1" style="width: 7.2%;">
		</div>
		<!-- Test point 5: -->
		<div>
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 19%;width:7.2%;display: inline-block;font-size: 0.8vw">Test point 5:</label>
			<label style="color:#919aa7;margin-top: 2vh;width:6.6%;display: inline-block;font-size: 0.8vw">Tolerance:</label>
			<input value="${gongcha.tolerance5}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="tolerance5" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">Normal Value:</label>
			<input value="${gongcha.normal5}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="normal5" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">ESS Offset:</label>
			<input value="${gongcha.ess5}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="ess5" class="in1" style="width: 7.2%;">
		</div>
		<!-- Test point 6: -->
		<div>
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 19%;width:7.2%;display: inline-block;font-size: 0.8vw">Test point 6:</label>
			<label style="color:#919aa7;margin-top: 2vh;width:6.6%;display: inline-block;font-size: 0.8vw">Tolerance:</label>
			<input value="${gongcha.tolerance6}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="tolerance6" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">Normal Value:</label>
			<input value="${gongcha.normal6}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="normal6" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">ESS Offset:</label>
			<input value="${gongcha.ess6}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="ess6" class="in1" style="width: 7.2%;">
		</div>
		<!-- Test point 7: -->
		<div>
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 19%;width:7.2%;display: inline-block;font-size: 0.8vw">Test point 7:</label>
			<label style="color:#919aa7;margin-top: 2vh;width:6.6%;display: inline-block;font-size: 0.8vw">Tolerance:</label>
			<input value="${gongcha.tolerance7}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="tolerance7" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">Normal Value:</label>
			<input value="${gongcha.normal7}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="normal7"  class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">ESS Offset:</label>
			<input value="${gongcha.ess7}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="ess7" class="in1" style="width: 7.2%;">
		</div>
		<!-- Test point 8: -->
		<div>
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 19%;width:7.2%;display: inline-block;font-size: 0.8vw">Test point 8:</label>
			<label style="color:#919aa7;margin-top: 2vh;width:6.6%;display: inline-block;font-size: 0.8vw">Tolerance:</label>
			<input value="${gongcha.tolerance8}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="tolerance8" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">Normal Value:</label>
			<input value="${gongcha.normal8}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="normal8"  class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">ESS Offset:</label>
			<input value="${gongcha.ess8}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="ess8" class="in1" style="width: 7.2%;">
		</div>
		<!-- Oil point: -->
		<div>
			<label style="color:#919aa7;margin-top: 2vh;margin-left: 19%;width:7.2%;display: inline-block;font-size: 0.8vw">Oil point:</label>
			<label style="color:#919aa7;margin-top: 2vh;width:6.6%;display: inline-block;font-size: 0.8vw">Tolerance:</label>
			<input value="${gongcha.tolerance9}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="tolerance9" class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">Normal Value:</label>
			<input value="${gongcha.normal9}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="normal9"  class="in1" style="width: 7.2%;">
			<label style="color:#919aa7;margin-top: 2vh;display: inline-block;font-size: 0.8vw;margin-left: 2%">ESS Offset:</label>
			<input value="${gongcha.ess9}" onkeypress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d{2}$/.test(value))event.returnValue=false" type="text" name="ess9" class="in1" style="width: 7.2%;">
		</div>
		
		<br><br>
		<input style="margin-top: 27px;display:block;margin-left:43%;width: 100px;height: 32px;"
                            				 type="submit"   value="Confirm">
	</form>
		</div>
</body>
<script type="text/javascript">
/*
	function tanchuang(){
		if(window.confirm('确认提交？')){
		document.getElementById("ttt1").submit();
			
		}else{
			return false;
		}
	}
	*/
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