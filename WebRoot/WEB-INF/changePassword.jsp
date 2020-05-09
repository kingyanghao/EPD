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
        width: 992px;
        font-size:60%;
    }
}

@media ( min-width :900px) {
    .container {
        width: 992px;
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
#lantiao{
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;

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
					<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Change Password</div></div>
			<div class="container">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
				
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" style="min-height: 750px;">
						<form class="form-horizontal" id="formId">
						<div class="row" style="margin-left:0px;margin-right:0px;margin-top:100px;">
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								 <div class="form-group">
								    <label for="account" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Account:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input type="text" class="form-control" id="account" name="account" value="${sys_user.account}" readonly="readonly">
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="new_password" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">New password:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input onfocus="this.type='password'" type="text" class="form-control" id="new_password" name="new_password" value="">
								    </div>
								  </div>
							
								  <div class="form-group">
								    <label for="new_password" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">User name:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input  type="text" class="form-control" id="username" name="username" readonly="readonly"  value="${sys_user.username}">
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="new_password" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Mobile phone:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input  type="text" class="form-control" id="mobile_phone" name="mobile_phone" value="${sys_user.mobile_phone}">
								    </div>
								  </div>
							</div>
							<div class="col-md-5 col-lg-5 col-xl-5 col-sm-5" style="min-height:30px;border:saolid 1px;">
								<div class="form-group">
								    <label for="password" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">PassWord:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input onfocus="this.type='password'" type="text" class="form-control" id="password" name="password" value="">
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="confirm_password" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Confirm password:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input onfocus="this.type='password'" type="text" class="form-control" id="confirm_password" name="confirm_password" value="">
								    </div>
								  </div>
								  <div class="form-group">
								    <label for="new_password" class="col-md-7 col-lg-7 col-xl-7 col-sm-7 control-label" style="text-align: left;color:#919aa7;padding-left: 20%;">Phone:</label>
								    <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5">
								      <input  type="text" class="form-control" id="phone" name="phone" value="${sys_user.phone}">
								    </div>
								  </div>
							</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						</form>	
						<!-- 1 -->
						<div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 "  style="text-align:center;margin-top:100px;margin-bottom:40px;">
                               <button type="button" class="btn btn-primary btn-lg" style=" padding: 11px 122px;" onclick="save();" id="confirm">confirm</button>
                        </div>
						</div>
							<div class="col-md-1 col-lg-1 col-xl-1 col-sm-1" style="min-height:30px;"></div>
						</div>
						
					
					</div>
					
			</div>
		</div>
	

	
</body>
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
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
					   	url:'<%=basePath%>main/update_password.do',
						type: "POST",
						dataType:'text',
						data: $('#formId').serialize(),
						success: function(data){
							console.log(data+"=======1121");
							 if(data==1){
								 console.log("kaishi========");
									 layer.msg('修改成功！', {
											time : 1000,
											icon : 1
										},function(){
											window.location='<%=basePath%>main/sign_in.do';
										});
							 }else{
								 if(data==2){
									 layer.close(load);
										layer.msg('修改失败，请检查输入！', { time : 2000,icon : 2 });
								 }else if(data==-1){
									 layer.close(load);
										layer.msg('该姓名已存在，请重新输入！', { time : 2000,icon : 2 });
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
if($("#password").val().trim() != ""||$("#new_password").val().trim() != ""||$("#confirm_password").val().trim() != ""){
	

			if ($("#password").val().trim() == "") {
		$("#password").tips({
			side : 2,
			msg : '密码不得为空',
			bg : '#AE81FF',
			time : 3
		});

		$("#password").focus();
		return false;
	}else if ($("#password").val().trim().length<6) {
		$("#password").tips({
			side : 2,
			msg : '密码最少6位',
			bg : '#AE81FF',
			time : 3
		});
		$("#password").focus();
		return false;
	}
	
	if ($("#new_password").val().trim() == "") {
		$("#new_password").tips({
			side : 2,
			msg : '密码不得为空',
			bg : '#AE81FF',
			time : 3
		});

		$("#new_password").focus();
		return false;
	}else if ($("#new_password").val().trim().length<6) {
		$("#new_password").tips({
			side : 2,
			msg : '密码最少6位',
			bg : '#AE81FF',
			time : 3
		});
		$("#new_password").focus();
		return false;
	}
	
	
	if ($("#confirm_password").val().trim() == "") {

		$("#confirm_password").tips({
			side : 2,
			msg : '确认密码不得为空',
			bg : '#AE81FF',
			time : 3
		});

		$("#confirm_password").focus();
		return false;
	}else if ($("#confirm_password").val().trim().length<6) {
		$("#confirm_password").tips({
			side : 2,
			msg : '密码最少6位',
			bg : '#AE81FF',
			time : 3
		});

		$("#confirm_password").focus();
		return false;
	}else if($("#new_password").val().trim()!=$("#confirm_password").val().trim()){
		$("#confirm_password").tips({
			side : 2,
			msg : '两次密码输入不一致',
			bg : '#AE81FF',
			time : 3
		});

		$("#confirm_password").focus();
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

if($("#mobile_phone").val().trim() != ""){
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