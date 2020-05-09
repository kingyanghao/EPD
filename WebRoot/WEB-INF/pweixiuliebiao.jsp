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
</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>

	<!-- 内容区 -->
	<div id="main">
	<!-- 蓝条 -->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Repair Order</div></div>
    <div style="margin-left: 2%">
    <br>
        <input   id="keyWord" style="width:12%;height: 4vh;border-radius:16px;background-color:#D3D3D3">
        <select id="keyType" style="height: 4vh;background-color:#DCDCDC;border-radius:16px;" >
        	<option value="shebeimingcheng">Device Name</option>
        	<option value="id">Repair Number</option>
        	<option value="weixiurenyuan">Maintenance Staff</option>
        </select>
	<button class="layui-btn layui-btn-normal"  id="aa" style="margin-left: 2%;border-radius:16px;">Search</button>
	
	<script type="text/html" id="piliangshanchu">
		    <button style="float:right;font-size: 300px;color:#1E9FFF;" lay-event="delete" ><i class="layui-icon">&#xe640;</i></button>
	</script>
    </div>
		<table class="layui-hide" id="demo" lay-filter="test">
		</table>
	</div>
	<!-- <a class="layui-btn layui-btn-xs" lay-event="edit">Edit</a> -->
</body>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">View</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">del</a>
</script>
<script type="text/html" id="guandan">
  {{# if(d.guandanshijian==null||d.guandanshijian==''){ }}
{{#  } else { }}
	<span>{{= d.guandanshijian }}</span>
	{{#  } }} 
</script>

<script>
	layui.config({
		version : '1545041465443' //为了更新 js 缓存，可忽略
	});

	layui.use(
					[ 'laydate', 'laypage', 'layer', 'table', 'carousel',
							'upload', 'element', 'slider' ],
					function() {
						var laydate = layui.laydate //日期
						, laypage = layui.laypage //分页
						, layer = layui.layer //弹层
						, table = layui.table //表格
						, carousel = layui.carousel //轮播
						, upload = layui.upload //上传
						, element = layui.element //元素操作
						, slider = layui.slider //滑块

						//向世界问个好
						layer.msg('Hello');

						//监听Tab切换
						element.on('tab(demo)', function(data) {
							layer.tips('切换了 ' + data.index + '：'
									+ this.innerHTML, this, {
								tips : 1
							});
						});
						//执行一个 table 实例
						table.render({
							elem : '#demo',
							url : '/EPD/weixiu/findWeixiu.do' //数据接口
				            ,id:'contenttable'
							,title : '用户表',
							page : true //开启分页
							,toolbar: 'default'
							//,
							//toolbar : '#toolbarDemo' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
							//,
							//defaultToolbar:['filter','exports','print']
							,totalRow : true //开启合计行
							,request: {
							    pageName: 'page' //页码的参数名称，默认：page
							    ,limitName: 'limit' //每页数据量的参数名，默认：limit
							  }
							,cols : [ [ //表头
							{
								type : 'checkbox',
								fixed : 'left'
							}, {
								field : 'weixiudanhao',
								title : 'Repair Number',
								sort : true,
							}, {
								field : 'shebeimingcheng',
								title : 'Device Name'
								,sort : true,
							}, {
								field : 'guzhangshijian1',
								title : 'Breakdown Start time',
								sort : true,
							}, {
								field : 'weixiurenyuan',
								title : 'Maintenance Staff'
								,sort : true,
							}, {
								field : 'guandanshijian1',
								title : 'Breakdown End time'
								,sort : true
							} ,
							{
								field : 'wentimiaoshu',
								title : 'Problem description'
								,sort : true
							} ,
							{
								field : 'jiejuecuoshi',
								title : 'Solution measures'
								,sort : true
							} ,
							{
								field : 'fangfancuoshi',
								title : 'Preventire'
								,sort : true
							} ,
							 ,{fixed: 'right',width:160,  align:'center', toolbar: '#barDemo'}
						    ] ]
						});
		
						//监听头工具栏事件
						
						table
								.on(
										'toolbar(test)',
										function(obj) {
											var checkStatus = table
													.checkStatus(obj.config.id), data = checkStatus.data; //获取选中的数据
											switch (obj.event) {
											case 'add':
												window.location.href="/EPD/weixiuadd.do";     //在同当前窗口中打开窗口
												break;
											case 'update':
												if (data.length === 0) {
													layer.msg('请选择一行');
												} else if (data.length > 1) {
													layer.msg('只能同时编辑一个');
												} else {
															var ii=checkStatus.data[0].id
													$.ajax({
														type:'post',
														url:'/EPD/weixiu/xiugai.do',
														data:{'id':ii},
														success:function(){
													   window.location.href="/EPD/weixiu/xiu.do";
														},
														error:function(){
															layer.msg('系统繁忙',{icon:2});
														}
													})
												}
												break;
											case 'delete':
												if (data.length === 0) {
													layer.msg('请选择一行');
												} else {
													var ids="";
													for(var i=0;i<data.length;i++){
														ids+=data[i].id+",";
													}
													layer.confirm('确定要删除吗？',{icon:3},function(index){
														$.ajax({
															type:'post',
															url:'/EPD/weixiu/deletes.do',
															data:{'ids':ids},
															success:function(){
																layer.msg('删除成功',{icon:1});
														        setTimeout("fun()",2000); //1秒后调用fun函数
																window.location.reload();
															},
															error:function(){
																layer.msg('删除失败',{icon:2});
															}
														})
													});
												}
												break;
											}
											;
										});

						//监听行工具事件
						table.on('tool(test)', function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
							var data = obj.data //获得当前行数据
							, layEvent = obj.event; //获得 lay-event 对应的值
							  var tr = obj.tr; //获得当前行 tr 的DOM对象
							if (layEvent === 'detail') {
								$.ajax({
									type:'post',
									url:'/EPD/weixiu/xiugai.do',
									data:{'id':data.id},
									success:function(){
								   window.location.href="/EPD/weixiu/weixiuxiangqing.do";
									},
									error:function(){
										layer.msg('系统繁忙',{icon:2});
									}
								})
							} else if (layEvent === 'del') {
								
								layer.confirm('确定要删除吗？',{icon:3},function(index){
									$.ajax({
										type:'post',
										url:'/EPD/weixiu/deletes.do',
										data:{'ids':data.id},
										success:function(){
											layer.msg('删除成功',{icon:1});
									        setTimeout("fun()",2000); //1秒后调用fun函数
											window.location.reload();
										},
										error:function(){
											layer.msg('删除失败',{icon:2});
										}
									})
								});
								/*
								layer.confirm('真的删除行么', function(index) {
									obj.del(); //删除对应行（tr）的DOM结构
									layer.close(index);
									//向服务端发送删除指令
								});
									*/
							} else if (layEvent === 'edit') {
								$.ajax({
									type:'post',
									url:'/EPD/weixiu/xiugai.do',
									data:{'id':data.id},
									success:function(){
								   window.location.href="/EPD/weixiu/xiu.do";
									},
									error:function(){
										layer.msg('系统繁忙',{icon:2});
									}
								})
							}
							else if (layEvent === 'guan') {
				                 //layerOpen('web/store/add?storeId='+json['storeId'],'编辑店铺信息','670px;', '530px;');
									
								layer.open({
									type: 1,
									offset: 'auto'
									,title: false //不显示标题栏
							        ,closeBtn: false
							        //,area: ['583px', 'px']
							        ,shade: 0.3
							        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
							        ,btn: ['Confirm', 'Close']
							        ,btnAlign: 'c'
							        ,moveType: 1 //拖拽模式，0或者1
							        ,content:'<div style="line-height: 22px; background-color:#393D49; color: #fff; font-weight: 300;height:375px;"><br><br><h2 align="center" style="">关单</h2><form id="ff" action="/EPD/weixiu/uploadWeixiu.do" method="post"><div align="center" style="margin-top:66px;width:350px"><label style="font-size: 15px">维修单号:</label><input value='+data.id+' name="id" readonly="readonly" style="width:200px;height: 28px"></div><div align="center" style="margin-top: 66px"><label style="font-size: 15px">关单时间:</label><input name="t2"  type="text" id="test5" style="height: 28px;width:200px"></div></form></div>'
							        	,success: function(){
							        		layui.use('laydate', function() {
							        			var laydate = layui.laydate;
							        			//日期时间选择器
							        			laydate.render({
							        				elem : '#test5',
							        				type : 'datetime'
							        				,show: true //直接显示
							        				,position:'fixed' 
							        				,zIndex: 99999999

							        			});

							        		});
							              }
								,btn1: function(index, layero){
									document.getElementById("ff").submit();
									layer.msg('关单成功');
							        setTimeout("fun()",2000); //1秒后调用fun函数
								  }
								,btn2: function(index, layero){
								    layer.close(index);
								  }
								});
							}
						});

						
							
						//分页
						laypage.render({
							elem : 'pageDemo' //分页容器的id
							,
							count : 100 //总页数
							,
							skin : '#1E9FFF' //自定义选中色值
							//,skip: true //开启跳页
							,
							jump : function(obj, first) {
								if (!first) {
									layer.msg('第' + obj.curr + '页', {
										offset : 'b'
									});
								}
							}
						});
							//搜索
							$('#aa').on('click', function(){
						        var keyWord = $.trim($('#keyWord').val());
						        var keyType = $.trim($('#keyType').val());
								      //  var userNickName = $.trim($('#userNickName').val());
								       // var phone = $('#phone').val();
								        table.reload('contenttable', {
								        	method:'post',
								            where: {
								            	keyWord: keyWord,
								            	keyType: keyType
								            }
								        });
							    });
							
						//上传
						/*
						upload.render({
							elem : '#uploadDemo',
							url : '' //上传接口
							,
							done : function(res) {
								console.log(res)
							}
						});

						slider.render({
							elem : '#sliderDemo',
							input : true
						//输入框
						});
						*/
							//执行一个轮播实例
							/*
							carousel.render({
								elem : '#test1',
								width : '100%' //设置容器宽度
								,
								height : 200,
								arrow : 'none' //不显示箭头
								,
								anim : 'fade' //切换动画方式
							});
								*/
							//将日期直接嵌套在指定容器中
							/*
							var dateIns = laydate.render({
								elem : '#laydateDemo',
								position : 'static',
								calendar : true //是否开启公历重要节日
								,
								mark : { //标记重要日子
									'0-10-14' : '生日',
									'2018-08-28' : '新版',
									'2018-10-08' : '神秘'
								},
								done : function(value, date, endDate) {
									if (date.year == 2017 && date.month == 11
											&& date.date == 30) {
										dateIns.hint('一不小心就月底了呢');
									}
								},
								change : function(value, date, endDate) {
									layer.msg(value)
								}
							});
								*/
								
								       
});
</script>
<script>
layui.use('laydate', function() {
	var laydate = layui.laydate;
	//日期时间选择器
	laydate.render({
		elem : '#test5',
		type : 'datetime'
		,show: true //直接显示
		,position:'fixed' 
		,zIndex: 99999999

	});

});
$(document).ready(function(){ 
	two();
});
</script>

</html>
