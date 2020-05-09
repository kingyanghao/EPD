package com.hanxi.controller;

import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.sys_user;
import com.hanxi.service.UserService;
import com.hanxi.util.SessionSave;

@Controller
@RequestMapping("/main")
public class UserController {
	@Autowired
	private UserService userService;
	/**
	 * 跳转总览
	 * @return
	 */
	@RequestMapping("/overview")
	public String overview(Model model,sys_user sys_user,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
				if(user.getRole().equals("administrator")) {
					model.addAttribute("role", 1);
				}
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
		return "overview";
	}
	/**
	 * 跳转注册
	 * @return
	 */
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
	/**
	 * 跳转忘记密码
	 * @return
	 */
	@RequestMapping("/forgot_password")
	public String forgot_password(){
		return "ForgotPassword";
	}
	/**
	 * 跳转登录页面
	 * @return
	 */
	@RequestMapping("/sign_in")
	public String sign_in(){
		return "syslogin";
	}
	
	/**
	 * 跳转修改密码
	 * @return
	 */
	@RequestMapping("/change_password")
	public String change_Password(Model model,sys_user sys_user,HttpServletRequest request, HttpServletResponse response){
		
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
				model.addAttribute("sys_user", user);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
		return "changePassword";
	}
	
	
	@RequestMapping("/login_login")
	@ResponseBody
	public String login_login(HttpServletRequest request, HttpServletResponse response){
		String account=request.getParameter("account");
		String password=request.getParameter("password");
		System.out.println(account+"===="+password);
		sys_user sys_user=new sys_user();	
		sys_user.setAccount(account);
		sys_user.setPassword(password);
		System.out.println(sys_user.toString());
		sys_user sys_user1=userService.select_login(sys_user);
		if(sys_user1!=null) {
			System.out.println("success");
			HttpSession session = request.getSession(true);
			
			 
			String sid =String.valueOf(System.currentTimeMillis()); 
			System.out.println(sid+"============");
			// 登录成功,保存当前用户登录的sessionId
			String sessionID = request.getRequestedSessionId();
			
			String userName = sys_user1.getAccount();
			sys_user1.setUuid(sid);
			if (!SessionSave.getSessionIdSave().containsKey(userName)) {
				SessionSave.getSessionIdSave().put(userName, sid);
			}else if(SessionSave.getSessionIdSave().containsKey(userName)&&!sid.equals(SessionSave.getSessionIdSave().get(userName))){
				SessionSave.getSessionIdSave().remove(userName);
				SessionSave.getSessionIdSave().put(userName, sid);
			}
			session.setAttribute("userMsg", sys_user1);
			return "success";
		}else {
			System.out.println("usererror");
			return "usererror";
		}
		
		
	}
	
	@RequestMapping(value = "/save",method = RequestMethod.POST)
	@ResponseBody
	public Integer insert(sys_user sys_user,HttpServletRequest request, HttpServletResponse response){
		System.out.println("开始时间");
		
		sys_user sys_user2=new sys_user();	
		sys_user2.setAccount(sys_user.getAccount());
		System.out.println(sys_user2.toString());
		sys_user sys_user3=userService.select_login(sys_user2);
		sys_user sys_user5=new sys_user();	
		sys_user5.setUsername(sys_user.getUsername());
		sys_user sys_user4=userService.select_login(sys_user5);
		if(sys_user3!=null) {
			return 3;
		}else if(sys_user4!=null) {
			return 4;
		}else{
			sys_user.setCreate_time(new Date());
			System.out.println(sys_user.toString());
			Integer sys_user1=userService.insert_register(sys_user);
			System.out.println("sys_user1==="+sys_user1);
			if(sys_user1!=0) {
				System.out.println("success``````````");
				return 1;
			}else {
				System.out.println("usererror111111111");
				return 2;
			}
		
		}
		
	}
	
	
	@RequestMapping(value = "/renewal",method = RequestMethod.POST)
	@ResponseBody
	public Integer renewal(sys_user sys_user,HttpServletRequest request, HttpServletResponse response){
		System.out.println("开始更新");
			System.out.println(sys_user.toString());
			Integer sys_user1=userService.update_notes(sys_user);
			System.out.println("sys_user1==="+sys_user1);
			if(sys_user1!=0) {
				System.out.println("success``````````");
				return 1;
			}else {
				System.out.println("usererror111111111");
				return 2;
			}
	
	}
	
	
	@RequestMapping(value = "/update_password",method = RequestMethod.POST)
	@ResponseBody
	public Integer update_password(sys_user sys_user,HttpServletRequest request, HttpServletResponse response){
		System.out.println("开始更新");
			System.out.println(sys_user.toString());
			/*sys_user sys_user5=new sys_user();	
			sys_user5.setUsername(sys_user.getUsername());
			sys_user sys_user4=userService.select_login(sys_user5);
			if(sys_user4!=null) {
				return -1;
			}else {*/
				System.out.println(sys_user.getNew_password()+"::sys_user");
				Integer sys_user1=userService.update_password(sys_user);
				System.out.println("sys_user1==="+sys_user1);
				if(sys_user1!=0) {
					HttpSession session = request.getSession(true);
					session.removeAttribute("userMsg");
					System.out.println("success``````````");
					return 1;
				}else {
					System.out.println("usererror111111111");
					return 2;
				}
		/*	}*/
			
	
	}
	
	@RequestMapping(value = "/logout",method = RequestMethod.GET)
	public String logout(Model model,HttpServletRequest request, HttpServletResponse response){
		System.out.println("开始更新");
				HttpSession session = request.getSession(true);
				session.removeAttribute("userMsg");
				System.out.println("success``````````");
				return "syslogin";
			
	
	}
}
