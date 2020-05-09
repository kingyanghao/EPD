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
<title>加班统计</title>
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
	margin-left:15%;
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
       
        white-space: nowrap;
        font-size: 0;
        min-width: max-content;
		min-width: -moz-max-content;
        
    }

    .t-ctn .s-ctn div {
   		margin-left:2px;
        font-size: 14px;
        box-sizing: border-box;
        white-space: normal;
        word-wrap: break-word;
        word-break: break-all;
        overflow: hidden;
        display: inline-block;
        height: 100%;
       
    }
   /*  .jianbian{
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
		
		  
    } */
   .id{ position:absolute; 
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
 
 /* 滚动条的样式 */
  .innerbox{
        overflow-y: auto;
        background-color: #f8f8f8;
        height: 200px;
        padding: 10px;
    }
        .innerbox::-webkit-scrollbar {/*滚动条整体样式*/
            width: 4px;     /*高宽分别对应横竖滚动条的尺寸*/
            height: 4px;
            scrollbar-arrow-color:red;

        }
        .innerbox::-webkit-scrollbar-thumb {/*滚动条里面小方块*/
            border-radius: 5px;
            -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
            background: rgba(0,0,0,0.2);
            scrollbar-arrow-color:red;
        }
        .innerbox::-webkit-scrollbar-track {/*滚动条里面轨道*/
            -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
            border-radius: 0;
            background: rgba(0,0,0,0.1);
        }
 /* 阴影 */
 .box{
	box-shadow: 10px 10px 15px #ededf1;
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
	
	<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Overtime</div></div>

	<div id="main">
			<div class="">
			<div class="panel panel-content">
							
			
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
					
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" >
			<!--上放开始  -->		
		<div   style="margin-bottom:30px;">
							<form  class="form-inline">
								 <div class="form-group">
									<div class="layui-inline" style="border: solid 1px #cccccc;    border-radius: 4px;">
										<div class="layui-input-inline">
										    <input type="text" class="layui-input" id="test8" placeholder=" - ">
										</div>
									</div>
						
									<div class="input-group-btn form-group" >
										<button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default" onclick="getmonth()">
											search
										</button>
									</div>
								</div>
							</form>
						</div>
       <!--上方结束  -->
        <div class="t-ctn " id="opectorId">
			
	
		<%-- </c:forEach>
	</c:if> --%>
	
      	 
      	 <!-- 遍历数据结束 -->
        <!-- 下方结束 -->
    </div>
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
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script type="text/javascript">

	$(document).ready(function(){ 
		four_2();
	});
	layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  //日期范围
		  laydate.render({
		    elem: '#test8'
		    ,type: 'month'
		    
		  });
	});
	
	
	function getmonth(){
			/* alert($("#test8").val()); */
			var val= $("#test8").val();
		
			//进行数据的计算
			if(val==''||val==null){
				var myDate = new Date();
				var myyear=myDate.getFullYear();		//获取完整的年份(4位,1970-????)
				
				var mymonth=(myDate.getMonth())+1;       //获取当前月份(0-11,0代表1月)
				if(mymonth<10){
					mymonth="0"+mymonth;
				}
				val=myyear+"-"+mymonth+"-01";
				layui.use('laydate', function(){
					  var laydate = layui.laydate;
					  //日期范围
					  laydate.render({
					    elem: '#test8'
					    ,type: 'month'
					    ,value: myyear+"-"+mymonth
					    ,isInitValue: true
					  });
				});
			}else{
				val=val+"-01";
			}
				
				
			$.ajax({
			type: "POST",
			url: '<%=basePath%>main/overtimeSelectopeter.do',
	    	data: {
	    		val:val,
	    	},
			dataType:'json',
			cache: false,
			success: function(data){
				console.log(data);
				if(data.succ==1){
						layer.msg('查询成功！',{time : 1000,icon : 1});	
						//关闭莫太宽
						//刷新页面
						
						
						$("#opectorId").empty();
						var html8=[];
						html8.push('<div class="box" style="border:solid #e0e0e2 1px;min-width: 1850px;" >	');
						html8.push('<div class="jianbian id" style="min-width:150px;background-color: white;">	');
						html8.push('<div style="height:60px;color:#343535; font-weight: bold;text-align: center;width: 150px;display: inline-block;line-height:60px;">姓名</div>	');
						html8.push('<div style="height:60px;color:#343535; font-weight: bold;text-align: center;width: 40px;display: inline-block;line-height:60px;">总计</div>');
						html8.push('</div>');
						html8.push('<div class="s-ctn jianbian1" style="height:60px;margin-left:210px;">');
						for(var s=1;s<=data.num;s++){
							html8.push('<div style="width:40px;height:60px;font-weight: bold;margin-right: 10px;text-align: center;line-height:60px;">'+s+'</div>');
						}
						html8.push('</div></div>');
						for(var i=0;i<data.list3.length;i++){
							html8.push('<div class="box" style="border:solid #e0e0e2 1px;min-width: 1850px; margin-top:10px;margin-bottom:10px;" >');
							html8.push('<div class="jianbian id" style="min-width:150px;background-color: white;">	');
							html8.push('<div style="height:60px;color:#343535; font-weight: bold;text-align: center;width: 150px;display: inline-block;line-height:60px;">'+data.list3[i].username+'</div>');
							html8.push('<div style="height:60px;color:#343535; font-weight: bold;text-align: center;width: 40px;display: inline-block;line-height:60px;">'+data.list3[i].conut+'</div>');
							
							html8.push('</div>');
							html8.push('<div class="s-ctn jianbian1" style="height:60px;margin-left:210px;">');
							 for(var n=0;n<data.list3[i].scheduling_list.length;n++){
								html8.push('<div style="width:40px;height:60px;font-weight: bold;margin-right: 10px;text-align: center;line-height:60px;">'+data.list3[i].scheduling_list[n].harmonious+'</div>');
							} 
							html8.push('</div></div>');
						} 
						
						 $("#opectorId").html(html8.join(''));	
				}
			},
			error: function(data){
				layer.close(load);
				layer.msg('查询失败！',{time : 1000,icon : 2});	
			}
		});
		
		
	}
	
	//获取当月的天数
	function mGetDate(year, month){
	    var d = new Date(year, month, 0);
	    return d.getDate();
	}
	</script>
</html>