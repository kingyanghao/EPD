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
<title>5日排单</title>
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
#lantiao{
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;

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
selector::-webkit-scrollbar{

width:0;

}
</style>
</head>
<body>
	
<%@ include file="top.jsp"%>
<%@ include file="left.jsp"%>
	<!-- 内容区 -->
		<%
String error = (String)request.getAttribute("loginError");         // 获取错误属性
if(error != null) {
%>
<script type="text/javascript" language="javascript">
alert("登录失败");                                            // 弹出错误信息

window.location='main/sign_in.do' ;                            // 跳转到登录界面
</script> 
<%
}
%>	
	

	<div id="main">
	<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">5-day Order</div></div>
			<div class="">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
								
				
				<!-- 页面主体头部 -->
					
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" >
			<!--上放开始  -->		
		  <!--上方结束  -->
        <div class="t-ctn"  id="">
      			<div class="layui-form">
				  <div class="layui-form-item">
				  
			
				    
				    <div class="layui-inline">
				      <label class="layui-form-label">周：</label>
				      <div class="layui-input-inline" style="margin-right:0px;">
				        <input type="text" class="layui-input" id="test4" readonly="readonly" placeholder="yyyy-MM-dd">
				      </div>
				      <div class="layui-input-inline" style="margin-right:0px;">
				        <input type="text" class="layui-input" id="test5" readonly="readonly">
				      </div>
				      <button style="margin-left: 0px;border-radius:0px 40px 40px 0px;" type="button" class="btn btn-default"
							onclick="searchs(3)" >
							search
						</button>
				    </div>
					</div>
		 		</div>
      	 </div>
        <!-- 下方结束 -->
       <!--上方结束  -->
        <div class="t-ctn " id="opectorId">
		<div class="box" style="border:solid #e0e0e2 1px;min-width: 1350px;" >	
			<div class="jianbian id" style="min-width:150px;background-color: white;">	
				<div style="height:70px;color:#343535; font-size: 20px;font-weight: bold;text-align: center;min-width: 170px;display: inline-block;line-height:70px;">姓名</div>	
			</div>	
			<div class="s-ctn jianbian1" style="height:70px;margin-left:150px;">	
				<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;" id="oneId">${one}
				</div>
				<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;" id="twoId">${two}
				
				</div>
				<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="threeId">${three}
				</div>
				<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="fourId">${four}
				</div>
				<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="fiveId">${five}
				</div>
				<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="fiveId">${six}
				</div>
				<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="fiveId">${seven}
				</div>
			</div>
				
		</div>
	<!-- 遍历数据 -->
	<c:if test="${fn:length(list2)>0}">
		<c:forEach items="${list2}" var="item" >
	<div class="box" style="border:solid #e0e0e2 1px;min-width: 1350px; margin-top:10px;margin-bottom:10px;" >					
      	<div class="jianbian id" style="min-width:150px;background-color: white;">	
				<div style="height:100px;color:#343535; font-size: 14px;font-weight: bold;text-align: center;min-width: 150px;display: inline-block;line-height:100px;">${item.username}</div>	
			</div>	
			<div class="s-ctn jianbian1" style="color:#a9aaab;margin-left:150px;">	
				<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">
					<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">
						<c:if test="${fn:length(item.kbList.one)>0}">
							<c:forEach items="${item.kbList.one}" var="one1" >
							<c:if test="${one1.scheduling_status==1}">
								<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails('${one1.scheduling_kb}')">${one1.scheduling_kb}</p>
							</c:if>
							<c:if test="${one1.scheduling_status==2}">
								<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails('${one1.scheduling_kb}')">${one1.scheduling_kb}</p>
							</c:if>
							</c:forEach>
						</c:if>
						
					</div>
				</div>
				<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">
					<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">
							<c:if test="${fn:length(item.kbList.two)>0}">
							<c:forEach items="${item.kbList.two}" var="two2" >
									<c:if test="${two2.scheduling_status==1}">
									<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails('${two2.scheduling_kb}')">${two2.scheduling_kb}</p>
									</c:if>
									<c:if test="${two2.scheduling_status==2}">
										<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails('${two2.scheduling_kb}')">${two2.scheduling_kb}</p>
									</c:if>
							</c:forEach>
						</c:if>
					</div>
				</div>
				<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">
					<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">
							<c:if test="${fn:length(item.kbList.three)>0}">
							<c:forEach items="${item.kbList.three}" var="three3" >
								<c:if test="${three3.scheduling_status==1}">
									<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails('${three3.scheduling_kb}')">${three3.scheduling_kb}</p>
									</c:if>
									<c:if test="${three3.scheduling_status==2}">
										<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails('${three3.scheduling_kb}')">${three3.scheduling_kb}</p>
									</c:if>
							</c:forEach>
						</c:if>
					</div>
				</div>
			<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">
					<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">
							<c:if test="${fn:length(item.kbList.four)>0}">
							<c:forEach items="${item.kbList.four}" var="four4" >
									<c:if test="${four4.scheduling_status==1}">
									<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails('${four4.scheduling_kb}')">${four4.scheduling_kb}</p>
									</c:if>
									<c:if test="${four4.scheduling_status==2}">
										<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails('${four4.scheduling_kb}')">${four4.scheduling_kb}</p>
									</c:if>
							</c:forEach>
						</c:if>
					</div>
				</div>
				<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">
					<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">
							<c:if test="${fn:length(item.kbList.five)>0}">
							<c:forEach items="${item.kbList.five}" var="five5" >
								<c:if test="${five5.scheduling_status==1}">
									<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails('${five5.scheduling_kb}')">${five5.scheduling_kb}</p>
									</c:if>
									<c:if test="${five5.scheduling_status==2}">
										<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails('${five5.scheduling_kb}')">${five5.scheduling_kb}</p>
									</c:if>
							</c:forEach>
						</c:if>
					</div>
				</div>
				<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">
					<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">
							<c:if test="${fn:length(item.kbList.six)>0}">
							<c:forEach items="${item.kbList.six}" var="six6" >
								<%-- <p style="display:block;color:#649dfc;">${six6}</p> --%>
								<c:if test="${six6.scheduling_status==1}">
									<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails('${six6.scheduling_kb}')">${six6.scheduling_kb}</p>
									</c:if>
									<c:if test="${six6.scheduling_status==2}">
										<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails('${six6.scheduling_kb}')">${six6.scheduling_kb}</p>
									</c:if>
							</c:forEach>
						</c:if>
					</div>
				</div>
					<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">
					<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">
							<c:if test="${fn:length(item.kbList.seven)>0}">
							<c:forEach items="${item.kbList.seven}" var="seven7" >
								<%-- <p style="display:block;color:#649dfc;">${seven7}</p> --%>
								<c:if test="${seven7.scheduling_status==1}">
									<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails('${seven7.scheduling_kb}')">${seven7.scheduling_kb}</p>
									</c:if>
									<c:if test="${seven7.scheduling_status==2}">
										<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails('${seven7.scheduling_kb}')">${seven7.scheduling_kb}</p>
									</c:if>
							</c:forEach>
						</c:if>
					</div>
				</div>
				
				
				
			</div>	
      	
      	
      	 </div>
	
		</c:forEach>
	</c:if>
	
      	 
      	 <!-- 遍历数据结束 -->
        <!-- 下方结束 -->
    </div>
  </div>
