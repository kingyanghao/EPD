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
<title>日点检修改</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="layui/css/layui.css" rel="stylesheet" media="all"/>
 <link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
 <link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
 <script src="/EPD/js/jquery-1.11.2.min.js"></script>
<style type="text/css">
html, body {width:100%;height:100%;}
#main{
	margin-left:14%
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
}

@media ( min-width :992px) {
    .container {
        width: auto;
        font-size:60%;
    }
}

@media ( min-width :1200px) {
    .container {
        width: auto;
        font-size:70%;
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

</style>
</head>
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>
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
	<!-- 内容区 -->
	<div id="main">
			<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Daily check</div></div>
			<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				
				<!-- 页面主体头部 -->
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" style="min-height: 750px;">
						<form class="form-horizontal" id="formId">
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:30px;">
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
							<div class="col-md-4 col-lg-4 col-xl-4 col-sm-4" style="min-height:30px;border:saolid 1px;">
							   <input  type="hidden" style="width:50%;margin-left:5%;display: inline-block;" class="form-control" id="daily_id" name="daily_id" value="${daily_check.daily_id}">
								 <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">名称:</div>
								     
								      <select  disabled="true" id="bench_name" name="bench_name"   style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               <option   ${daily_check.bench_name=='CI4000 F1'?'selected':''} value='CI4000 F1'>CI4000 F1</option>
                                               <option  ${daily_check.bench_name=='CI4000 F2'?'selected':''} value='CI4000 F2'>CI4000 F2</option>
                                               <option  ${daily_check.bench_name=='CI4000 F3'?'selected':''} value='CI4000 F3'> CI4000 F3</option>
                                               <option  ${daily_check.bench_name=='CI4000 F4'?'selected':''} value='CI4000 F4'>CI4000 F4</option>
                                               <option  ${daily_check.bench_name=='CI4000-RAK F7'?'selected':''} value='CI4000-RAK F7'>CI4000-RAK F7</option>
                                               <option  ${daily_check.bench_name=='ESS F6'?'selected':''} value='ESS F6'> ESS F6</option>
                                               <option  ${daily_check.bench_name=='ESS F8(NEW)'?'selected':''} value='ESS F8(NEW)'> ESS F8(NEW)</option>
                                               <option  ${daily_check.bench_name=='Large engine F9'?'selected':''} value='Large engine F9'>Large engine F9</option>
                                               <option  ${daily_check.bench_name=='Nozzle flow rate'?'selected':''} value='Nozzle flow rate'>Nozzle flow rate</option>
                                               <option  ${daily_check.bench_name=='Nozzle Pdoe'?'selected':''} value='Nozzle Pdoe'>Nozzle Pdoe</option>
                                               <option  ${daily_check.bench_name=='HSM'?'selected':''} value='HSM'>HSM</option>
	                                 </select>  
								  </div>
								 
								  <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">点检实施者:</div>
								      
								      <input disabled="disabled" type="text"style="width:50%;margin-left:5%;display: inline-block;" class="form-control" id="username" name="implementer" value=" ${daily_check.implementer}"> 
								  </div>
							</div>
							<div class="col-md-4 col-lg-4 col-xl-4 col-sm-4" style="min-height:30px;border:saolid 1px;">
								
								  <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">检查日期:</div>
								 		
								 		 <div class="form-control" disabled="disabled" style="width:50%;margin-left:5%;display: inline-block;">
								 		
								 		<fmt:formatDate value="${daily_check.check_time1}" pattern="yyyy-MM-dd"/>
								 		 </div>
								 		 
								  </div>
							</div>
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						</div>
						<!-- 1 -->
						
						
						
						<!-- 8 -->
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:30px;">
						<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
							<div class="col-md-4 col-lg-4 col-xl-4 col-sm-4" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">台架电源:</div>
								     <select  id="power_supply" name="power_supply" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               <option ${daily_check.power_supply==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.power_supply==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.power_supply==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">目视</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">打开台架总电源开关, 所有设备供电正常</span></div>
								    </div>
								  </div>
								 
								  <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">${daily_check.bench_name=='HSM'?'缓冲罐压力':'测试油液位'}:</div>
								     <select  id="test_oil_level" name="test_oil_level" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               <option ${daily_check.test_oil_level==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.test_oil_level==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.test_oil_level==3?'selected':''} value='3'>p</option>
                                              
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">目视</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">无PLC报警提示</span></div>
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">${daily_check.bench_name=='HSM'?'氮气瓶压力':'液压油液位'}:</div>
								     <select  id="hydraulic_oil_level" name="hydraulic_oil_level" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               <option ${daily_check.hydraulic_oil_level==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.hydraulic_oil_level==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.hydraulic_oil_level==3?'selected':''} value='3'>p</option>
                                             
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">目视</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">无PLC报警提示</span></div>
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;position: relative;top: 10px;">压缩空气<br/>气源压力:</div>
								     <select  id="air_source_pressure" name="air_source_pressure" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                              <option ${daily_check.air_source_pressure==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.air_source_pressure==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.air_source_pressure==3?'selected':''} value='3'>p</option>
                                            
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">目视</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">供气正常,无指示灯不亮导致停机</span></div>
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">冷却水:</div>
								     <select  id="water_coolant" name="water_coolant" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                              <option ${daily_check.water_coolant==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.water_coolant==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.water_coolant==3?'selected':''} value='3'>p</option>
                                              
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">目视</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">无泄漏, 无指示灯不亮导致停机</span></div>
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">工控机:</div>
								     <select  id="industrial_pc" name="industrial_pc" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                              <option ${daily_check.industrial_pc==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.industrial_pc==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.industrial_pc==3?'selected':''} value='3'>p</option>
                                              
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">目视</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">能正常开机,运行中无频繁死机</span></div>
								    </div>
								  </div>
								  
							</div>
							<div class="col-md-4 col-lg-4 col-xl-4 col-sm-4" style="min-height:30px;border:saolid 1px;">
								  <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">光栅，安全门:</div>
								     <select  id="security_door" name="security_door" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                              <option ${daily_check.security_door==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.security_door==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.security_door==3?'selected':''} value='3'>p</option>
                                            
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">停止中操作</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">每班按指导规范进行检查</span></div>
								    </div>
								  </div>
								  
								    <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">互锁装置:</div>
								     <select  id="interlock" name="interlock" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               <option ${daily_check.interlock==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.interlock==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.interlock==3?'selected':''} value='3'>p</option>
                                              
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">停止中操作</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">每周按指导规范进行检查</span></div>
								    </div>
								  </div>
								  
								    <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">${daily_check.bench_name=='HSM'?'气管':'油管'}:</div>
								     <select  id="pipeline" name="pipeline" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               <option ${daily_check.pipeline==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.pipeline==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.pipeline==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">目视运行中</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">${daily_check.bench_name=='HSM'?'气管有无泄漏':'高低管路有无泄漏'}</span></div>
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">油盘:</div>
								     <select  id="lacquer_tray" name="lacquer_tray" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                              <option ${daily_check.lacquer_tray==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.lacquer_tray==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.lacquer_tray==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">停止中目视</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">${daily_check.bench_name=='HSM'?'油盘无积水':'泄露系统无报警'}</span></div>
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;">台架清洁度:</div>
								     <select  id="cleanliness_of_bench" name="cleanliness_of_bench" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               <option ${daily_check.cleanliness_of_bench==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.cleanliness_of_bench==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.cleanliness_of_bench==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								    <div style="padding-top:10px;">
								    	<div>点检方法：<span style="margin-left:5%;">停止中目视</span></div>
								    	<div>点检标准：<span style="margin-left:5%;">外观整洁,无明显油污</span></div>
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <div style="height:38px;width:30%;display: inline-block;color:#919aa7;position: relative;top: 10px;">${daily_check.bench_name=='HSM'?'氧浓度传感器<br/>(一年一检)':'油雾/泄漏传感器<br/>(半年一检)'}:</div>
								     <select  id="oil_mist" name="oil_mist" style="width:50%;margin-left:5%;display: inline-block;" class="form-control">
                                               <option ${daily_check.oil_mist==1?'selected':''} value='1'>√</option>
                                               <option ${daily_check.oil_mist==2?'selected':''} value='2'>∈</option>
                                               <option ${daily_check.oil_mist==3?'selected':''} value='3'>p</option>
                                               
	                                 </select>  
								    
								 
								 <div style="padding-top:10px;">
								    	<div>点检方法：<span >停止中操作</span></div>
								    	<div>点检标准：<span >${daily_check.bench_name=='HSM'?'人为给氧浓度传感器信号看系统是否保护':'人为给油雾/泄漏传感器信号看系统是否保护'}</span></div>
								</div>
								 </div>
							</div>
							<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						</div>
							<div class="row">
						<div class="col-md-2 col-lg-2 col-xl-2 col-sm-2" style="min-height:30px;"></div>
						<div class="col-md-4 col-lg-4 col-xl-4 col-sm-4 "  style="margin-top:40px;margin-bottom:40px;">
									<div style="padding-top:10px;">
								    	<div>点检：<span style="margin-left:5%;">正常:√ 异常：∈ 停机:p </span></div>
								    	
								    </div>
						</div>
						</div>
						<div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 "  style="text-align:center;margin-top:40px;margin-bottom:40px;">
                            <button type="button" class="btn btn-primary btn-lg" style=" padding: 11px 122px;" onclick="save();" id="confirm">confirm</button>
                        </div>
						
						</form>	
					</div>
			</div>
		</div>
	</div>	
	</div>	
	
</body>

	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<script type="text/javascript"  src="js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="js/bootstrap-datetimepicker.min.js"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
	$(document).ready(function(){ 
		two_first();
	});
	/* 保存 */
	function save(){
		    
		
		/* $('#saveId').attr("disabled",true);  */
			   var flag=true;
			   layer.alert('确认保存？', {
			  skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
			}, function(){  
			   console.log("开始：");
			   if(flag){
					flag=false;
					var load = layer.load(1, {shade: [0.1,'#fff']});	
					$.ajax({
				   	url:'<%=basePath%>main/updatedaily.do',
					type: "POST",
					dataType:'text',
					data: $('#formId').serialize(),
					success: function(data){
						console.log(data+"=======1121");
						 if(data=="success"){
							 console.log("kaishi========");
							 layer.close(load);	
							 layer.msg('操作成功！', {
										time : 1000,
										icon : 1
									},function(){
										window.location='<%=basePath%>main/dailyCheckList.do'; 
									});
						 }else if(data=="error"){
							 layer.close(load);
								layer.msg('当日以进行点检！', { time : 2000,icon : 2 });
					 }else if(data=="fail"){
								 layer.close(load);
									layer.msg('操作失败，请检查输入！', { time : 2000,icon : 2 });
						 }else if(data=="other"){
							 layer.close(load);
							 layer.msg('登陆失败！', {
									time : 2000,
									icon : 2
								},function(){
									 window.location.href="<%=basePath%>main/sign_in.do";
			                    });
						 }
							
						 	
						}
			   	
				});
				}
			});	
		}
	
		
		
		
	</script>
</html>