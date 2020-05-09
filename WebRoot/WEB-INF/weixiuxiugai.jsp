<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Repair Order</title>
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
</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>

	<!-- 内容区 -->
	<div id="main">
	<!-- 蓝条 -->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Repair Order</div></div>
		<form action="/EPD/weixiu/tjxg.do" method="post" id="ttt1" enctype="multipart/form-data">
					<input type="hidden" name=id value="${weixiu.id}">
		<div style="margin-left:16%;margin-top: 52px">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Device Name:</label> <input
				class="in" style="height: 3.5vh;width: 19.2%" name="shebeimingcheng" value="${weixiu.shebeimingcheng}">
				
			 <label style="font-family: 微软雅黑;font-size: 0.78vw;margin-left: 16%;width: 9.5vw;display: inline-block;">Maintenance staff:</label>
			<input type="text" class="in" name="weixiurenyuan" value="${weixiu.weixiurenyuan}">
		</div>
		<div style="margin-left:16%;margin-top: 15px;">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Breakdown Start time:</label> <input
				type="text" id="test5" class="in" name="guzhangshijian1" value="${weixiu.guzhangshijian1}">
				<label style="font-family: 微软雅黑;font-size: 0.78vw;margin-left: 16%;width: 9.5vw;display: inline-block;">Breakdown End time:</label>
				<c:choose>
				<c:when test="${weixiu.guandanshijian1 eq '维修中...'}">
				<input type="text" class="in" name="guandanshijian1" value="维修中..." readonly="readonly">
				</c:when>
				<c:otherwise>
				<input type="text"  id="test55" class="in" name="guandanshijian1" value="${weixiu.guandanshijian1}">
				</c:otherwise>
				</c:choose>
		</div>


		<div style="margin-left:16%;margin-top: 15px">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Photos upload:</label>
			<div id="d1"  style="margin-left:2% ;height:37px;background:url(/EPD/image/upi.png);position:relative;width:37px;display: inline-block;">
				<input  name="file1" id="filed1" type="file" multiple="multiple" style=" height:37px;overflow: hidden;width:37px; position:absolute;right:0;top:0;opacity: 0;filter:alpha(opacity=0);cursor:pointer;">
			</div>
			<div id="d1" style="margin-left:2% ;height:37px;background:url(/EPD/image/upi.png);position:relative;width:37px;display: inline-block;">
				<input name="file2" id="filed2" type="file" multiple="multiple" style="height:37px;overflow: hidden;width:37px; position:absolute;right:0;top:0;opacity: 0;filter:alpha(opacity=0);cursor:pointer;">
			</div>
			<div id="d1" style="margin-left:2% ;height:37px;background:url(/EPD/image/upi.png);position:relative;width:37px;display: inline-block;">
				<input name="file3" id="filed3" type="file" multiple="multiple" style="height:37px;overflow: hidden;width:37px; position:absolute;right:0;top:0;opacity: 0;filter:alpha(opacity=0);cursor:pointer;">
			</div>
			<br><br>
				<div id="box1" style="margin-left: 14%;width: 22%;height: 16vh;display:inline-block;background: #c7f2f4;background-size:100%;background-image:url('${weixiu.img1}');">
				</div>
				<div id="box2" style="margin-left: 1%;width: 22%;height: 16vh;background: #c7f2f4;display: inline-block;background-size:100%;background-image:url('${weixiu.img2}');">
				</div>
				<div id="box3" style="margin-left: 1%;width: 22%;height: 16vh;background: #c7f2f4;display: inline-block;background-size:100%;background-image:url('${weixiu.img3}');">
				</div>
			</div>
		<div style="margin-left:16%;margin-top: 15px;">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Problem description:</label> <textarea
				type="text" class="in" style="height: 16vh;width: 68%;vertical-align: top;" name="wentimiaoshu" >${weixiu.wentimiaoshu}</textarea>
		</div>
		
		<div style="margin-left:16%;margin-top: 15px;">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Solution measures:</label> <textarea
				type="text" class="in" style="height: 7vh;width: 68%;vertical-align: top;" name="jiejuecuoshi">${weixiu.jiejuecuoshi}</textarea>
		</div>
		<div style="margin-left:16%;margin-top: 15px;">
			<label style="font-family: 微软雅黑;font-size: 0.78vw;width: 9.5vw;display: inline-block;">Preventire measures:</label> <textarea
				type="text" class="in" style="height: 7vh;width: 68%;vertical-align: top;" name="fangfancuoshi">${weixiu.fangfancuoshi}</textarea>
		</div>
		<br><br>
		<input style="margin-top: 27px;display:block;margin: 0 auto;width: 100px;height: 32px;"
                            				 type="button" onclick="tanchuang();" value="Confirm">
		</form>
		<br><br><br>
	</div>
