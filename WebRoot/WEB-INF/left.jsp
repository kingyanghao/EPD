<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
		<style>
a:focus {
    outline: none;
    outline: navajowhite;
    outline-offset: -2px;
}
a:hover, a:focus {
    
  text-decoration: unset;
}
.aa{
    background-position: initial;
    z-index: 11111;
}
</style>
<!-- 左部 -->
	<div>
		<ul id="zuo" class="layui-nav layui-nav-tree layui-nav-side aa" lay-shrink="all"  lay-filter="demo" style="margin-right: 10px;width: 14.9%;">
			<!-- 第一模块 -->
			<li class="layui-nav-item" id="aa1"><a id="asd"
				style="color: white;margin-top: 34%;"
				href="javascript:;"><span style="font-size: 0.85vw;font-family: 微软雅黑;"><i class="iconfont icon-xiangmu"></i>&nbsp;MAE Overview</span></a>
				<dl class="layui-nav-child">
					<dd>
						<a href="/EPD/taijia/findTaijia.do"><span style="margin-left:11%;font-size: 0.82vw;">Test bench</span></a>
					</dd>
					<!-- 
					<dd>
						<a href="/EPD/celianggongju/findCelianggongju.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Other equipment</span></a>
					</dd>
					<dd>
						<a href="/EPD/shoudongliangju/findShoudongliangju.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Hand gauge</span></a>
					</dd>
					 -->
					<dd>
						<a href="/EPD/main/benchOrder.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Test Bench Order</span></a>
					</dd>
					<dd>
						<a href="/EPD/liyong/tolnian.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Utilzation-Year</span></a>
					</dd>
					<dd>
						<a href="/EPD/liyong/tol.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Utilzation-Month</span></a>
					</dd>
				</dl></li>
			<!-- 第二模块 -->
			<br>
			<li class="layui-nav-item" id="aa2"><a id="asd"
				style="color: white;"
				href="javascript:;"><span style="font-size: 0.85vw;font-family: 微软雅黑;"><i class="iconfont icon-weixiu1"></i>&nbsp;Maintenance&Repair</span></a>
				<dl class="layui-nav-child" >
					<dd id="aa21">
						<a href="javascript:;"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Maintenance</span></a>
							<dl class="layui-nav-child">
								<dd>
									<a href="/EPD/main/dailyCheckList.do"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">Daily check</span></a>
								</dd>
								<dd>
									<a href="/EPD/main/monthCheckList.do"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">Monthly Maintenance</span></a>
								</dd>
								<dd>
									<a href="/EPD/main/yearCheckList.do"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">Yearly Maintenance</span></a>
								</dd>
								<dd>
									<a href="/EPD/biaoding.do"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">Calibration</span></a>
								</dd>
							</dl>
					</dd>
					<dd>
						<a href="/EPD/weixiuliebiao.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Repair Order</span></a>
					</dd>
				</dl></li>
			<!-- 第三模块 -->
			<br>
			<li class="layui-nav-item" id="aa3"><a id="asd"
				style="color: white;"
				href="javascript:;"><span style="font-size: 0.85vw;font-family: 微软雅黑;"><i class="iconfont icon-xiadan"></i>&nbsp;VA order</span></a>
				<dl class="layui-nav-child">
					<dd id="aa31">
						<a href="/EPD/main/createOeder.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Creat Order</span></a>
					</dd>
					<dd>
						<a href="/EPD/main/allOrderList.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Search/Modify </span></a>
					</dd>
					<dd>
						<a href="/EPD/main/getTaskPool.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Task pool</span></a>
					</dd>
					<dd id="aa32">
						<a href="javascript:;"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Task assigned</span></a>
						<dl class="layui-nav-child" >
							<dd>
								<a href="/EPD/main/dailyOrder.do?nav=1"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">Daily Order</span></a>
							</dd>
							<dd>
								<a href="/EPD/main/fiveSelectopeter.do?nav=1"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">5-day Order</span></a>
							</dd>
							<dd>
								<a href="/EPD/main/sevenSelectopeter.do?nav=1"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">Overtime Order</span></a>
							</dd>
							<dd>
								<a href="/EPD/main/performOrder.do?nav=1"><span style="margin-left:22%;font-size: 0.9vw;font-family: 微软雅黑;">Close Order</span></a>
							</dd>
						</dl>
					</dd>
				</dl></li>
			<!-- 第四模块 -->
			<br>
			<li class="layui-nav-item" id="aa4"><a id="asd"
				style="color: white;"
				href="javascript:;"><span style="font-size: 0.85vw;font-family: 微软雅黑;"><i class="iconfont icon-jigongzhengshu"></i>&nbsp;Work Force</span></a>
				<dl class="layui-nav-child">
					<dd id="aa4-1">
						<a href="javascript:;"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Task assigned</span></a>
						<dl class="layui-nav-child" >
							<dd>
								<a href="/EPD/main/dailyOrder.do?nav=2"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">Daily Order</span></a>
							</dd>
							<dd>
								<a href="/EPD/main/fiveSelectopeter.do?nav=2"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">7-day Order</span></a>
							</dd>
							<dd>
								<a href="/EPD/main/sevenSelectopeter.do?nav=2"><span style="margin-left:22%;font-size: 0.8vw;font-family: 微软雅黑;">Overtime Order</span></a>
							</dd>
							<dd>
								<a href="/EPD/main/performOrder.do?nav=2"><span style="margin-left:22%;font-size: 0.9vw;font-family: 微软雅黑;">Close Order</span></a>
							</dd>
							
						</dl>
					</dd>
					<dd id="aa4-2">
						<a href="javascript:;"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Statistics</span></a>
						<dl class="layui-nav-child" >
							<dd>
								<a href="/EPD/main/overtimeOrder.do" ><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Overtime</span></a>
							</dd>
							<dd>
								<a href="/EPD/main/workCount.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Workload statistics</span></a>
							</dd>
							<dd>
								<a href="/EPD/main/paidLeavetimeOrder.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Leave statistics</span></a>
							</dd>
						</dl>
					</dd>
					
	
			
					<dd>
						<a href="/EPD/main/skills_matrix.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Mechanic Skill</span></a>
					</dd>
					<dd>
						<a href="/EPD/main/paid_leaveList.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Leave application</span></a>
					</dd>
				</dl></li>
			<!-- 第五模块 -->
			<br>
			<li class="layui-nav-item  " id="aa5"><a id="asd"
				style="color: white;"
				href="javascript:;"><span style="font-size: 0.85vw;font-family: 微软雅黑;"><i class="iconfont icon-chakanceshijieguohuise"></i>&nbsp;Control System</span></a>
				<dl class="layui-nav-child">
					<dd>
						<a href="/EPD/dian/dian.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Bench overview</span></a>
					</dd>
					<dd>
						<a href="/EPD/celiangjieguo/celiangtubiao.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Test results list</span></a>
					</dd>
					<dd>
						<a href="/EPD/gongcha/findGongcha.do"><span style="margin-left: 11%;font-size: 0.82vw;font-family: 微软雅黑;">Tolerance Setting</span></a>
					</dd>
				</dl></li>
			<!-- 第六模块 -->
			<br>
			<li class="layui-nav-item"><a id="asd"
				style="color: white;"
				href="/EPD/OnePage.do"><span style="font-size: 0.85vw;font-family:微软雅黑;"><i class="iconfont icon-tongji"></i>&nbsp;One Page</span></a></li>
		</ul>
	</div>
	<script src="/EPD/layui/layui.js" charset="utf-8"></script>
	<script>
	layui.use('element', function() {
		var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块
		
	/* 	//监听导航点击
		element.on('nav(demo)', function(elem) {
		//element.render('main');
			console.log(elem);
			if(elem.text()!=null&&elem.text()!=''){
				setCookie("title",elem.text());
				console.log(getCookie("title")); 
				console.log(elem.text()); 
				
			}else{
				delCookie("title");
			}
		}); */
	});
