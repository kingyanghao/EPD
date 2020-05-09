<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
    href="assets/img/apple-icon.png">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>工作量统计</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="layui/css/layui.css" rel="stylesheet" media="all"/>
 <link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
 <script src="/EPD/js/jquery-1.11.2.min.js"></script>
<style type="text/css">
#main{
	margin-left:14%;
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
 * {
        margin: 0;
        padding: 0;
    }

    .t-ctn {
       
       overflow :auto;
         margin: 0;
        padding: 0;
    }

    .t-ctn .s-ctn {
        min-height: 100px;
        white-space: nowrap;
        font-size: 0;
        min-width: max-content;
		min-width: -moz-max-content;
        
    }

    .t-ctn .s-ctn div {
   		margin-left:10px;
        font-size: 14px;
        box-sizing: border-box;
        white-space: normal;
        word-wrap: break-word;
        word-break: break-all;
        overflow: hidden;
        display: inline-block;
        height: 100%;
       
    }
    .jianbian{
    	background:-webkit-linear-gradient(#ddf4fc, #e4e9f8);
		background:-o-linear-gradient(#ddf4fc, #e4e9f8);
		background:-moz-linear-gradient(#ddf4fc, #e4e9f8);
		background:linear-gradient(#ddf4fc, #e4e9f8);
		background-size:100%;
		
		  
    }
     .jianbian1{
    	background:-webkit-linear-gradient(#ddf4fc, #e4e9f8);
		background:-o-linear-gradient(#ddf4fc, #e4e9f8);
		background:-moz-linear-gradient(#ddf4fc, #e4e9f8);
		background:linear-gradient(#ddf4fc, #e4e9f8);
		background-size:100%;
		
		  
    }
   .id{position:absolute;
       z-index: 1111;
       
   }这样就可以固定。。	
       
       
@media ( min-width :700px) {
    .container {
        width: auto;
        font-size:60%;
    }
}

@media ( min-width :900px) {
    .container {
        width: auto;
        font-size:60%;
    }
     .t-ctn {
       
        overflow :auto
        
    }
}

@media ( min-width :992px) {
    .container {
        width: auto;
        font-size:60%;
    }
    .t-ctn {
       
     overflow :auto
       
    }
}
@media ( min-width :1100px) {
    .container {
        width: auto;
        font-size:60%;
    }
    .t-ctn {
   
        overflow :auto
       
    }
}

@media ( min-width :1200px) {
    .container {
        width: auto;
        font-size:70%;
    }
    .t-ctn {
      
        overflow :auto
        
    }
}

@media ( min-width :1400px) {
    .container {
        width: auto;
        font-size:100%;
    }
    
}

.btn:focus, .btn:active:focus, .btn.active:focus, .btn.focus, .btn:active.focus, .btn.active.focus {
    outline: none;
    outline: none;
    outline-offset: -2px;
}
 .layui-laydate{
 z-index:19891017;
 }
 
 #lantiao{
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;

}
</style>
</head>
<body>
	
<%@ include file="top.jsp"%>
<%@ include file="left.jsp"%>
	<!-- 内容区 -->
	
	

	<div id="main">
		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Workload statistics</div></div>
			<div class="">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
					
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" >
			<!--上放开始  -->		
		
       <!--上方结束  -->
        <div class="t-ctn"  id="opectorId">
      			<div class="layui-form">
				  <div class="layui-form-item">
				    <div class="layui-inline">
				      <label class="layui-form-label">年：</label>
				      <div class="layui-input-inline" style="margin-right:0px;">
				        <input type="text" class="layui-input" readonly="readonly" id="test2" placeholder="yyyy">
				      </div>
				      <button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default"
							onclick="searchs(1)" >
							search
						</button>
				    </div>
				    
				     <div class="layui-inline">
				      <label class="layui-form-label">月：</label>
				      <div class="layui-input-inline" style="margin-right:0px;">
				        <input type="text" class="layui-input" readonly="readonly" id="test3" placeholder="yyyy-MM">
				      </div>
				      <button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default"
							onclick="searchs(2)" >
							search
						</button>
				    </div>
				    
				    <div class="layui-inline">
				      <label class="layui-form-label">周：</label>
				      <div class="layui-input-inline" style="margin-right:0px;width:130px;">
				        <input type="text" class="layui-input" id="test4" readonly="readonly" placeholder="yyyy-MM-dd">
				      </div>
				      <div class="layui-input-inline" style="margin-right:0px;width:130px;">
				        <input type="text" class="layui-input" id="test5" readonly="readonly">
				      </div>
				      <button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default"
							onclick="searchs(3)" >
							search
						</button>
				    </div>
				    
				      <div class="layui-inline">
				      
				      <button style="margin-left: 0px;border-radius:40px;width:100px;margin-left:30px;" type="button" class="btn btn-default" onclick="deails()" >
							Deails
						</button>
				    </div>
				    
					</div>
		 		</div>
      	 </div>
        <!-- 下方结束 -->
         <div  style="height:550px;" id="diagramId">
    	 	
    	 </div>
  </div>
</div>
</div>	
</div>


</body>
	
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/echarts.common.min.js"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>

	$(document).ready(function(){ 
		four_2();
	});


			layui.use('laydate', function(){
				  var laydate = layui.laydate;
				//年选择器
				  laydate.render({
				    elem: '#test2'
				    ,type: 'year'
				  });
			});
			layui.use('laydate', function(){
				  var laydate = layui.laydate;
				  //时间选择器
				  laydate.render({
				    elem: '#test3'
				    ,type: 'month'
				    , format: 'yyyy-MM' //可任意组合
				  });
			});
			layui.use('laydate', function(){
				  var laydate = layui.laydate;
				  //时间选择器
				//选中后的回调
				  laydate.render({
				    elem: '#test4'
				    ,type: 'datetime'
				    ,done: function(value, date){
				    	$("#test5").empty();
				    	$("#test5").val(getWeek(value));
				    }
				  });
			});
			
			function getWeek(d1){
				var dt = new Date(d1);
				var aa=getYearWeek(dt.getFullYear(),dt.getMonth()+1,dt.getDate());
				return dt.getFullYear()+"-"+aa;
        }
			
			
			function deails(){
				 window.location.href="<%=basePath%>main/worksheetList.do";
			}
			
			
		   function getYearWeek(year,month,date){
		        /*  
		            dateNow是当前日期 
		            dateFirst是当年第一天  
		            dataNumber是当前日期是今年第多少天  
		            用dataNumber + 当前年的第一天的周差距的和在除以7就是本年第几周  
		        */      
		        let dateNow = new Date(year, parseInt(month) - 1, date);
		        let dateFirst = new Date(year, 0, 1);
		        let dataNumber = Math.round((dateNow.valueOf() - dateFirst.valueOf()) / 86400000);
		        return Math.ceil((dataNumber + ((dateFirst.getDay() + 1) - 1)) / 7);        
		    }
			/* 搜索 */
			function searchs(id){
				var str="";    
					if(id==1){
						str=$("#test2").val();	
				    }else if(id==2){
				    	str=$("#test3").val();	
				    }else if(id==3){
				    	str=$("#test5").val();
				    }else{
				    	return;
				    }
					var load = layer.load(1, {shade: [0.1,'#fff']});	
					$.ajax({
				   	url:'<%=basePath%>main/workCountOrder.do',
					type: "POST",
					dataType:'json',
					data:	{str:str,
							id:id,
							},
					success: function(result){
						console.log(result);
						if(result.succ==1){
							layer.close(load);
							diagram(result.list,result.num);
						}else if(result.succ==-1){
							layer.close(load);
							layer.msg('暂无数据！',{time : 2000,icon : 2});	
						}else{
							 layer.msg('登陆失败！', {
									time : 2000,
									icon : 2
								},function(){
									 window.location.href="<%=basePath%>main/sign_in.do";
			                    });
						}
					},
					error: function(data){
						layer.close(load);
						layer.msg('查询失败！',{time : 2000,icon : 2});	
					}
				});
			}	
			function diagram(list,num){
				
				var myChart6 = echarts.init(document.getElementById('diagramId'));
				
				var y=[];
				var x=[];
				var z=[];
				var t=[];
				for(var i=0;i<list.length;i++){
					x.push(list[i].workers);
					y.push(list[i].workhours);
					z.push(list[i].overtimehours);
					t.push(list[i].paidhours);
				}
				
				
				option = {
					    title : {
					        text: '工作量统计',
					        subtext: ''
					    },
					    tooltip : {
					        trigger: 'axis'
					    },
					    legend: {
					        data:['工作量','加班量','调休量']
					    },
					    toolbox: {
					        show : true,
					        feature : {
					            dataView : {show: true, readOnly: false},
					            magicType : {show: true, type: ['line', 'bar']},
					            restore : {show: true},
					            saveAsImage : {show: true}
					        }
					    },
					    calculable : true,
					    xAxis : [
					        {
					            type : 'category',
					            data :x
					        }
					    ],
					    yAxis : [
					        {
					        	 type : 'value',
					             scale : true,
					            max:num+100,
					            min:0,
					            splitNumber:30
					        }
					    ],
					    series : [
					        {
					            name:'工作量',
					            type:'bar',
					            data:y,
					            itemStyle:{
                                    normal:{
                                        color:'#09c2ea'
                                    }
                                },
					            label: {
					                normal: {
					                    show: true,
					                    position: 'inside'
					                }
					            },
					        },
					        {
					            name:'加班量',
					            type:'bar',
					            data:z,
					            itemStyle:{
                                    normal:{
                                        color:'#634c1f'
                                    }
                                },
					            label: {
					                normal: {
					                    show: true,
					                    position: 'inside'
					                }
					            },
					        },
					        {
					            name:'调休量',
					            type:'bar',
					            data:t,
					            itemStyle:{
                                    normal:{
                                        color:'#379200'
                                    }
                                },
					            label: {
					                normal: {
					                    show: true,
					                    position: 'inside'
					                }
					            },
					            "markLine": {
					                "silent": true,
					                "symbol": "none",
					                "label": {
					                    "position": "middle",
					                    "formatter": "{b}"
					                },
					                "data": [{
					                    "name": "标准工作量",
					                    "yAxis": num,
					                    "lineStyle": {
					                        "color": "#e96fef"
					                    },
					                    "label": {
					                        "position": "end",
					                        "formatter": "{b}\n {c}h"
					                    }
					                }]
					            }
					        }]
					};
				myChart6.setOption(option);
			}
		
	</script>
</html>