</div>
		</div>	
	</div>
</div>
<!-- 跳转隐藏form表单 -->
	<form action="" method="post" id="jump" hidden="hidden">
		<input type="text" id="kb_no" name="kb_no" value ="" />
	</form>
</body>
	
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script type="text/javascript">
	//跳转到订单详情
	function click_deails(kb_no){
		
		$('#kb_no').val(kb_no);
		$('#jump').attr("action", "<%=basePath%>main/orderDeails.do");
		$('#jump').submit();
	}
	
	$(document).ready(function(){ 
		four();
	});
	
	
	/* 搜索 */
	function searchs(){
		var str=$("#test4").val();
		console.log(str);
		if(str==null||str==''){
			return
		}else{
			var load = layer.load(1, {shade: [0.1,'#fff']});	
			$.ajax({
		   	url:'<%=basePath%>main/searchFiveSelectopeter.do',
			type: "POST",
			dataType:'json',
			data:	{str:str
					},
			success: function(result){
				console.log(result);
				if(result.succ==1){
					layer.close(load);
					//进行五日排单的重构 
					
				
					fiveDay(result);
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
		
		
	}	
	
	function fiveDay(result){
		
		$("#opectorId").empty();
		
		var list=result.list2;
		var html=[];

		html.push('<div class="box" style="border:solid #e0e0e2 1px;min-width: 1350px;" >	');
		html.push('<div class="jianbian id" style="min-width:150px;background-color: white;">	');
		html.push('<div style="height:70px;color:#343535; font-size: 20px;font-weight: bold;text-align: center;min-width: 170px;display: inline-block;line-height:70px;">姓名</div>	');
		html.push('</div>');
		html.push('<div class="s-ctn jianbian1" style="height:70px;margin-left:150px;">');
		html.push('<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;" id="oneId">'+result.one+'</div>');
		html.push('<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;" id="twoId">'+result.two+'</div>');
		html.push('<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="threeId">'+result.three+'</div>');
		html.push('<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="fourId">'+result.four+'</div>');
		html.push('<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="fiveId">'+result.five+'</div>');
		html.push('<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="sixId">'+result.six+'</div>');
		html.push('<div style="width:12%;min-width:150px;height:70px;font-size: 20px;font-weight: bold;margin-right: 10px;text-align: center;line-height:70px;"id="sevenId">'+result.seven+'</div>');
		html.push('</div></div>');
 		if(list.length>0){
			for(var i=0;i<list.length;i++){
				html.push('<div class="box" style="border:solid #e0e0e2 1px;min-width: 1350px; margin-top:10px;margin-bottom:10px;" >');
				html.push('<div class="jianbian id" style="min-width:150px;background-color: white;">');
				html.push('<div style="height:100px;color:#343535; font-size: 14px;font-weight: bold;text-align: center;min-width: 150px;display: inline-block;line-height:100px;">'+list[i].username+'</div></div>');
				
				/* 第一日的开始 */
				html.push('<div class="s-ctn jianbian1" style="color:#a9aaab;margin-left:150px;"><div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">');
				html.push('<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">');
				if(list[i].kbList.one.length>0){
					for(var s=0;s<list[i].kbList.one.length;s++){
						if(list[i].kbList.one[s].scheduling_status==1){
							html.push('<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.one[s].scheduling_kb+'\')">'+list[i].kbList.one[s].scheduling_kb+'</p>');
						}else if(list[i].kbList.one[s].scheduling_status==2){
							html.push('<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.one[s].scheduling_kb+'\')">'+list[i].kbList.one[s].scheduling_kb+'</p>');
						}
					}
				}
				html.push('</div></div>');
				/* 第一日的结束 */
				/* 第er日的开始 */
				html.push('<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">');
				html.push('<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">');
				if(list[i].kbList.two.length>0){
					for(var s=0;s<list[i].kbList.two.length;s++){
						if(list[i].kbList.two[s].scheduling_status==1){
							html.push('<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.two[s].scheduling_kb+'\')">'+list[i].kbList.two[s].scheduling_kb+'</p>');
						}else if(list[i].kbList.two[s].scheduling_status==2){
							html.push('<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.two[s].scheduling_kb+'\')">'+list[i].kbList.two[s].scheduling_kb+'</p>');
						}
					}
				}
				html.push('</div></div>');
				
				/* 第er日的结束 */
				
				/* 第仨日的开始 */
				html.push('<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">');
				html.push('<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">');
				if(list[i].kbList.three.length>0){
					for(var s=0;s<list[i].kbList.three.length;s++){
						if(list[i].kbList.three[s].scheduling_status==1){
							html.push('<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.three[s].scheduling_kb+'\')">'+list[i].kbList.three[s].scheduling_kb+'</p>');
						}else if(list[i].kbList.three[s].scheduling_status==2){
							html.push('<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.three[s].scheduling_kb+'\')">'+list[i].kbList.three[s].scheduling_kb+'</p>');
						}
					}
				}
				html.push('</div></div>');
				
				/* 第仨日的结束 */
				
				/* 第四日的开始 */
				html.push('<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">');
				html.push('<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">');
				if(list[i].kbList.four.length>0){
					for(var s=0;s<list[i].kbList.four.length;s++){
						if(list[i].kbList.four[s].scheduling_status==1){
							html.push('<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.four[s].scheduling_kb+'\')">'+list[i].kbList.four[s].scheduling_kb+'</p>');
						}else if(list[i].kbList.four[s].scheduling_status==2){
							html.push('<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.four[s].scheduling_kb+'\')">'+list[i].kbList.four[s].scheduling_kb+'</p>');
						}
					}
				}
				html.push('</div></div>');
				
				/* 第四日的结束 */
				
				/* 第五日的开始 */
				html.push('<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">');
				html.push('<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">');
				if(list[i].kbList.five.length>0){
					for(var s=0;s<list[i].kbList.five.length;s++){
						if(list[i].kbList.five[s].scheduling_status==1){
							html.push('<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.five[s].scheduling_kb+'\')">'+list[i].kbList.five[s].scheduling_kb+'</p>');
						}else if(list[i].kbList.five[s].scheduling_status==2){
							html.push('<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.five[s].scheduling_kb+'\')">'+list[i].kbList.five[s].scheduling_kb+'</p>');
						}
					}
				}
				html.push('</div></div>');
				
				/* 第五日的结束 */
				/* 第六日的开始 */
				html.push('<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">');
				html.push('<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">');
				if(list[i].kbList.six.length>0){
					for(var s=0;s<list[i].kbList.six.length;s++){
						if(list[i].kbList.six[s].scheduling_status==1){
							html.push('<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.six[s].scheduling_kb+'\')">'+list[i].kbList.six[s].scheduling_kb+'</p>');
						}else if(list[i].kbList.six[s].scheduling_status==2){
							html.push('<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.six[s].scheduling_kb+'\')">'+list[i].kbList.six[s].scheduling_kb+'</p>');
						}
					}
				}
				html.push('</div></div>');
				
				/* 第六日的结束 */
				/* 第七日的开始 */
				html.push('<div style="width:12%;min-width:150px;height:100px;padding-top:8px;margin-right: 10px;text-align:center;">');
				html.push('<div class="innerbox" style="height:82px;width:145px;border:solid 1px #a9aaab;margin:0 auto;overflow: scroll;">');
				if(list[i].kbList.seven.length>0){
					for(var s=0;s<list[i].kbList.seven.length;s++){
						if(list[i].kbList.seven[s].scheduling_status==1){
							html.push('<p style="display:block;color:#15b1e8;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.seven[s].scheduling_kb+'\')">'+list[i].kbList.seven[s].scheduling_kb+'</p>');
						}else if(list[i].kbList.seven[s].scheduling_status==2){
							html.push('<p style="display:block;color:green;cursor:pointer;"  onclick="click_deails(\''+list[i].kbList.seven[s].scheduling_kb+'\')">'+list[i].kbList.seven[s].scheduling_kb+'</p>');
						}
					}
				}
				html.push('</div></div>');
				
				/* 第七日的结束 */
				
				
				html.push('</div></div>');
			}
			$("#opectorId").append(html.join('')); 
		}
	} 
	
	

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

	</script>
</html>