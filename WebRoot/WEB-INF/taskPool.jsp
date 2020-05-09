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
<title>订单池</title>
<meta
    content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
    name='viewport' />
<!-- CSS Files -->
 <link href="css/bootstrap.min.css" rel="stylesheet" />
 <link type="text/css" href="layui/css/modules/layer/default/layer.css" rel="stylesheet" />
<link href="layui/css/layui.css" rel="stylesheet" media="all"/>
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
        min-height: 100px;
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
    .jianbian{
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
		
		  
    }
   .id{position:absolute;
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
</style>
</head>
<body>
	
<%@ include file="top.jsp"%>
<%@ include file="left.jsp"%>
	<!-- 内容区 -->
	<%
String error = (String)request.getAttribute("error");         // 获取错误属性
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
		<div id="lantiao" style="display: flex;flex-direction:column;justify-content:center"><div style="color: white;font-size:1.2vw;margin-left:2%;">Task pool</div></div>
					
			<div class="">
			<div class="panel panel-content">
				<!-- 页面主体头部 -->
				<!-- 页面主体头部 -->
								
				<div class="panel-body">
					<!-- 页面主体右侧信息以及表单 -->
					<div class="right-content" >
			<!--上放开始  -->		
			<div class="t-ctn" style="height:500px;position:relative;">
       		<!--遍历  -->
		       	<c:if test="${fn:length(work_orderList)>0}">
           			<c:forEach items="${work_orderList}" var="item" >
           			<div class="jianbian id" style="width:170px;margin-top:10px;">
		        		<div style="height:100px;color:#343535;line-height:100px; font-size: 14px;font-weight: bold;text-align: center;">${item.username}</div>
		        	</div>
           			<div class="s-ctn jianbian1" style="position:relative;left:170px;margin-top:10px;color:#a9aaab;">
			       		<c:forEach items="${item.work_orderList}" var="work" >	
				       		<div style="width:170px;height:100px;">
				       			<div style="display:block;height:24px;text-align: center;padding-top:4px;cursor:pointer;" onclick="click_deails('${work.kb_no}')">${work.order_placer}</div>
				       			<div style="display:block;height:24px;text-align: center;cursor:pointer;" onclick="click_deails('${work.kb_no}')">${work.type}(${work.bench_name})</div>
				       			<div style="display:block;height:24px;text-align: center;cursor:pointer;" onclick="click_deails('${work.kb_no}')"><fmt:formatDate value="${work.issue_date1}" pattern="MM.dd" />-<fmt:formatDate value="${work.deadline1}" pattern="MM.dd" />(${work.work_hours}h)</div>
				       			<%-- <div style="display:block;height:20px;">${work.work_hours}</div> --%>
				       			<c:if test="${role=='administrator'}">
				       				<div style="display:block;height:30px;text-align: center;font-size: 17px;font-weight: bold;color:#1fc2f8;cursor:pointer;" onclick="click_kb(${work.orderid})">${work.kb_no}</div>
				 				</c:if>
				 				<c:if test="${role!='administrator'}">
				       				<div style="display:block;height:30px;text-align: center;font-size: 17px;font-weight: bold;color:#1fc2f8;cursor:pointer;">${work.kb_no}</div>
				 				</c:if>
				       		</div>
			       		</c:forEach>	
		       		 </div>
		       		   
           			</c:forEach>
           		</c:if>	
       </div>
       <!--上方结束  -->
    
        <!-- 下方开始 -->
      <div	style="margin-top:30px;">
   		<div style="display:inline-block;height:40px;width:100px;">操作者</div>
   		<select class="form-control" style="display:inline-block;height:40px;width:200px;" onchange="selectUser(this.value)">
			  <option value="-1">请选择人员</option>
			  <c:if test="${fn:length(userlist)>0}">
			  <c:forEach items="${userlist}" var="user" >
			   <option value="${user.username}">${user.username}</option>
			  </c:forEach>
			  </c:if>
		</select>
 	 </div>
        
        
        <div class="t-ctn" style="" id="opectorId">
       		
       		
       </div>
        <!-- 下方结束 -->
    </div>
  </div>
</div>
		</div>	
	</div>

<!-- 模态框（Modal） -->
<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="z-index: 19891015;overflow:scroll;">
  <div class="modal-dialog modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" ><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="text-align: center;">Task scheduling</h4>
      </div>
	      <div class="modal-body" id="modal_body" style=" ">
	       		<div id="public_id">
	       		
	       			
	       		</div>
	       			<!-- 订单简略信息 -->
	       			
					<!-- 订单详情 -->
		       		<div style=" overflow:auto;margin-top:20px;" id="singleId">
		       			
		       			
		       			
			
		       			
		       		</div>
		       		<!-- 订单详情结束 -->
		       		<!-- 获取执行人，进行选择 -->
		       		<div>
		       			 <div class="form-group">
						    <div style="height:38px;width:100px;display: inline-block;">Assignor:</div>
						     <select id="operator" name="operator" style="width:240px;display: inline-block;" class="form-control">
                                            
                              </select>  
						    <!-- <i class="layui-icon layui-icon-add-circle-fine" style="font-size:30px;color:orange;font-weight: blod;margin-left:130px;" onclick="add();"></i> -->
						    <input type="hidden" id="num" name="num"  value="0"/> 
						  </div>
		       		</div>
		       		
		       		<!-- 获取执行人，进行选择结束 -->
		       		<!--展示已经排单的-->
		       		<div>
		       		
		       		</div>
		       		<!-- 添加 -->
		       		<div id="add">
		       			
		       		</div>
		       		
		       		
	      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
	<script>

		
		//跳转到订单详情
		function click_deails(kb_no){
			
			$('#kb_no').val(kb_no);
			$('#jump').attr("action", "<%=basePath%>main/orderDeails.do");
			$('#jump').submit();
		}
		
		function selectUser(name){
			
			if(name==-1){
				layer.msg('请选择操作人员！',{time : 2000,icon : 3});		
				return;
			}else{
				//进行数据的计算
				$.ajax({
				type: "POST",
				url: '<%=basePath%>main/selectopeter.do',
		    	data: {
		    		name:name,
		    	},
				dataType:'json',
				cache: false,
				success: function(data){
					console.log(data.scheduling_List);
					if(data.succ==-1){
						
						$("#opectorId").empty();
						layer.msg('暂无数据！',{time : 1000,icon : 3});	
					}	
					
					if(data.succ==1){
							layer.msg('查询成功！',{time : 1000,icon : 1});	
							//关闭莫太宽
							//刷新页面
							$("#opectorId").empty();
							var html8=[];
							for(var i=0;i<data.scheduling_List.length;i++){
							html8.push('<div class="jianbian id" style="width:170px;margin-top:10px;">');	
							html8.push('<div style="height:100px;color:#343535;line-height:100px; font-size: 14px;font-weight: bold;text-align: center;">'+data.scheduling_List[i].scheduling_date+'</div>');	
							html8.push('</div>');	
							
							html8.push('<div class="s-ctn jianbian1" style="position:relative;left:170px;margin-top:10px;color:#a9aaab;">');	
							/* 遍历 */
							
							if(data.scheduling_List[i].scheduling_recordList!=null&&data.scheduling_List[i].scheduling_recordList!=undefined){
								for(var n=0;n<data.scheduling_List[i].scheduling_recordList.length;n++){
									var aa=data.scheduling_List[i].scheduling_recordList[n].scheduling_hours*50;
									/* if(aa<150){
										aa=150;
									}else if(aa<725&&aa>=150){
										aa+=25;
									}
									else if(aa>800){
										aa=800;
									} */
									aa+=150;
									if(n==data.scheduling_List[i].scheduling_recordList.length-1){
										html8.push('<div style="width:'+aa+'px;height:100px;padding-top:5px;margin-right: 10px;margin-left: 0px;cursor:pointer;" onclick="deails(\''+ data.scheduling_List[i].scheduling_recordList[n].scheduling_kb +'\',\''+data.scheduling_List[i].scheduling_recordList[n].typeOrder+'\')">');
									}else{
										html8.push('<div style="width:'+aa+'px;height:100px;padding-top:5px;border-right: solid #c1b8b8;margin-right: 10px;margin-left: 0px;cursor:pointer;" onclick="deails(\''+ data.scheduling_List[i].scheduling_recordList[n].scheduling_kb +'\',\''+data.scheduling_List[i].scheduling_recordList[n].typeOrder+'\')">');
									}
									
									html8.push('<div style="display:block;height:15px;text-align: center;font-size: 13px;margin-right: 10px;margin-left: 0px;">'+data.scheduling_List[i].scheduling_recordList[n].order_placer+'</div>');
									html8.push('<div style="display:block;height:15px;text-align: center;font-size: 13px;margin-right: 10px;margin-left: 0px;">'+data.scheduling_List[i].scheduling_recordList[n].typeOrder+'('+data.scheduling_List[i].scheduling_recordList[n].bench_name+')</div>');
									html8.push('<div style="display:block;height:15px;text-align: center;font-size:13px;margin-right: 10px;margin-left: 0px;">'+data.scheduling_List[i].scheduling_recordList[n].start_time+'-'+data.scheduling_List[i].scheduling_recordList[n].end_time+'</div>');
									if(data.scheduling_List[i].scheduling_recordList[n].scheduling_status==1){
									html8.push('<div style="display:block;height:15px;text-align: center;font-size: 13px;margin-right: 10px;margin-left: 0px;color:#15b1e8;">uncompleted</div>');
									}else{
									html8.push('<div style="display:block;height:15px;text-align: center;font-size: 13px;margin-right: 10px;margin-left: 0px;color:green;">completed</div>');
									}
									html8.push('<div style="display:block;height:20px;text-align: center;margin-top:5px;background-color: #1fc2f8;font-size: 13px;margin-right: 10px;margin-left: 0px;font-weight: bold;color:#eeeeee;cursor:pointer;border:solid #b7adad;line-height:15px;">'+data.scheduling_List[i].scheduling_recordList[n].scheduling_kb+'</div>');
									html8.push('</div>');
								}
							}
							/* 遍历结束 */
							html8.push('</div>');	
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
	}
		
		
		
		var operator='';
		function click_kb(orderid){
			//根据获取数据，进行数据的回显
				var load = layer.load(1, {shade: [0.1,'#fff']});
				$.ajax({
					type : "POST",
					url : "<%=basePath%>main/taskPooldeails.do",
					data :{
						orderid:orderid
					},
					dataType : "json",
					success : function(result) {
						console.log(result);
						layer.close(load);
						if(result.error==-1){
							//该订单已经拍完
						}else{
							var html1=[];
							 html1.push('<div class="form-group" style="margin-bottom: 0px;display: inline-block;" id="va_no">');
							 html1.push('<div style="height: 18px; text-align: left;  display: inline-block; color: #606265;width:100px;">VA No:</div>');
							 html1.push('<input id="vaId" name="va_no" disabled="disabled" style=" display: inline-block;width:240px;" class="form-control" value="'+result.work_order.va_no+'"/></div>');
							 html1.push('<div class="form-group" style="margin-bottom: 0px;display: inline-block;margin-left:30px;" id="kb_no">');
							 html1.push('<div style="height: 18px; text-align: left;  display: inline-block; color: #606265;width:100px;">KB No:</div>');
							 html1.push('<input id="kbId" name="kb_no" disabled="disabled" style=" display: inline-block;width:240px;" class="form-control" value="'+result.work_order.kb_no+'"/></div>');
							 html1.push('<div class="form-group" style="margin-bottom: 0px;display: inline-block;margin-top:10px;" id="va_no">');
							 html1.push('<div style="height: 18px; text-align: left;  display: inline-block; color: #606265;width:100px;">推荐操作人:</div>');
							 html1.push('<input id="" name="va_no" disabled="disabled" style=" display: inline-block;width:240px;" class="form-control" value="'+result.work_order.preferred_operator+'" /></div>');
							 html1.push('<div class="form-group" style="margin-bottom: 0px;display: inline-block;margin-left:30px;margin-top:10px;" id="kb_no">');
							 html1.push('<div style="height: 18px; text-align: left;  display: inline-block; color: #606265;width:100px;">下单人:</div>');
							 html1.push('<input id="" name="kb_no" disabled="disabled" style=" display: inline-block;width:240px;" class="form-control"  value="'+result.work_order.order_placer+'"/></div>');
							 html1.push('<div class="form-group" style="margin-bottom: 0px;display: inline-block;margin-top:10px;" id="kb_no">');
							 html1.push('<div style="height: 18px; text-align: left;  display: inline-block; color: #606265;width:100px;">剩余时间:</div>');
							 html1.push('<input id="remaining_hours" name="remaining_hours" disabled="disabled" style=" display: inline-block;width:240px;" class="form-control" value="'+result.work_order.remaining_hours+'"/></div>');
							 html1.push('<div class="form-group" style="margin-bottom: 0px;display: inline-block;margin-left:30px;margin-top:10px;" id="kb_no">');
							 html1.push('<div style="height: 18px; text-align: left;  display: inline-block; color: #606265;width:100px;">计划时间:</div>');
							 html1.push('<input id="" name="kb_no" disabled="disabled" style=" display: inline-block;width:240px;" class="form-control" value="'+result.work_order.work_hours+'"/></div>');
							 html1.push('<div class="form-group" style="margin-bottom: 0px;display: inline-block;margin-top:10px;" id="kb_no">');
							 html1.push('<div style="height: 18px; text-align: left;  display: inline-block; color: #606265;width:100px;">台架名称:</div>');
							 html1.push('<input id="bench_nameId" name="bench_name" disabled="disabled" style=" display: inline-block;width:240px;" class="form-control" value="'+result.work_order.bench_name+'"/></div>');
							 html1.push('<div class="form-group" style="margin-bottom: 0px;display: inline-block;margin-left:30px;margin-top:10px;" id="kb_no">');
							 html1.push('<div style="height: 18px; text-align: left;  display: inline-block; color: #606265;width:100px;">订单类型:</div>');
							 html1.push('<input id="type" name="type" disabled="disabled" style=" display: inline-block;width:240px;" class="form-control" value="'+result.work_order.type+'"/></div>');
							 $("#public_id").html(html1.join(''));
							 //执行订单详情
							 //所有的操作人员
							var html2=[];
							 console.log(result.work_order.operator+"result.work_order.operator");
							 $("#operator").empty();
							 $("#operator").attr("disabled",false); 
							 html2.push('<option  value="-1">请选择操作员</option>');
							 operator=result.sys_user_list;
							 if(result.sys_user_list.length>0){
								 for(var i=0;i<result.sys_user_list.length;i++){
									if(result.work_order.operator!=undefined&&result.sys_user_list[i].username==result.work_order.operator&&result.Scheduling_recordList.length>0){
										 html2.push('<option selected value="'+result.sys_user_list[i].username+'">'+result.sys_user_list[i].username+'</option>');
										 $("#operator").attr("disabled","disabled");
									}else{
										html2.push('<option value="'+result.sys_user_list[i].username+'">'+result.sys_user_list[i].username+'</option>');
									}
									
								 }
							 }
							 
							 $("#operator").html(html2.join('')); 
							 $("#add").empty();
							 add();
							 Scheduling_recordList(result.Scheduling_recordList);
						}
						
					}
				});
			 $('.modal').modal('show');
			
		}
	
		
		
			
			
		//模态框添加数据
		function add(){
			var num=$("#num").val()+1;
			$("#num").val(num);
			var html3=[];
			html3.push('<div id="del'+num+'">');
			html3.push('<div class="layui-inline" style="z-index:999999;">');
			html3.push('<div style="height:38px;width:100px;display: inline-block;">Date Time:</div>');
			html3.push('<div class="layui-input-inline" style="width:100px;">');
			html3.push('<input type="text"  class="layui-input" id="test'+num+'" placeholder="yyyy-MM-dd">');
			html3.push('</div></div>');
			html3.push(' <div class="layui-inline">');
			html3.push('<div style="height:38px;width:70px;display: inline-block;">Start Time:</div>');
			html3.push('<select id="start'+num+'" name="start'+num+'" style="width:100px;display: inline-block;" class="form-control">');
			html3.push('<option  value="0.0">0:00</option>');
			html3.push('<option  value="0.5">0:30</option>');
			html3.push('<option  value="1">1:00</option>');
			html3.push('<option  value="1.5">1:30</option> ');
			html3.push('<option  value="2">2:00</option> ');
			html3.push('<option  value="2.5">2:30</option> ');
			html3.push('<option  value="3">3:00</option> ');
			html3.push('<option  value="3.5">3:30</option>');
			html3.push('<option  value="4">4:00</option>');
			html3.push('<option  value="4.5">4:30</option>');
			html3.push('<option  value="5">5:00</option>');
			html3.push('<option  value="5.5">5:30</option>');
			html3.push('<option  value="6">6:00</option>');
			html3.push('<option  value="6.5">6:30</option>');
			html3.push('<option  value="7">7:00</option> ');
			html3.push('<option  value="7.5">7:30</option>');
			html3.push('<option  value="8">8:00</option>');
			html3.push('<option  value="8.5">8:30</option>');
			html3.push('<option  value="9">9:00</option>');
			html3.push('<option  value="9.5">9:30</option>');
			html3.push('<option  value="10">10:00</option>');
			html3.push('<option  value="10.5">10:30</option>');
			html3.push('<option  value="11">11:00</option>');
			html3.push(' <option  value="11.5">11:30</option>');
			html3.push('<option  value="12">12:00</option>');
			html3.push('<option  value="12.5">12:30</option>');
			html3.push('<option  value="13">13:00</option>');
			html3.push('<option  value="13.5">13:30</option>');
			html3.push('<option  value="14">14:00</option>');
			html3.push('<option  value="14.5">14:30</option> ');
			html3.push('<option  value="15">15:00</option>');
			html3.push('<option  value="15.5">15:30</option>');
			html3.push('<option  value="16">16:00</option>');
			html3.push('<option  value="16.5">16:30</option> ');
			html3.push('<option  value="17">17:00</option> ');
			html3.push('<option  value="17.5">17:30</option>');
			html3.push('<option  value="18">18:00</option>');
			html3.push('<option  value="18.5">18:30</option>');
			html3.push('<option  value="19">19:00</option>');
			html3.push('<option  value="19.5">19:30</option>');
			html3.push('<option  value="20">20:00</option>');
			html3.push('<option  value="20.5">20:30</option>');
			html3.push('<option  value="21">21:00</option>');
			html3.push('<option  value="21.5">21:30</option>');
			html3.push('<option  value="22">22:00</option>');
			html3.push('<option  value="22.5">22:30</option> ');
			html3.push('<option  value="23">23:00</option>');
			html3.push('<option  value="23.5">23:30</option>');
			html3.push('<option  value="24">24:00</option>');
			html3.push('</select>');
			html3.push('</div>');
			html3.push('<div class="layui-inline">');
			html3.push('<div style="height:38px;width:70px;display: inline-block;">End Time:</div>');
			html3.push('<select id="end'+num+'" name="end'+num+'" style="width:100px;display: inline-block;" class="form-control">');
			html3.push('<option  value="0.0">0:00</option>');
			html3.push('<option  value="0.5">0:30</option>');
			html3.push('<option  value="1">1:00</option>');
			html3.push('<option  value="1.5">1:30</option>');
			html3.push('<option  value="2">2:00</option> ');
			html3.push('<option  value="2.5">2:30</option> ');
			html3.push('<option  value="3">3:00</option> ');
			html3.push('<option  value="3.5">3:30</option>');
			html3.push('<option  value="4">4:00</option>');
			html3.push('<option  value="4.5">4:30</option>');
			html3.push('<option  value="5">5:00</option>');
			html3.push('<option  value="5.5">5:30</option>');
			html3.push('<option  value="6">6:00</option>');
			html3.push('<option  value="6.5">6:30</option>');
			html3.push('<option  value="7">7:00</option> ');
			html3.push('<option  value="7.5">7:30</option>');
			html3.push('<option  value="8">8:00</option>');
			html3.push('<option  value="8.5">8:30</option>');
			html3.push('<option  value="9">9:00</option>');
			html3.push('<option  value="9.5">9:30</option>');
			html3.push('<option  value="10">10:00</option>');
			html3.push('<option  value="10.5">10:30</option>');
			html3.push('<option  value="11">11:00</option>');
			html3.push('<option  value="11.5">11:30</option>');
			html3.push('<option  value="12">12:00</option>');
			html3.push('<option  value="12.5">12:30</option>');
			html3.push('<option  value="13">13:00</option>');
			html3.push('<option  value="13.5">13:30</option>');
			html3.push('<option  value="14">14:00</option>');
			html3.push('<option  value="14.5">14:30</option> ');
			html3.push('<option  value="15">15:00</option>');
			html3.push('<option  value="15.5">15:30</option>');
			html3.push('<option  value="16">16:00</option>');
			html3.push('<option  value="16.5">16:30</option> ');
			html3.push('<option  value="17">17:00</option> ');
			html3.push('<option  value="17.5">17:30</option>');
			html3.push('<option  value="18">18:00</option>');
			html3.push('<option  value="18.5">18:30</option>');
			html3.push('<option  value="19">19:00</option>');
			html3.push('<option  value="19.5">19:30</option>');
			html3.push('<option  value="20">20:00</option>');
			html3.push('<option  value="20.5">20:30</option>');
			html3.push('<option  value="21">21:00</option>');
			html3.push('<option  value="21.5">21:30</option>');
			html3.push('<option  value="22">22:00</option>');
			html3.push('<option  value="22.5">22:30</option> ');
			html3.push('<option  value="23">23:00</option>');
			html3.push('<option  value="23.5">23:30</option>');
			html3.push('<option  value="24">24:00</option>');
			html3.push('</select>');
			html3.push('</div>');
			html3.push('<div class="layui-inline">');
			html3.push('<div style="height:38px;width:70px;display: inline-block;">OverTime:</div>');
			html3.push('<select id="overtime'+num+'" name="overtime'+num+'" style="width:100px;display: inline-block;" class="form-control">');
			html3.push('<option  value="0">否</option> ');
			html3.push('<option  value="1">是</option>');
			html3.push('</select>');
			html3.push('</div>');
			html3.push('<div class="layui-inline">');
			/* html3.push('<div style="height:38px;width:50px;display: inline-block;" onclick="confirm(\''+num+'\')">confirm</div>'); */
			html3.push('<button type="button" class="layui-btn" id="btn'+num+'" style="margin-top: -10px;margin-left: 10px;" onclick="confirm(\''+num+'\')"><i class="layui-icon layui-icon-ok-circle"  ></i> confirm</button>');
			html3.push('</div></div>');
			$("#add").append(html3.join('')); 
			
			layui.use('laydate', function(){
				  var laydate = layui.laydate;
				  
				  //执行一个laydate实例
				  laydate.render({
				    elem: '#test'+num //指定元素
				    	,trigger: 'click'
				  });
			
			});
		}
	  
         //删除元素
    /*     function del(delid){
        	alert(delid);
        	 $("#add").childNodes.length;
        	 $("#add").remove();
        	$("#del"+delid).remove();
        } */                     
                   
		//提交数据
		function confirm(numId){
        	/* alert("kaishi"); */
			$("#btn"+numId).attr("disabled",true);
			
			
			//获取数据
			/* alert($("#start"+numId).val()+"=="+$("#end"+numId).val()+"=="+$("#test"+numId).val()); */
			//选择操作人员
			if($("#operator").val()=='-1'){
				layer.msg('请选择操作人员！',{time : 2000,icon : 2});		
				$("#btn"+numId).attr("disabled",false);
				return;
			}
			if($("#test"+numId).val()==''){
					layer.msg('请选择时间！',{time : 2000,icon : 2});		
					$("#btn"+numId).attr("disabled",false);
					return;
			}
			if(parseFloat($("#end"+numId).val())<=parseFloat($("#start"+numId).val())){
				layer.msg('开始时间不能大于结束时间！',{time : 2000,icon : 2});		
				$("#btn"+numId).attr("disabled",false);
				return;
			}
			
			if(parseInt($("#overtime"+numId).val())==0){
				if(parseFloat($("#end"+numId).val())-parseFloat($("#start"+numId).val())>8){
					layer.msg('工作日排单时间不可大于8h',{time : 3000,icon : 2});		
					$("#btn"+numId).attr("disabled",false);
					return;
				}
			}
			//进行数据的计算
			$.ajax({
			type: "POST",
			url: '<%=basePath%>main/insert_scheduling.do',
	    	data: {
		    		vaId:$("#vaId").val(),
	    		    kbId:$("#kbId").val(),
	    		    operator:$("#operator").val(),
	    		    start:$("#start"+numId).val(),
	    		    end:$("#end"+numId).val(),
	    		    overtime:$("#overtime"+numId).val(),
	    			hours:parseFloat($("#end"+numId).val())-parseFloat($("#start"+numId).val()),
	    			date_time:$("#test"+numId).val(),
	    			bench_name:$("#bench_nameId").val(),
	    			type:$("#type").val(),
	    			
	    			},
			dataType:'json',
			cache: false,
			success: function(data){
				if(data.error==1){
					if(data.work_order.status==2){
						layer.msg('该订单已经排完！',{
							time : 1000,
							icon : 1},
							function(){
			location.reload();
		});	
						//关闭莫太宽
						//刷新页面
					
					}else{
						
						
						//保存成功
						console.log("data.result"+data);
						//剩余时间
						/* alert(data.work_order.remaining_hours); */
						$("#remaining_hours").empty();
						$("#remaining_hours").val(data.work_order.remaining_hours);
						
						$("#add").empty();
						//表单提交的更新
						add();
						//下拉选的更新
						 var html6=[];
						console.log(operator+"==");
						 if(operator.length>0){
							 for(var i=0;i<operator.length;i++){
								if(data.work_order.operator!=undefined&&operator[i].username==data.work_order.operator){
									 html6.push('<option selected value="'+operator[i].username+'">'+data.work_order.operator+'</option>');
									 $("#operator").attr("disabled","disabled");
								}else{
									html6.push('<option value="'+operator[i].username+'">'+operator[i].username+'</option>');
								}
								
							 }
						 }
						 $("#operator").html(html6.join(''));  
						 
						
						 Scheduling_recordList(data.Scheduling_recordList);
						
					}
				}else if(data.error==-1){
					layer.msg('该订单已经排完！',{time : 1000,icon : 2});	
				}else if(data.error==-2){
					layer.msg('该订单时长有误！',{time : 1000,icon : 2});	
				}else if(data.error==-3){
					layer.msg('当前时间段已有订单！',{time : 1000,icon : 2});	
				}else if(data.error==-4){
					layer.msg('保存失败！',{time : 1000,icon : 2});	
				}else if(data.error==-6){
					layer.msg('当前时间段该台架已有订单！',{time : 1000,icon : 2});	
				}
			},
			error: function(data){
				layer.close(load);
				layer.msg('保存失败！',{time : 1000,icon : 2});	
			}
		});
			
			setTimeout(function(){
				$("#btn"+numId).attr("disabled",false);
			},3000); 
			 
		}
		  
		//关闭模态框刷新页面
		$('#myModal').on('hidden.bs.modal', function (e) {
			location.reload();
		})
					    
		function Scheduling_recordList(Scheduling_recordList){
			 
			 $("#singleId").empty();
			 var html5=[];	
			 if(Scheduling_recordList!=null){
			 		for(var i=0;i<Scheduling_recordList.length;i++){
			 			html5.push('<div id=sid"'+Scheduling_recordList[i].scheduling_id+'">');
						html5.push('<div class="layui-inline" style="z-index:999999;">');
						html5.push('<div style="height:38px;width:100px;display: inline-block;">Date Time:');
						html5.push('</div>');
						html5.push('<div class="layui-input-inline" style="width:100px;">');
						html5.push('<input type="text"  class="layui-input" style="background-color: #eeeeee;"  disabled="disabled" value="'+Scheduling_recordList[i].scheduling_date+'"/>');
						html5.push('</div>');
						html5.push('</div>');
						html5.push('<div class="layui-inline" style="z-index:999999;">');
						html5.push('<div style="height:38px;width:70px;display: inline-block;">Start Time:');
						html5.push('</div>');
						html5.push('<div class="layui-input-inline" style="width:80px;">');
						html5.push('<input type="text"  class="layui-input" style="background-color: #eeeeee;"  disabled="disabled" value="'+Scheduling_recordList[i].start_time+'"/>');
						html5.push('</div>');
						html5.push('</div>');
						html5.push('<div class="layui-inline" style="z-index:999999;">');
						html5.push('<div style="height:38px;width:70px;display: inline-block;">End Time:');
						html5.push('</div>');
						html5.push('<div class="layui-input-inline" style="width:80px;background-color: #eeeeee;">');
						html5.push('<input type="text"  class="layui-input" style="background-color: #eeeeee;" disabled="disabled" value="'+Scheduling_recordList[i].end_time+'"/>');
						html5.push('</div>');
						html5.push('</div>');
						html5.push('<div class="layui-inline" style="z-index:999999;">');
						html5.push('<div style="height:38px;width:70px;display: inline-block;">OverTime:');
						html5.push('</div>');
						html5.push('<div class="layui-input-inline" style="width:80px;">');
						if(Scheduling_recordList[i].work_overtime==0){
						html5.push('<input type="text"  class="layui-input" style="background-color: #eeeeee;" disabled="disabled" value="no"/>');
						}else{
						html5.push('<input type="text"  class="layui-input" style="background-color: #eeeeee;" disabled="disabled" value="yes"/>');
						}
						html5.push('</div>');
						html5.push('</div>');
						
						html5.push('<div class="layui-inline" style="z-index:999999;">');
						html5.push('<div style="height:38px;width:50px;display: inline-block;">Status:');
						html5.push('</div>');
						html5.push('<div class="layui-input-inline" style="width:150px;">');
						if(Scheduling_recordList[i].scheduling_status==1){
						html5.push('<input type="text"  class="layui-input" style="background-color: #eeeeee;text-align: center;padding-left: 0px;width:70px;display: inline-block;" disabled="disabled" value="unfinished"/>');
						html5.push('<button  class="layui-input" style="background-color: #eeeeee;display: inline-block;width:50px;margin-left:5px;padding-left: 0px;text-align: center;" onclick="deleteOrder('+Scheduling_recordList[i].scheduling_id+',\''+Scheduling_recordList[i].scheduling_kb+'\')">Delete</button>');
						}else{
						html5.push('<input type="text"  class="layui-input" style="background-color: #eeeeee;text-align: center;padding-left: 0px;width:70px;" disabled="disabled" value="finished" />');
						
						}
						html5.push('</div>');
						html5.push('</div>');
						html5.push('</div>');
			 		}
			 		$("#singleId").html(html5.join('')); 
			 	}
			 
		}  
		
		/* 删除该订单 */
		function deleteOrder(scheduling_id,scheduling_kb){
			//进行数据的计算
			  var flag=true;
					layer.alert('确认修改？', {
					  skin: 'dee_Prompt',icon:3,btn: ['确认','取消'],closeBtn:0 //按钮
					}, function(){  
					   console.log("开始：");
					   if(flag){
							flag=false;
							var load = layer.load(1, {shade: [0.1,'#fff']});
							$.ajax({
								type: "POST",
								url: '<%=basePath%>main/delete_Order_id.do',
						    	data: {
						    		id:scheduling_id,
						    		kb_no:scheduling_kb,
						    	},
								dataType:'json',
								cache: false,
								success: function(data){
									layer.close(load);
									if(data.succ==1){
										layer.msg('删除成功！',{time : 2000,icon : 1});	
										$("#remaining_hours").empty();
										$("#remaining_hours").val(data.work_order.remaining_hours); 
										Scheduling_recordList(data.Scheduling_recordList);
										if(data.Scheduling_recordList.length<1){
											console.log("开始");
											$("#operator").attr("disabled",false);
											$('#operator').removeAttr("disabled");
										}
										
									}else{
										layer.msg('删除失败！',{time : 2000,icon : 2},function(){
											
										});
									}
								},
								error: function(data){
									layer.close(load);
									layer.msg('查询失败！',{time : 1000,icon : 2});	
								}
							});
					   }
				});

		}		
		$(document).ready(function(){ 
			three();
		});
		
	</script>
</html>