<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Utilzation</title>
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
</style>
</head>
<body>
	<%@ include file="left.jsp"%> 
	<%@ include file="top.jsp"%>
	
	<!-- 主体内容 -->
      <div id="main">
        <!-- 蓝条  style="-webkit-appearance: none;"-->
   		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center">
   		<div style="color: white;font-size:1.2vw;margin-left:2%;">Utilzation</div></div>
    <br>
    	<div style="display:flex;justify-content:space-around;width: 100%;font-size: 13px;font-family: 微软雅黑;color:#4c5e70">
        	<div id="main1" style="width:19%;height:42vh;"></div>
        	<div id="main2" style="width:19%;height:42vh;"></div>
        	<div id="main3" style="width:19%;height:42vh;"></div>
        	<div id="main4" style="width:19%;height:42vh;"></div>
        	<div id="main5" style="width:19%;height:42vh;"></div>
        	
        </div>
        <div style="display:flex;justify-content:space-around;width: 100%;font-size: 0.9vw;font-family: 微软雅黑;color:#4c5e70;">
			<span style="color:	#FF4500">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li1}</span>        	
			<span style="color:	#FF4500">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li2}</span>        	
			<span style="color:	#FF4500">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li3}</span>        	
			<span style="color:	#FF4500">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li4}</span>        	
			<span style="color:	#FF4500">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li5}</span>        	
        </div>
        <br><br>
        <div style="display:flex;justify-content:space-around;width: 100%;font-size: 13px;font-family: 微软雅黑;color:#4c5e70">
        	<div id="main6" style="width:19%;height:42vh;"></div>
        	<div id="main7" style="width:19%;height:42vh;"></div>
        	<div id="main8" style="width:19%;height:42vh;"></div>
        	<div id="main9" style="width:19%;height:42vh;"></div>
        	<div  style="width:19%;height:37vh;"></div>
		</div>
		<div style="display:flex;justify-content:space-around;width: 100%;font-size: 0.9vw;font-family: 微软雅黑;color:#4c5e70">
			<span style="color:	#FF4500">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li6}</span>        	
			<span style="color:	#FF4500">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li7}</span>        	
			<span style="color:	#FF4500">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li8}</span>        	
			<span style="color:	#FF4500">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li9}</span>
			<span style="visibility:hidden">Bench utilization rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${li9}</span>
		</div>
		</div>
