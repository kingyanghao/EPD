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
<title>Forgot password</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="layui/css/layui.css" rel="stylesheet" media="all"/>
 <link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
<style type="text/css">
     html{
        width: 100%;
        height: 100%;
    }

   
    .web_bg {
        background:url("img/denglu.png") no-repeat;
        top: 0;
        left: 0;
        width: 100%;
        min-width: 1000px !important;
        zoom: 1;
        background-color: #fff;
        background-size: cover;
       
    }
    
        /*最外层边框*/
        .outline{
            background-color: white;
            border-radius: 20px;

        }

        /* 内边框 */
        .In_the_frame{
            border:solid 1px #d2cdcd;
            border-radius: 20px;
            margin:25px;
        }

        /* file边框 */

        .file_border{
            margin-top: 30px;
            padding-left: 0 !important;
            padding-right: 0 !important;
        }

        .file{
            height: 121px;
            
            text-align: center;
            line-height: 121px;
            font-weight: bolder;
            background: -webkit-linear-gradient(left, #ad8d9d, #a9909e, #a8919f, #9b9ba3, #989fa5, #92a5a8, #8caaaa); /* Safari 5.1 - 6.0 */
            background: -o-linear-gradient(left, #ad8d9d, #a9909e, #a8919f, #9b9ba3, #989fa5, #92a5a8, #8caaaa); /* Opera 11.1 - 12.0 */
            background: -moz-linear-gradient(left, #ad8d9d, #a9909e, #a8919f, #9b9ba3, #989fa5, #92a5a8, #8caaaa); /* Firefox 3.6 - 15 */
            background: linear-gradient(to right, #ad8d9d, #a9909e, #a8919f, #9b9ba3, #989fa5, #92a5a8, #8caaaa); /* 标准的语法（必须放在最后） */
            color: white;
        }
        
   
        .one_css{
            border:solid 1px white;
            min-height: 300px;
            
            min-width: 400px;
            height: 470px;
        }
    
        .input_css{
            width: 206px;
            margin-top: 10px;
            -moz-box-shadow:inset 5px 5px 10px #CCC;
           -webkit-box-shadow: inset 5px 5px 10px #CCC;
            box-shadow:inset 5px 5px 10px #CCC;

        }
        .form_css {
        margin-top: 58px;
        /* text-align: center; */
        display: flex;
        /* justify-content: center; */
        flex-wrap: nowrap;
        flex-shrink: 0;
        /* flex-grow: 0; */
        flex-direction: column;
        flex-wrap: wrap;
        align-items: center;
        }
    
        .btn{
            margin-top: 20px;
            margin-bottom:46px;
            width: 100px;
            font-size: 15px;
            background: -webkit-linear-gradient( #FFFFFF,#d9d9d9); /* Safari 5.1 - 6.0 */
            background: -o-linear-gradient(#FFFFFF,#d9d9d9); /* Opera 11.1 - 12.0 */
            background: -moz-linear-gradient(#FFFFFF,#d9d9d9); /* Firefox 3.6 - 15 */
            background: linear-gradient(#FFFFFF,#d9d9d9); /* 标准的语法 */
        }

    
.parent {
    position:relative;
}

.child{
        width: 20%;
      
        background: white;
        position: absolute;
        top: 0; right: 0; bottom: 0; left: 0;
        margin: auto;
        -moz-box-shadow:2px 2px 5px #333333; -webkit-box-shadow:2px 2px 5px #333333; box-shadow:2px 2px 5px #333333;
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
        font-size:70%;
    }
}

@media ( min-width :1200px) {
    .container {
        width: auto;
        font-size:80%;
    }
}

@media ( min-width :1400px) {
    .container {
        width: auto;
        font-size:100%;
    }
    
}

a:hover
{ 

cursor:pointer;
}
</style>
</head>

<body class="web_bg ">
    <div class="public_css box1 container">
        <div class="one_css outline child">
            
                <div style="height: 64px;width: 100%;text-align: center;margin-top: 30px;">
                    <img src="img/bosch.png" style="width: 75%;" />
                </div>

              
                <div style="text-align: center;margin-left: 3%;margin-right: 3%;min-height: 100px;">
                     <form id="formId" name="formId" action=""  method="post">  
                      <input type="text" id="account" name="account" maxlength="20" placeholder="Account" style="height: 50px;width:100%;padding-left: 10px;padding-right: 10px;border-radius: 10px;margin-top: 10px;">
                    <!--   <input type="text" id="mobile_phone" maxlength="11" name="mobile_phone" placeholder="Mobile phone" style="height: 50px;width:100%;padding-left: 10px;padding-right: 10px;border-radius: 10px;margin-top: 10px;"> -->
                      <input type="text" id="email" name="email" maxlength="40" placeholder="Email" style="height: 50px;width:100%;padding-left: 10px;padding-right: 10px;border-radius: 10px;margin-top: 10px;">
                      <input onfocus="this.type='password'" type="text" id="password" name="password" maxlength="15" placeholder="Password" style="height: 50px;width:100%;padding-left: 10px;padding-right: 10px;border-radius: 10px;margin-top: 10px;">
                      <input onfocus="this.type='password'" type="text" id="confirm_password" name="confirm_password" maxlength="15" placeholder="Confirm password" style="height: 50px;width:100%;padding-left: 10px;padding-right: 10px;border-radius: 10px;margin-top: 10px;">
                   </form>
                    </div>
                   
                    <div style="text-align: center;margin-left: 3%;margin-right: 3%;">      
               <button style="height: 50px;width:100%;margin-top: 30px;border-radius: 10px;background-color: #21b4ff;color: white;font-weight: bold;font-size: 20px;" onclick="save();">Confirm</button>    
              </div> 
            <div style="text-align: center;margin-left: 3%;margin-right: 3%;margin-top: 10px;"><a style="color:#0366d6;" href="main/sign_in.do">Back to Login</a>
             </div>    
            
        </div>

    </div>
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
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
	if ($("#account").val().trim() == "") {
		$("#account").tips({
			side : 2,
			msg : '账号不得为空',
			bg : '#AE81FF',
			time : 3
		});
		$("#account").focus();
		return false;
	}else if($("#account").val().trim()<2){
		$("#account").tips({
			side : 2,
			msg : '账号输入有误',
			bg : '#AE81FF',
			time : 3
		});
		$("#account").focus();
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
	}else if (!isPhoneAvailable()) {
		$("#mobile_phone").tips({
			side : 2,
			msg : '手机号录入有误',
			bg : '#AE81FF',
			time : 3
		});
		$("#mobile_phone").focus();
		return false;
	} */
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
	}else if($("#password").val().trim()!=$("#confirm_password").val().trim()){
		$("#confirm_password").tips({
			side : 2,
			msg : '两次密码输入不一致',
			bg : '#AE81FF',
			time : 3
		});

		$("#confirm_password").focus();
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
</body>




    
        
        
        


</html>