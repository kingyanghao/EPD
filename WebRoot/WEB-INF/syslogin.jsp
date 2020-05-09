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
<html>
<head>
<base href="<%=basePath%>">
<title>Sign in</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="shortcut icon" href="favicon.ico"/>
 <link rel="stylesheet" href="css/bootstrap.min.css">  
 <link rel="stylesheet" href="/EPD/layui/css/layui.css" media="all">
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

      


        
   
        .one_css{
            border:solid 1px white;
            min-height: 300px;
            min-width: 300px;
            height:400px;
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
.child{
        width: 20%;
        background: white;
        position: absolute;
        top: 0;  bottom: 0; right: 10%;
        margin: auto;
        -moz-box-shadow:2px 2px 5px #333333; -webkit-box-shadow:2px 2px 5px #333333; box-shadow:2px 2px 5px #333333;
        }
 .child1{
        width: 30%;
        color: white;
        position: absolute;
        top: 0;  bottom: 0; left:20%;
        margin: auto;
        
 }

@media ( min-width :600px) {
    .container {
        width: 992px;
        font-size:40%;
    }
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
      

<div class="  child1" style="height: 100px;">
                <div style="text-align: center;margin-left: 3%;margin-right: 3%;">
                            <div style="font-size: 500%;font-weight: bold;">RBCD-EPD</div>
                   
                            <div  style="font-size: 250%;font-weight: bold;">Test Lab Online</div>
                    </div>
        </div>

        <div class="one_css outline child">
            
                <div style="height: 64px;width: 100%;text-align: center;margin-top: 30px;">
                    <img src="img/bosch.png" style="width: 75%;" />
                </div>

              
                <div style="text-align: center;margin-left: 3%;margin-right: 3%;min-height: 100px;">
                    <input  type="text" id="account" name="account" placeholder="Account" style="height: 60px;width:100%;padding-left: 10px;padding-right: 10px;border-radius: 10px;margin-top: 10px;">
                     <input onfocus="this.type='password'" type="text" id="password" name="password" placeholder="Password" style="height: 60px;width:100%;padding-left: 10px;padding-right: 10px;border-radius: 10px;margin-top: 10px;">
                    </div>
                     <div style="margin-left: 4%;margin-right: 3%;margin-top:10px;"> 
                    <a style="color:#0366d6;" href="main/register.do">Create an account.</a>
                      </div>
                    <div style="text-align: center;margin-left: 3%;margin-right: 3%;">      
               <button style="height: 60px;width:100%;margin-top: 20px;border-radius: 10px;background-color: #21b4ff;color: white;font-weight: bold;font-size: 20px;" onclick="severCheck();">Sign in</button>    
              </div> 
            <div style="text-align: center;margin-left: 3%;margin-right: 3%;margin-top: 10px;"><a style="color:#0366d6;" href="main/forgot_password.do">Forgot password?</a>
             </div>    
            
        </div>

    </div>

</body>
<script src="js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="layui/layer.js"></script>
<script>



$(document).ready(function() {
	$("#account").val('');
	 $("#password").val('');
});
$(document).keyup(function (e) {//捕获文档对象的按键弹起事件
    if (e.keyCode == 13) {//按键信息对象以参数的形式传递进来了
    	severCheck();
    }
});
//服务器校验
function severCheck(){
	if(check()){
		var account = $("#account").val();
		var password = $("#password").val();
		 var flag=true;
		   if(flag){
				flag=false;
				var load = layer.load(1, {shade: [0.1,'#fff']});	
		$.ajax({
			type: "POST",
			url: '<%=basePath%>main/login_login.do',
	    	data: {account:account,password:password},
			dataType:'json',
			cache: false,
			success: function(data){
				console.log("data.result"+data);
				layer.close(load);
				if("success" == data){
					
					window.location.href="/EPD/main/overview.do";
				}else if("usererror" == data){
					layer.msg('账号或密码错误！',{time : 3000,icon : 2});	
				}else{
					layer.msg('登录失败！',{time : 2000,icon : 2});	
				}
			},
			error: function(data){
				layer.close(load);
				layer.msg('登录失败！',{time : 1000,icon : 2});	
			}
		});
	}
	}
}




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
	} else {
		$("#account").val(jQuery.trim($('#account').val()));
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
	}
	
	return true;
}


</script>

	
	
</html>