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
<title>技能矩阵</title>
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
#lantiao{
width: 100%;height: 5vh;background-color:#3564ba;margin-top:8vh;

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
        width:85%;
        overflow-x: auto;
        margin-left:116px;
    }

    .t-ctn .s-ctn {
        min-height: 140px;
        white-space: nowrap;
        font-size: 0;
    }

    .t-ctn .s-ctn div {
        font-size: 14px;
        box-sizing: border-box;
        white-space: normal;
        word-wrap: break-word;
        word-break: break-all;
        overflow: hidden;
        display: inline-block;
        width: 170px;
        height: 100%;
       
    }
    
   	#id{position:absolute;left:10px}这样就可以固定。。
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
        width:60%;
        overflow-x: auto;
        margin-left:116px;
    }
}

@media ( min-width :992px) {
    .container {
        width: auto;
        font-size:60%;
    }
    .t-ctn {
        width:65%;
        overflow-x: auto;
        margin-left:116px;
    }
}
@media ( min-width :1100px) {
    .container {
        width: auto;
        font-size:60%;
    }
    .t-ctn {
        width: 70%;
        overflow-x: auto;
        margin-left:116px;
    }
}

@media ( min-width :1200px) {
    .container {
        width: auto;
        font-size:70%;
    }
    .t-ctn {
        width: 75%;
        overflow-x: auto;
        margin-left:116px;
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
	<!-- 内容区 -->
	<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Mechanic Skill</div></div>
	

	<div id="main">
			<div class="">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
								
					
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" style="min-height: 740px;position:relative;">
						<div style="margin-top:10px;">
						 	<div style="height:40px;color:#8d8787;font-size:15px;line-height:40px;display:inline-block;margin-left:10px;"><img style="height:20px;width:20px;" src="/EPD/img/1.png"/><span style="margin-left:10px;"> 完成基本培训/finish orientation training</span></div>
				            <div style="height:40px;color:#8d8787;font-size:15px;line-height:40px;display:inline-block;margin-left:10px;"><img style="height:20px;width:20px;" src="/EPD/img/2.png"/><span style="margin-left:10px;">基础操作/ basic operation</span></div>
				            <div style="height:40px;color:#8d8787;font-size:15px;line-height:40px;display:inline-block;margin-left:10px;"><img style="height:20px;width:20px;" src="/EPD/img/3.png"/><span style="margin-left:10px;">高级操作+问题解决/advance operation + trouble shooting</span></div>
				            <div style="height:40px;color:#8d8787;font-size:15px;line-height:40px;display:inline-block;margin-left:10px;"><img style="height:20px;width:20px;" src="/EPD/img/4.png"/><span style="margin-left:10px;">Trianer/培训员资质认证</span></div>
						</div>	
		<div class="t-ctn">
        	<div class="s-ctn">
	        <!-- 标题开始 -->
	          <div style="width:170px;margin-top:10px;" id="id">
	            <div style="height:40px;color:#8d8787;font-size:20px;">Task</div>
	            <div style="height:40px;color:#208ae7;font-size:20px;">Injector</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">ESS-old (CRIN/CRI):</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">ESS new (CRI)</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">CI4000 F1</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">CI4000 F2</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">CI4000 F3:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Maximator on F3:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">CI4000 F4:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">LE testing bench:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;padding-top:5px;">CRI assembly(assemble,<br />Parameters adjustment):</div>
	          	<div style="height:40px;color:#8d8787;font-size:12px;padding-top:5px;">CRIN assembly (assemble,<br /> Parameters adjustment):</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">FOS sensor:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;padding-top:5px;">Medes/Sensors on test<br /> bench (Tem. Pres….):</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">ESI-spring testing device:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Oscloscope:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Wet closing time:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;padding-top:5px;">Dry closing time measurement<br /> device(IN PLAN):</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;padding-top:5px;">LE assembly<br />( Nozzle exchange):</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Hirox:</div>
					<!--R  -->
	          	<div style="height:40px;color:#208ae7;font-size:20px;">Rail</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Rail Test bench:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;padding-top:5px;">Rail assembly and <br />disassembly:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Cutting/Grinding/Molding:</div>
	           <!-- N -->
	           <div style="height:40px;color:#208ae7;font-size:20px;">Nozzle</div>
	           <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Pdoe bench:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Qflow rate bench:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Mahr:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">VM-Microscope:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Cutting/Grinding/Molding:</div>
	          	 <div style="height:40px;color:#8d8787;font-size:12px;padding-top:5px;">Pako clearance Nozzle and<br /> valve set:</div>
	            <!--O  -->
	             <div style="height:40px;color:#208ae7;font-size:20px;">Others</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;padding-top:5px;">Warehouse management <br />software:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Keyence microscope:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">SEM:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Zwick:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Testing fuel inspection:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">Leica-microscop:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">AH devices:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">LCR meter:</div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;">ultrasonic cleaner:</div>
	         </div>
            <!-- 标题结束 -->
           <c:if test="${fn:length(list)==0}">
	          	<script type="text/javascript" language="javascript">
					alert("暂无人员技能矩阵"); // 弹出错误信息
					window.location='<%=basePath%>taijia/findTaijia.do';// 跳转到登录界面
				</script> 
           	</c:if>
           	<c:if test="${fn:length(list)>0}">
           	<c:forEach items="${list}" var="item" >
             <div style="width:140px;margin-top:10px;">
	            <div style="height:40px;color:#8d8787;font-size:20px;text-align: center;padding-left: 10px;padding-right:10px;">${item.username}</div>
	          	<div style="height:40px;color:#208ae7;font-size:20px;"></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;">
	            <img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num1}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num2}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num3}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num4}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num5}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num6}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num7}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num8}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num9}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num10}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num11}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num12}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num13}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num14}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num15}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num16}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num17}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.injector_num18}.png"/></div>
	            <div style="height:40px;color:#208ae7;font-size:20px;"></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.rail_1}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.rail_2}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.rail_3}.png"/></div>
	            <div style="height:40px;color:#208ae7;font-size:20px;"></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.nozzle_1}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.nozzle_2}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.nozzle_3}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.nozzle_4}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.nozzle_5}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.nozzle_6}.png"/></div>
	            <div style="height:40px;color:#208ae7;font-size:20px;"></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.others_1}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.others_2}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.others_3}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.others_4}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.others_5}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.others_6}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.others_7}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.others_8}.png"/></div>
	            <div style="height:40px;color:#8d8787;font-size:12px;line-height:40px;text-align: center;"><img style="height:20px;width:20px;" src="/EPD/img/${item.others_9}.png"/></div>
	         </div>
            </c:forEach>
            </c:if> 
        </div>
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
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>

	$(document).ready(function(){ 
		four();
	});
		
		
	</script>
</html>