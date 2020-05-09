package com.hanxi.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hanxi.entity.sys_user;

public class LoginFilter implements Filter {
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
 
	@SuppressWarnings("deprecation")
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
			System.out.println("进入");
		HttpServletResponse servletResponse = (HttpServletResponse) response;
		HttpServletRequest servletRequest = (HttpServletRequest) request;
 
		//获取session
		HttpSession session = servletRequest.getSession();
 
		//获得用户请求的URI
		String path = servletRequest.getRequestURI();
		
		//获取session的用户信息
		sys_user user = (sys_user) session.getAttribute("userMsg");
		
		//如果是登录界面直接放行
		if (path.indexOf("login_login.do") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		if (path.indexOf("save.do") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		if (path.indexOf("renewal.do") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		if (path.indexOf("update_password.do") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		
		//如果是登录界面直接放行
		if (path.indexOf("sign_in.do") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		if (path.indexOf("forgot_password.do") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		if (path.indexOf("register.do") > -1) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		//如果用户信息为空，表明session已经过期或者已经被清空，则跳转到登陆页面
		if (user == null) {
			System.out.println("kaishi");
 			servletResponse.sendRedirect(servletRequest.getContextPath() + "/main/sign_in.do");
		} else {
			System.out.println("优质");
			String sessionId = SessionSave.getSessionIdSave().get(user.getAccount());//获取全局类SessionSave保存账户的静态sessionId
			String currentSessionId = user.getUuid();//获取当前的sessionId
			if (!currentSessionId.equals(sessionId)) {//如果两个sessionId不等，则当前账户强制下线，需要重新登录
			System.out.println("拦截");
				servletResponse.sendRedirect(servletRequest.getContextPath() + "/main/sign_in.do");
			}else {// 如果是同一账户session则放行请求
				System.out.println("过滤");
				chain.doFilter(servletRequest, servletResponse);
				
			}
		}
	}
 
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}
}
