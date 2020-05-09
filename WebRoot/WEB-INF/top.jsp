<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!-- 头部 
<div  style="margin-left: 14%;">
<ul class="layui-nav" style="height:8vh">
  <li class="layui-nav-item" lay-unselect="" style="margin-left: 70%;margin-top: 0.6%">
    <a href="javascript:;" style="font-size:1vw;color: white;">admin</a>   
      <dd><a href="javascript:;">修改密码</a></dd>
      <dd><a href="javascript:;">退出登陆</a></dd>
    </dl>
  </li>
  <li class="layui-nav-item" style="margin-left:5%">
    <a href="" style="font-family: 微软雅黑;font-size: 1.5vw;margin-top: 5%;color: white;">RBCD-EPD</a>
  </li>
</ul>
</div>
-->
<style type="text/css">
	.layui-header{
	background: url("/EPD/img/123.png");
	background-size: 100% 100%;
	position: fixed;
    left: 0;
    top: 0;
    z-index: 10000;
    width:100%;

}
</style>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header header header-demo" style="height:8vh;">
    <div class="layui-logo" ></div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-right" style="margin-right:5%;margin-top: 1vh;">
      <li class="layui-nav-item">
        <a href="javascript:;" style="font-size:1vw;color: white; ">
         ${userMsg.username}
        </a>
        <dl class="layui-nav-child">
          <dd><a href="/EPD/main/change_password.do" >修改密码</a></dd>
          <dd><a href="/EPD/main/logout.do" >退出登录</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a style="font-size:1.5vw;color: white;" href="/EPD/main/overview.do">智慧工厂管理系统</a></li>
    </ul>
  </div>
  <!-- 
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
   -->
      <!-- 左侧导航区域（可配合layui已有的垂直导航） 
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">所有商品</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">解决方案</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">云市场</a></li>
        <li class="layui-nav-item"><a href="">发布商品</a></li>
      </ul>
    </div>
  </div>
  
      -->
  </div>
  
<script>
//JavaScript代码区域

</script>
