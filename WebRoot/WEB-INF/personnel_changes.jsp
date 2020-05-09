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
<title>人员修改</title>
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
	margin-left:14%
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
<body>
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>

	<!-- 内容区 -->
	<div id="main">
			<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" style="min-height: 750px;margin-top:8vh;">
						<form class="form-horizontal" id="formId">
				
						
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:30px;">
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group">
								    <label for="account" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Account:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input type="text" class="form-control" id="account" name="account" value="${sys_user.account}" readonly="readonly">
								    </div>
								  </div>
								 
								  <div class="form-group">
								    <label for="username" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Name:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input type="text" class="form-control" id="username" name="username" value="${sys_user.username}" readonly="readonly">
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <label for="phone" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Telephone:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input type="text" class="form-control" id="phone" name="phone" value="${sys_user.phone}">
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <label for="role" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Send Email:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="sendmail" name="sendmail" class="form-control">
	                                               <option ${sys_user.sendmail=='yes'?'selected':''} value='yes'>yes</option>
	                                               <option ${sys_user.sendmail=='no'?'selected':''} value='no'>no</option>
	                                  </select>    
								    </div>
								  </div>
								  <div style="border:solid 1px #919aa7;margin-left:30px;"></div>
							</div>
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								<div class="form-group">
								    <label for="email" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Email:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input type="text" class="form-control" id="email" name="email" value="${sys_user.email}">
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="mobile_phone" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Mobile phone:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input type="text" class="form-control" id="mobile_phone" name="mobile_phone" value="${sys_user.mobile_phone}">
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="role" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Access:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="role" name="role" class="form-control">
	                                               <option ${sys_user.role=='operator'?'selected':''} value='operator'>operator</option>
	                                               <option ${sys_user.role=='engineer'?'selected':''} value='engineer'>engineer</option>
	                                               <option ${sys_user.role=='administrator'?'selected':''} value='administrator'>administrator</option>
	                                  </select>    
								    </div>
								  </div>
								   <div class="form-group" style="visibility: hidden;">
								    <label for="phone1" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Send Email:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input type="text" class="form-control" id="phone1" name="phone1"  readonly="readonly">
								    </div>
								  </div>
								  <div style="border:solid 1px #919aa7;margin-left:-30px;margin-right:-100px;"></div>
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						<!-- 1 -->
						
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:15px;">
							<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group">
								    <label  class="col-md-6 col-lg-6 col-xl-6 col-sm-6 control-label" style="text-align: left;padding-left: 10%;color:#000000;font-size:20px;">技能</label>
								  </div>
								  <div class="form-group">
								    <label  class="col-md-6 col-lg-6 col-xl-6 col-sm-6 control-label" style="text-align: left;color:#208ae7;padding-left: 10%;font-size:20px;">Injector</label>
								  </div>
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						<!--2  -->
							<div class="row" style="margin-left:0px;margin-right:0px;margin-top:30px;">
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group">
								    <label for="injector_num1" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">ESS-old (CRIN/CRI):</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num1" name="injector_num1" class="form-control">
                                               <option ${sys_user.injector_num1==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num1==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num1==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num1==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  </select>    
								    </div>
								  </div>
								 
								  <div class="form-group">
								    <label for="injector_num2" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">ESS new (CRI):</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								       <select id="injector_num2" name="injector_num2" class="form-control">
                                               <option ${sys_user.injector_num2==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num2==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num2==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num2==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  </select>    
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <label for="injector_num3" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">CI4000 F1:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								            <select id="injector_num3" name="injector_num3" class="form-control">
                                               <option ${sys_user.injector_num3==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num3==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num3==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num3==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  		</select>  
								    </div>
								  </div>
								
								 <div class="form-group">
								    <label for="injector_num4" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">CI4000 F2:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								        <select id="injector_num4" name="injector_num4" class="form-control">
                                               <option ${sys_user.injector_num4==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num4==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num4==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num4==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num5" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">CI4000 F3:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num5" name="injector_num5" class="form-control">
                                               <option ${sys_user.injector_num5==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num5==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num5==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num5==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num6" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Maximator on F3:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num6" name="injector_num6" class="form-control">
                                               <option ${sys_user.injector_num6==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num6==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num6==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num6==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num7" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">CI4000 F4:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num7" name="injector_num7" class="form-control">
                                               <option ${sys_user.injector_num7==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num7==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num7==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num7==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num8" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">LE testing bench:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								    	<select id="injector_num8" name="injector_num8" class="form-control">
                                               <option ${sys_user.injector_num8==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num8==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num8==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num8==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="injector_num9" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">CRI assembly  (assemble, Parameters adjustment):</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num9" name="injector_num9" class="form-control">
                                               <option ${sys_user.injector_num9==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num9==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num9==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num9==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
							</div>
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								
								  <div class="form-group">
								    <label for="injector_num10" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">CRIN assembly (assemble, Parameters adjustment):</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num10" name="injector_num10" class="form-control">
                                               <option ${sys_user.injector_num10==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num10==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num10==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num10==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="injector_num11" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">FOS sensor:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num11" name="injector_num11" class="form-control">
                                               <option ${sys_user.injector_num11==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num11==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num11==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num11==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num12" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Medes/Sensors on test bench (Tem. Pres….):</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num12" name="injector_num12" class="form-control">
                                               <option ${sys_user.injector_num12==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num12==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num12==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num12==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num13" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">ESI-spring testing device:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num13" name="injector_num13" class="form-control">
                                               <option ${sys_user.injector_num13==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num13==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num13==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num13==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num14" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Oscloscope:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num14" name="injector_num14" class="form-control">
                                               <option ${sys_user.injector_num14==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num14==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num14==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num14==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num15" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Wet closing time:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num15" name="injector_num15" class="form-control">
                                               <option ${sys_user.injector_num15==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num15==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num15==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num15==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num16" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Dry closing time measurement device(IN PLAN):</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num16" name="injector_num16" class="form-control">
                                               <option ${sys_user.injector_num16==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num16==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num16==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num16==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num17" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">LE assembly( Nozzle exchange):</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="injector_num17" name="injector_num17" class="form-control">
                                               <option ${sys_user.injector_num17==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num17==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num17==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num17==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="injector_num18" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Hirox:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								     <select id="injector_num18" name="injector_num18" class="form-control">
                                               <option ${sys_user.injector_num18==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.injector_num18==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.injector_num18==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.injector_num18==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						<!-- 3 -->
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:15px;">
							<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10" style="min-height:30px;border:saolid 1px;">
								
								  <div class="form-group">
								    <label  class="col-md-6 col-lg-6 col-xl-6 col-sm-6 control-label" style="text-align: left;color:#208ae7;padding-left: 10%;font-size:20px;">Rail</label>
								  </div>
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						<!--4  -->
							<div class="row" style="margin-left:0px;margin-right:0px;margin-top:30px;">
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group">
								    <label for="rail_1" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Rail Test bench:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="rail_1" name="rail_1" class="form-control">
                                               <option ${sys_user.rail_1==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.rail_1==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.rail_1==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.rail_1==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								 
								  <div class="form-group">
								    <label for="rail_2" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Rail assembly and disassembly:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								       <select id="rail_2" name="rail_2" class="form-control">
                                               <option ${sys_user.rail_2==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.rail_2==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.rail_2==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.rail_2==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								 
								  
							</div>
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								  <div class="form-group">
								    <label for="rail_3" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Cutting/Grinding/Molding:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="rail_3" name="rail_3" class="form-control">
                                               <option ${sys_user.rail_3==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.rail_3==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.rail_3==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.rail_3==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						<!-- 5 -->
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:15px;">
							<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10" style="min-height:30px;border:saolid 1px;">
								
								  <div class="form-group">
								    <label  class="col-md-6 col-lg-6 col-xl-6 col-sm-6 control-label" style="text-align: left;color:#208ae7;padding-left: 10%;font-size:20px;">Nozzle</label>
								  </div>
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						<!-- 6 -->
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:30px;">
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group">
								    <label for="nozzle_1" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Pdoe bench:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="nozzle_1" name="nozzle_1" class="form-control">
                                               <option ${sys_user.nozzle_1==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.nozzle_1==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.nozzle_1==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.nozzle_1==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								 
								  <div class="form-group">
								    <label for="nozzle_2" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Qflow rate bench:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="nozzle_2" name="nozzle_2" class="form-control">
                                               <option ${sys_user.nozzle_2==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.nozzle_2==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.nozzle_2==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.nozzle_2==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <label for="nozzle_3" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Mahr:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="nozzle_3" name="nozzle_3" class="form-control">
                                               <option ${sys_user.nozzle_3==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.nozzle_3==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.nozzle_3==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.nozzle_3==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
							</div>
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								  <div class="form-group">
								    <label for="nozzle_4" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">VM-Microscope:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="nozzle_4" name="nozzle_4" class="form-control">
                                               <option ${sys_user.nozzle_4==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.nozzle_4==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.nozzle_4==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.nozzle_4==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="nozzle_5" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Cutting/Grinding/Molding:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="nozzle_5" name="nozzle_5" class="form-control">
                                               <option ${sys_user.nozzle_5==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.nozzle_5==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.nozzle_5==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.nozzle_5==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="nozzle_6" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Pako clearance Nozzle and valve set:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="nozzle_6" name="nozzle_6" class="form-control">
                                               <option ${sys_user.nozzle_6==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.nozzle_6==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.nozzle_6==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.nozzle_6==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								 
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						<!-- 7 -->
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:15px;">
							<div class="col-md-10 col-lg-10 col-xl-10 col-sm-10" style="min-height:30px;border:saolid 1px;">
								
								  <div class="form-group">
								    <label  class="col-md-6 col-lg-6 col-xl-6 col-sm-6 control-label" style="text-align: left;color:#208ae7;padding-left: 10%;font-size:20px;">Others</label>
								  </div>
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						<!-- 8 -->
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:30px;">
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group">
								    <label for="others_1" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Warehouse management software:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="others_1" name="others_1" class="form-control">
                                               <option ${sys_user.others_1==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.others_1==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.others_1==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.others_1==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								 
								  <div class="form-group">
								    <label for="others_2" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Keyence microscope:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="others_2" name="others_2" class="form-control">
                                               <option ${sys_user.others_2==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.others_2==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.others_2==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.others_2==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <label for="others_3" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">SEM:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="others_3" name="others_3" class="form-control">
                                               <option ${sys_user.others_3==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.others_3==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.others_3==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.others_3==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="others_4" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Zwick:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="others_4" name="others_4" class="form-control">
                                               <option ${sys_user.others_4==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.others_4==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.others_4==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.others_4==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <label for="others_5" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Testing fuel inspection:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="others_5" name="others_5" class="form-control">
                                               <option ${sys_user.others_5==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.others_5==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.others_5==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.others_5==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
							</div>
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								  <div class="form-group">
								    <label for="others_6" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Leica-microscop:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="others_6" name="others_6" class="form-control">
                                               <option ${sys_user.others_6==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.others_6==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.others_6==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.others_6==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="others_7" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">AH devices:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="others_7" name="others_7" class="form-control">
                                               <option ${sys_user.others_7==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.others_7==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.others_7==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.others_7==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								   <div class="form-group">
								    <label for="others_8" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">LCR meter:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								    <select id="others_8" name="others_8" class="form-control">
                                               <option ${sys_user.others_8==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.others_8==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.others_8==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.others_8==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								  
								  <div class="form-group">
								    <label for="others_9" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">ultrasonic cleaner:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <select id="others_9" name="others_9" class="form-control">
                                               <option ${sys_user.others_9==1?'selected':''} value='1'>1.完成基本培训/finish orientation training</option>
                                               <option ${sys_user.others_9==2?'selected':''} value='2'>2.基础操作/ basic operation</option>
                                               <option ${sys_user.others_9==3?'selected':''} value='3'>3.高级操作+问题解决/advance operation + trouble shooting</option>
                                               <option ${sys_user.others_9==4?'selected':''} value='4'>4.Trianer/培训员资质认证</option>
	                                  	</select>  
								    </div>
								  </div>
								 
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						
						
						<div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 "  style="text-align:center;margin-top:40px;margin-bottom:40px;">
                                    <button type="button" class="btn btn-primary btn-lg" style=" padding: 11px 122px;" onclick="save();" id="confirm">confirm</button>
                        </div>
						</form>	
					</div>
			</div>
		</div>
	</div>	

	
</body>
	
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>

		/* 保存 */
		function save(){
			    /* $('#saveId').attr("disabled",true);  */
			   if(check()){
				   var flag=true;
				   layer.alert('确认保存？', {
				  skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
				}, function(){  
				   console.log("开始：");
				   if(flag){
						flag=false;
						var load = layer.load(1, {shade: [0.1,'#fff']});	
						$.ajax({
					   	url:'<%=basePath%>main/renewal.do',
						type: "POST",
						dataType:'text',
						data: $('#formId').serialize(),
						success: function(data){
							console.log(data+"=======1121");
							 if(data==1){
								 console.log("kaishi========");
								 layer.close(load);	
								 layer.msg('修改成功！', {
											time : 1000,
											icon : 1
										},function(){
											window.location='<%=basePath%>main/peopleList.do';
										});
							 }else{
								 if(data==2){
									 layer.close(load);
										layer.msg('修改失败，请检查输入！', { time : 2000,icon : 2 });
								 }
								
							 	}
							}
				   	
					});
					}
				});	
			   }
		}
		var tts=setTimeout(function(){
			   $('#saveId').attr("disabled",false);
			},3000)
		 
		//客户端校验
		function check() {
			
			if ($("#email").val().trim() == "") {
				$("#email").tips({
					side : 2,
					msg : '邮箱不能为空',
					bg : '#AE81FF',
					time : 3
				});
				$("#email").focus();
				return false;
			}else if (!isMailAvailable()) {
				$("#email").tips({
					side : 2,
					msg : '邮箱录入有误',
					bg : '#AE81FF',
					time : 3
				});
				$("#email").focus();
				return false;
			}
		/* 	if ($("#mobile_phone").val().trim() == "") {
				$("#mobile_phone").tips({
					side : 2,
					msg : '手机号不能为空',
					bg : '#AE81FF',
					time : 3
				});
				$("#mobile_phone").focus();
				return false;
			}else  */
			if($("#mobile_phone").val().trim()!= ""){
				if (!isPhoneAvailable()) {
					$("#mobile_phone").tips({
						side : 2,
						msg : '手机号录入有误',
						bg : '#AE81FF',
						time : 3
					});
					$("#mobile_phone").focus();
					return false;
				}
			}
		
			if ($("#username").val().trim() == "") {
				$("#username").tips({
					side : 2,
					msg : '姓名不能为空',
					bg : '#AE81FF',
					time : 3
				});
				$("#username").focus();
				return false;
			}else if ($("#username").val().trim().length<2) {

				$("#username").tips({
					side : 2,
					msg : '姓名最少2位',
					bg : '#AE81FF',
					time : 3
				});

				$("#username").focus();
				return false;
			}
			return true;
		}


		function isPhoneAvailable(){
			var phoneReg = /^1[3-5789]\d{9}$/;
			var mobilephone=$("#mobile_phone").val().trim();
		    if(phoneReg.test(mobilephone)){
		        return true;
		    }else{
		        return false;
		    }
		}
		var mailReg = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		function isMailAvailable(){
			var mail=$("#email").val().trim();
		    if(mailReg.test(mail)){
		        return true;
		    }else{
		        return false;
		    }
		}

		
		
	</script>
</html>