</body>
<script type="text/javascript">
	function tanchuang(){
		if(window.confirm('确认提交？')){
		document.getElementById("ttt1").submit();
			
		}else{
			return false;
		}
	}
	</script>
  <script>
    //在input file内容改变的时候触发事件
    $('#filed1').change(function(){
    //获取input file的files文件数组;
    //$('#filed')获取的是jQuery对象，.get(0)转为原生对象;
    //这边默认只能选一个，但是存放形式仍然是数组，所以取第一个元素使用[0];
      var file = $('#filed1').get(0).files[0];
    //创建用来读取此文件的对象
      var reader = new FileReader();
    //使用该对象读取file文件
      reader.readAsDataURL(file);
    //读取文件成功后执行的方法函数
      reader.onload=function(e){
    //读取成功后返回的一个参数e，整个的一个进度事件
        console.log(e);
    //选择所要显示图片的img，要赋值给img的src就是e中target下result里面
    //的base64编码格式的地址
   		 $('#box1').get(0).style.backgroundImage="url('"+e.target.result+"')";
      //  $('#imgshow1').get(0).src = ;
    }
    })
</script>
<script>
    //在input file内容改变的时候触发事件
    $('#filed2').change(function(){
    //获取input file的files文件数组;
    //$('#filed')获取的是jQuery对象，.get(0)转为原生对象;
    //这边默认只能选一个，但是存放形式仍然是数组，所以取第一个元素使用[0];
      var file = $('#filed2').get(0).files[0];
    //创建用来读取此文件的对象
      var reader = new FileReader();
    //使用该对象读取file文件
      reader.readAsDataURL(file);
    //读取文件成功后执行的方法函数
      reader.onload=function(e){
    //读取成功后返回的一个参数e，整个的一个进度事件
        console.log(e);
    //选择所要显示图片的img，要赋值给img的src就是e中target下result里面
    //的base64编码格式的地址
       		 $('#box2').get(0).style.backgroundImage="url('"+e.target.result+"')";

        //$('#imgshow2').get(0).src = e.target.result;
      }
    })
</script>
<script>
    //在input file内容改变的时候触发事件
    $('#filed3').change(function(){
    //获取input file的files文件数组;
    //$('#filed')获取的是jQuery对象，.get(0)转为原生对象;
    //这边默认只能选一个，但是存放形式仍然是数组，所以取第一个元素使用[0];
      var file = $('#filed3').get(0).files[0];
    //创建用来读取此文件的对象
      var reader = new FileReader();
    //使用该对象读取file文件
      reader.readAsDataURL(file);
    //读取文件成功后执行的方法函数
      reader.onload=function(e){
    //读取成功后返回的一个参数e，整个的一个进度事件
        console.log(e);
    //选择所要显示图片的img，要赋值给img的src就是e中target下result里面
    //的base64编码格式的地址$('#box3').append(' <img id="imgshow3" src="" alt="" style="display: inline-block;"/>');
        //$('#imgshow3').get(0).src = e.target.result;
  		 $('#box3').get(0).style.backgroundImage="url('"+e.target.result+"')";

      }
    })
</script>
<script>
	layui.use('element', function() {
		var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

		//监听导航点击
		element.on('nav(demo)', function(elem) {
			//console.log(elem)
			layer.msg(elem.text());
		});
	});
</script>
<script>
	layui.use('laydate', function() {
		var laydate = layui.laydate;

		//日期时间选择器
		laydate.render({
			elem : '#test5',
			type : 'datetime'
		});

	});
	layui.use('laydate', function() {
		var laydate = layui.laydate;

		//日期时间选择器
		laydate.render({
			elem : '#test55',
			type : 'datetime'
		});

	});
	$(document).ready(function(){ 
		two();
	});
</script>

</html>