</body>
<script type="text/javascript" src="/EPD/js/echarts.js"></script>
<script type="text/javascript">
					$(function() {
						var myChart1 = echarts.init(document.getElementById('main1'));
						var myChart2 = echarts.init(document.getElementById('main2'));
						var myChart3 = echarts.init(document.getElementById('main3'));
						var myChart4 = echarts.init(document.getElementById('main4'));
						var myChart5 = echarts.init(document.getElementById('main5'));
						var myChart6 = echarts.init(document.getElementById('main6'));
						var myChart7 = echarts.init(document.getElementById('main7'));
						var myChart8 = echarts.init(document.getElementById('main8'));
						var myChart9 = echarts.init(document.getElementById('main9'));
							myChart1.showLoading();
							
			$.ajax({
						type : "post",
						async : true, //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
						url : "/EPD/liyong/liyong.do", //请求发送到TestServlet处
						dataType : "json", //返回数据形式为json
						success : function(res) {
							var run1=res["run1"];
							var stand1=res["stand1"];
							var down1=res["down1"];
							var run2=res["run2"];
							var stand2=res["stand2"];
							var down2=res["down2"];
							var run3=res["run3"];
							var stand3=res["stand3"];
							var down3=res["down3"];
							var run4=res["run4"];
							var stand4=res["stand4"];
							var down4=res["down4"];
							var run5=res["run5"];
							var stand5=res["stand5"];
							var down5=res["down5"];
							var run6=res["run6"];
							var stand6=res["stand6"];
							var down6=res["down6"];
							var run7=res["run7"];
							var stand7=res["stand7"];
							var down7=res["down7"];
							var run8=res["run8"];
							var stand8=res["stand8"];
							var down8=res["down8"];
							var run9=res["run9"];
							var stand9=res["stand9"];
							var down9=res["down9"];
							myChart1.hideLoading();
							//1
							myChart1
									.setOption({
										title: {
									        text: 'CI4000 F1',
									       	subtext: 'Working Hours',
									        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
									        	fontFamily: '微软雅黑',
									        	fontSize: '175%',
									        	fontStyle: 'normal',
									        	fontWeight: 'normal',
									        	color:'#4c5e70'
									      },
									      subtextStyle: {//副标题文本样式{"color": "#aaa"}
									    	  fontFamily: '微软雅黑',
									    	  fontSize: '125%',
									    	  fontStyle: 'normal',
									    	  fontWeight: 'normal',
									    	  color:'#7b8da0'
									    	 },
									    },
									    /*
										tooltip: {
									        trigger: 'item',
									        title:'时间'
									    },
									    */
									    legend: {
									        orient: 'vertical',
									        x: 'center',
									        y: 'bottom',
									        data:['Working Hours    '+run1,'Stand-by Hours  '+stand1,'Down Hours       '+down1],
									        
									    },
									    color:['#72f9a8','#00b0d9','#f66666'],
									    series: [
									        {
									            name:'CI4000 F1',
									            type:'pie',
									            radius: ['40%', '60%'],
									            label: {
									                normal: {
									                    show: false,
									                    position: 'center'
									                },
									                emphasis: {
									                    show: true,
									                    textStyle: {
									                        fontSize: '14',
									                        fontWeight:'normal'
									                    }
									                }
									            },
									            data:[
									                {value:run1,  name:'Working Hours    '+run1},
									                {value:stand1,name:'Stand-by Hours  '+stand1},
									                {value:down1, name:'Down Hours       '+down1}
									            ]
									        }
									    ]
									});
							//2
							myChart2
									.setOption({
										title: {
									        text: 'CI4000 F2',
									       	subtext: 'Working Hours',
									        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
									        	fontFamily: '微软雅黑',
									        	fontSize: '175%',
									        	fontStyle: 'normal',
									        	fontWeight: 'normal',
									        	color:'#4c5e70'
									      },
									      subtextStyle: {//副标题文本样式{"color": "#aaa"}
									    	  fontFamily: '微软雅黑',
									    	  fontSize: '125%',
									    	  fontStyle: 'normal',
									    	  fontWeight: 'normal',
									    	  color:'#7b8da0'
									    	 },
									    },
									    /*
										tooltip: {
									        trigger: 'item',
									        title:'时间'
									    },
									    */
									    legend: {
									        orient: 'vertical',
									        x: 'center',
									        y: 'bottom',
									        data:['Working Hours    '+run2,'Stand-by Hours  '+stand2,'Down Hours       '+down2],
									        
									    },
									    color:['#72f9a8','#00b0d9','#f66666'],
									    series: [
									        {
									            name:'CI4000 F2',
									            type:'pie',
									            radius: ['40%', '60%'],
									            label: {
									                normal: {
									                    show: false,
									                    position: 'center'
									                },
									                emphasis: {
									                    show: true,
									                    textStyle: {
									                        fontSize: '14',
									                        fontWeight:'normal'
									                    }
									                }
									            },
									            data:[
									                {value:run2,  name:'Working Hours    '+run2},
									                {value:stand2,name:'Stand-by Hours  '+stand2},
									                {value:down2, name:'Down Hours       '+down2}
									            ]
									        }
									    ]
									});
							//3
							myChart3
									.setOption({
										title: {
									        text: 'CI4000 F3',
									       	subtext: 'Working Hours',
									        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
									        	fontFamily: '微软雅黑',
									        	fontSize: '175%',
									        	fontStyle: 'normal',
									        	fontWeight: 'normal',
									        	color:'#4c5e70'
									      },
									      subtextStyle: {//副标题文本样式{"color": "#aaa"}
									    	  fontFamily: '微软雅黑',
									    	  fontSize: '125%',
									    	  fontStyle: 'normal',
									    	  fontWeight: 'normal',
									    	  color:'#7b8da0'
									    	 },
									    },
									    /*
										tooltip: {
									        trigger: 'item',
									        title:'时间'
									    },
									    */
									    legend: {
									        orient: 'vertical',
									        x: 'center',
									        y: 'bottom',
									        data:['Working Hours    '+run3,'Stand-by Hours  '+stand3,'Down Hours       '+down3],
									        
									    },
									    color:['#72f9a8','#00b0d9','#f66666'],
									    series: [
									        {
									            name:'CI4000 F3',
									            type:'pie',
									            radius: ['40%', '60%'],
									            label: {
									                normal: {
									                    show: false,
									                    position: 'center'
									                },
									                emphasis: {
									                    show: true,
									                    textStyle: {
									                        fontSize: '14',
									                        fontWeight:'normal'
									                    }
									                }
									            },
									            data:[
									                {value:run3,  name:'Working Hours    '+run3},
									                {value:stand3,name:'Stand-by Hours  '+stand3},
									                {value:down3, name:'Down Hours       '+down3}
									            ]
									        }
									    ]
									});
							//4
							myChart4
									.setOption({
										title: {
									        text: 'CI4000 F4',
									       	subtext: 'Working Hours',
									        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
									        	fontFamily: '微软雅黑',
									        	fontSize: '175%',
									        	fontStyle: 'normal',
									        	fontWeight: 'normal',
									        	color:'#4c5e70'
									      },
									      subtextStyle: {//副标题文本样式{"color": "#aaa"}
									    	  fontFamily: '微软雅黑',
									    	  fontSize: '125%',
									    	  fontStyle: 'normal',
									    	  fontWeight: 'normal',
									    	  color:'#7b8da0'
									    	 },
									    },
									    /*
										tooltip: {
									        trigger: 'item',
									        title:'时间'
									    },
									    */
									    legend: {
									        orient: 'vertical',
									        x: 'center',
									        y: 'bottom',
									        data:['Working Hours    '+run4,'Stand-by Hours  '+stand4,'Down Hours       '+down4],
									        
									    },
									    color:['#72f9a8','#00b0d9','#f66666'],
									    series: [
									        {
									            name:'CI4000 F4',
									            type:'pie',
									            radius: ['40%', '60%'],
									            label: {
									                normal: {
									                    show: false,
									                    position: 'center'
									                },
									                emphasis: {
									                    show: true,
									                    textStyle: {
									                        fontSize: '14',
									                        fontWeight:'normal'
									                    }
									                }
									            },
									            data:[
									                {value:run4,  name:'Working Hours    '+run4},
									                {value:stand4,name:'Stand-by Hours  '+stand4},
									                {value:down4, name:'Down Hours       '+down4}
									            ]
									        }
									    ]
									});
							//5
							myChart5
									.setOption({
										title: {
									        text: 'CI4000-RAK F7',
									       	subtext: 'Working Hours',
									        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
									        	fontFamily: '微软雅黑',
									        	fontSize: '175%',
									        	fontStyle: 'normal',
									        	fontWeight: 'normal',
									        	color:'#4c5e70'
									      },
									      subtextStyle: {//副标题文本样式{"color": "#aaa"}
									    	  fontFamily: '微软雅黑',
									    	  fontSize: '125%',
									    	  fontStyle: 'normal',
									    	  fontWeight: 'normal',
									    	  color:'#7b8da0'
									    	 },
									    },
									    /*
										tooltip: {
									        trigger: 'item',
									        title:'时间'
									    },
									    */
									    legend: {
									        orient: 'vertical',
									        x: 'center',
									        y: 'bottom',
									        data:['Working Hours    '+run5,'Stand-by Hours  '+stand5,'Down Hours       '+down5],
									        
									    },
									    color:['#72f9a8','#00b0d9','#f66666'],
									    series: [
									        {
									            name:'CI4000-RAK F7',
									            type:'pie',
									            radius: ['40%', '60%'],
									            label: {
									                normal: {
									                    show: false,
									                    position: 'center'
									                },
									                emphasis: {
									                    show: true,
									                    textStyle: {
									                        fontSize: '14',
									                        fontWeight:'normal'
									                    }
									                }
									            },
									            data:[
									                {value:run5,  name:'Working Hours    '+run5},
									                {value:stand5,name:'Stand-by Hours  '+stand5},
									                {value:down5, name:'Down Hours       '+down5}
									            ]
									        }
									    ]
									});
							//6
							myChart6
									.setOption({
										title: {
									        text: 'ESS F6',
									       	subtext: 'Working Hours',
									        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
									        	fontFamily: '微软雅黑',
									        	fontSize: '175%',
									        	fontStyle: 'normal',
									        	fontWeight: 'normal',
									        	color:'#4c5e70'
									      },
									      subtextStyle: {//副标题文本样式{"color": "#aaa"}
									    	  fontFamily: '微软雅黑',
									    	  fontSize: '125%',
									    	  fontStyle: 'normal',
									    	  fontWeight: 'normal',
									    	  color:'#7b8da0'
									    	 },
									    },
									    /*
										tooltip: {
									        trigger: 'item',
									        title:'时间'
									    },
									    */
									    legend: {
									        orient: 'vertical',
									        x: 'center',
									        y: 'bottom',
									        data:['Working Hours    '+run6,'Stand-by Hours  '+stand6,'Down Hours       '+down6],
									        
									    },
									    color:['#72f9a8','#00b0d9','#f66666'],
									    series: [
									        {
									            name:'ESS F6',
									            type:'pie',
									            radius: ['40%', '60%'],
									            label: {
									                normal: {
									                    show: false,
									                    position: 'center'
									                },
									                emphasis: {
									                    show: true,
									                    textStyle: {
									                        fontSize: '14',
									                        fontWeight:'normal'
									                    }
									                }
									            },
									            data:[
									                {value:run6,  name:'Working Hours    '+run6},
									                {value:stand6,name:'Stand-by Hours  '+stand6},
									                {value:down6, name:'Down Hours       '+down6}
									            ]
									        }
									    ]
									});
							//7
							myChart7
									.setOption({
										title: {
									        text: 'ESS F8(NEW)',
									       	subtext: 'Working Hours',
									        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
									        	fontFamily: '微软雅黑',
									        	fontSize: '175%',
									        	fontStyle: 'normal',
									        	fontWeight: 'normal',
									        	color:'#4c5e70'
									      },
									      subtextStyle: {//副标题文本样式{"color": "#aaa"}
									    	  fontFamily: '微软雅黑',
									    	  fontSize: '125%',
									    	  fontStyle: 'normal',
									    	  fontWeight: 'normal',
									    	  color:'#7b8da0'
									    	 },
									    },
									    /*
										tooltip: {
									        trigger: 'item',
									        title:'时间'
									    },
									    */
									    legend: {
									        orient: 'vertical',
									        x: 'center',
									        y: 'bottom',
									        data:['Working Hours    '+run7,'Stand-by Hours  '+stand7,'Down Hours       '+down7],
									        
									    },
									    color:['#72f9a8','#00b0d9','#f66666'],
									    series: [
									        {
									            name:'ESS F8(NEW)',
									            type:'pie',
									            radius: ['40%', '60%'],
									            label: {
									                normal: {
									                    show: false,
									                    position: 'center'
									                },
									                emphasis: {
									                    show: true,
									                    textStyle: {
									                        fontSize: '14',
									                        fontWeight:'normal'
									                    }
									                }
									            },
									            data:[
									                {value:run7,  name:'Working Hours    '+run7},
									                {value:stand7,name:'Stand-by Hours  '+stand7},
									                {value:down7, name:'Down Hours       '+down7}
									            ]
									        }
									    ]
									});
							//8
							myChart8
									.setOption({
										title: {
									        text: 'Nozzle flow rate',
									       	subtext: 'Working Hours',
									        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
									        	fontFamily: '微软雅黑',
									        	fontSize: '175%',
									        	fontStyle: 'normal',
									        	fontWeight: 'normal',
									        	color:'#4c5e70'
									      },
									      subtextStyle: {//副标题文本样式{"color": "#aaa"}
									    	  fontFamily: '微软雅黑',
									    	  fontSize: '125%',
									    	  fontStyle: 'normal',
									    	  fontWeight: 'normal',
									    	  color:'#7b8da0'
									    	 },
									    },
									    /*
										tooltip: {
									        trigger: 'item',
									        title:'时间'
									    },
									    */
									    legend: {
									        orient: 'vertical',
									        x: 'center',
									        y: 'bottom',
									        data:['Working Hours    '+run8,'Stand-by Hours  '+stand8,'Down Hours       '+down8],
									        
									    },
									    color:['#72f9a8','#00b0d9','#f66666'],
									    series: [
									        {
									            name:'Nozzle flow rate',
									            type:'pie',
									            radius: ['40%', '60%'],
									            label: {
									                normal: {
									                    show: false,
									                    position: 'center'
									                },
									                emphasis: {
									                    show: true,
									                    textStyle: {
									                        fontSize: '14',
									                        fontWeight:'normal'
									                    }
									                }
									            },
									            data:[
									                {value:run8,  name:'Working Hours    '+run8},
									                {value:stand8,name:'Stand-by Hours  '+stand8},
									                {value:down8, name:'Down Hours       '+down8}
									            ]
									        }
									    ]
									});
							//9
							myChart9
									.setOption({
										title: {
									        text: 'Nozzle Pdoe',
									       	subtext: 'Working Hours',
									        textStyle: {//主标题文本样式{"fontSize": 18,"fontWeight": "bolder","color": "#333"}
									        	fontFamily: '微软雅黑',
									        	fontSize: '175%',
									        	fontStyle: 'normal',
									        	fontWeight: 'normal',
									        	color:'#4c5e70'
									      },
									      subtextStyle: {//副标题文本样式{"color": "#aaa"}
									    	  fontFamily: '微软雅黑',
									    	  fontSize: '125%',
									    	  fontStyle: 'normal',
									    	  fontWeight: 'normal',
									    	  color:'#7b8da0'
									    	 },
									    },
									    /*
										tooltip: {
									        trigger: 'item',
									        title:'时间'
									    },
									    */
									    legend: {
									        orient: 'vertical',
									        x: 'center',
									        y: 'bottom',
									        data:['Working Hours    '+run9,'Stand-by Hours  '+stand9,'Down Hours       '+down9],
									        
									    },
									    color:['#72f9a8','#00b0d9','#f66666'],
									    series: [
									        {
									            name:'Nozzle Pdoe',
									            type:'pie',
									            radius: ['40%', '60%'],
									            label: {
									                normal: {
									                    show: false,
									                    position: 'center'
									                },
									                emphasis: {
									                    show: true,
									                    textStyle: {
									                        fontSize: '14',
									                        fontWeight:'normal'
									                    }
									                }
									            },
									            data:[
									                {value:run9,  name:'Working Hours    '+run9},
									                {value:stand9,name:'Stand-by Hours  '+stand9},
									                {value:down9, name:'Down Hours       '+down9}
									            ]
									        }
									    ]
									});
							
						},
						error : function() {
							//请求失败时执行该函数
							alert("图表请求数据失败!");
							var se1 = document.getElementById("sese1");//获取目标Id
							se1.style.display = "inline";
							var ww = document.getElementById("ww");//获取目标Id
							ww.style.display = "none";
							myChart.hideLoading();
						}
					});
					window.onresize = function(){
						myChart1.resize();
						myChart2.resize();
						myChart3.resize();
						myChart4.resize();
						myChart5.resize();
						myChart6.resize();
						myChart7.resize();
						myChart8.resize();
						myChart9.resize();
						};
		});
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
    		first();
    	});
    </script>
</html>