/* 	//写入cookie
	function setCookie(name,value){
	var Days = 1;
	var exp = new Date();
	exp.setTime(exp.getTime() + Days*24*60*60*1000);
	document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
	}
	//删除cookie
	function delCookie(name){
	var exp = new Date();
	exp.setTime(exp.getTime() - 1);
	var cval=getCookie(name);
	if(cval!=null){
		document.cookie= name + "="+cval+";expires="+exp.toGMTString();
	}
	}
	//读取cookie
	function getCookie(name){
	var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
	if(arr=document.cookie.match(reg)){
		return unescape(arr[2]);
	}else{
	return null;
	}
	} */

	
	
	//导航栏第一个模块
	function first(){
			$("#aa1").removeClass("layui-nav-itemed");
			$("#aa2").removeClass("layui-nav-itemed");
			$("#aa21").removeClass("layui-nav-itemed");
			$("#aa3").removeClass("layui-nav-itemed");
			$("#aa31").removeClass("layui-nav-itemed");
			$("#aa4").removeClass("layui-nav-itemed");
			$("#aa5").removeClass("layui-nav-itemed");
			$("#aa32").removeClass("layui-nav-itemed");
			$("#aa1").addClass("layui-nav-itemed");
		
	}
	//导航栏第二个模块
	function two(){
			$("#aa1").removeClass("layui-nav-itemed");
			$("#aa2").removeClass("layui-nav-itemed");
			$("#aa21").removeClass("layui-nav-itemed");
			$("#aa3").removeClass("layui-nav-itemed");
			$("#aa31").removeClass("layui-nav-itemed");
			$("#aa4").removeClass("layui-nav-itemed");
			$("#aa5").removeClass("layui-nav-itemed");
			$("#aa32").removeClass("layui-nav-itemed");
			$("#aa2").addClass("layui-nav-itemed");
	}
	//导航栏第二个第一个子模块模块
	function two_first(){
			$("#aa1").removeClass("layui-nav-itemed");
			$("#aa2").removeClass("layui-nav-itemed");
			$("#aa21").removeClass("layui-nav-itemed");
			$("#aa3").removeClass("layui-nav-itemed");
			$("#aa31").removeClass("layui-nav-itemed");
			$("#aa4").removeClass("layui-nav-itemed");
			$("#aa5").removeClass("layui-nav-itemed");
			$("#aa32").removeClass("layui-nav-itemed");
			$("#aa2").addClass("layui-nav-itemed");
			$("#aa21").addClass("layui-nav-itemed");
	}
	
	//导航栏第三个模块
	function three(){
			$("#aa1").removeClass("layui-nav-itemed");
			$("#aa2").removeClass("layui-nav-itemed");
			$("#aa21").removeClass("layui-nav-itemed");
			$("#aa3").removeClass("layui-nav-itemed");
			$("#aa31").removeClass("layui-nav-itemed");
			$("#aa4").removeClass("layui-nav-itemed");
			$("#aa5").removeClass("layui-nav-itemed");
			$("#aa32").removeClass("layui-nav-itemed");
			$("#aa3").addClass("layui-nav-itemed");
			$("#aa31").addClass("layui-nav-itemed");
			
	}
	//导航栏第四个第一个模块
	function four(){
		var nav=GetUrlParam("nav");
		if(nav==1){
			$("#aa1").removeClass("layui-nav-itemed");
			$("#aa2").removeClass("layui-nav-itemed");
			$("#aa21").removeClass("layui-nav-itemed");
			$("#aa3").removeClass("layui-nav-itemed");
			$("#aa31").removeClass("layui-nav-itemed");
			$("#aa4").removeClass("layui-nav-itemed");
			$("#aa5").removeClass("layui-nav-itemed");
			$("#aa3").addClass("layui-nav-itemed");
			$("#aa31").addClass("layui-nav-itemed");
			$("#aa32").addClass("layui-nav-itemed");
		}else{
			$("#aa1").removeClass("layui-nav-itemed");
			$("#aa2").removeClass("layui-nav-itemed");
			$("#aa21").removeClass("layui-nav-itemed");
			$("#aa3").removeClass("layui-nav-itemed");
			$("#aa31").removeClass("layui-nav-itemed");
			$("#aa32").removeClass("layui-nav-itemed");
			$("#aa4").removeClass("layui-nav-itemed");
			$("#aa5").removeClass("layui-nav-itemed");
			$("#aa4").addClass("layui-nav-itemed");
			$("#aa4-1").addClass("layui-nav-itemed");
		}
			
			
	}
	//导航栏第四个第二个模块
	function four_2(){
			$("#aa1").removeClass("layui-nav-itemed");
			$("#aa2").removeClass("layui-nav-itemed");
			$("#aa21").removeClass("layui-nav-itemed");
			$("#aa3").removeClass("layui-nav-itemed");
			$("#aa31").removeClass("layui-nav-itemed");
			$("#aa32").removeClass("layui-nav-itemed");
			$("#aa4").removeClass("layui-nav-itemed");
			$("#aa5").removeClass("layui-nav-itemed");
			$("#aa4").addClass("layui-nav-itemed");
			$("#aa4-2").addClass("layui-nav-itemed");
			
	}
	//导航栏第五个模块
	function five(){
			$("#aa1").removeClass("layui-nav-itemed");
			$("#aa2").removeClass("layui-nav-itemed");
			$("#aa21").removeClass("layui-nav-itemed");
			$("#aa3").removeClass("layui-nav-itemed");
			$("#aa31").removeClass("layui-nav-itemed");
			$("#aa32").removeClass("layui-nav-itemed");
			$("#aa4").removeClass("layui-nav-itemed");
			$("#aa5").removeClass("layui-nav-itemed");
			$("#aa5").addClass("layui-nav-itemed");
			
	}
	　//paraName 等找参数的名称
	　　function GetUrlParam(paraName) {
	　　　　var url = document.location.toString();
	　　　　var arrObj = url.split("?");

	　　　　if (arrObj.length > 1) {
	　　　　　　var arrPara = arrObj[1].split("&");
	　　　　　　var arr;

	　　　　　　for (var i = 0; i < arrPara.length; i++) {
	　　　　　　　　arr = arrPara[i].split("=");

	　　　　　　　　if (arr != null && arr[0] == paraName) {
	　　　　　　　　　　return arr[1];
	　　　　　　　　}
	　　　　　　}
	　　　　　　return "";
	　　　　}
	　　　　else {
	　　　　　　return "";
	　　　　}
	　　}
	
</script>