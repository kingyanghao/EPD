package com.hanxi.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
public class PeopleController {
	@Autowired
	private UserService userService;
	
	/**
	 * 跳转到人员列表
	 * @return
	 */
	@RequestMapping("/peopleList")
	public String peopleList(){
		return "peopleList";
	}
	/**
	 * 跳转技能矩阵
	 * @return
	 */
	@RequestMapping("/skills_matrix")
	public String skills_matrix(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			List<sys_user> list=userService.operatorList();
			model.addAttribute("list", list);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
		return "skills_matrix";
	}
	/**
	 * 跳转到人员详情
	 * @return
	 */
	@RequestMapping("/personnel_details")
	public String personnel_details(Model model,sys_user sys_user,HttpServletRequest request, HttpServletResponse response){
		System.out.println(sys_user.getUser_id()+"=====111");
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			System.out.println(sys_user.getUser_id()+"========");
			System.out.println("=1=="+user.getRole());
			if(user.getRole().equals("administrator")) {
			//	查询人员的信息
				sys_user sys_user1=userService.select_login(sys_user);
				System.out.println(sys_user1.toString());
				model.addAttribute("sys_user", sys_user1);
			}else {
				model.addAttribute("Error", "权限不足");
			}
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
		return "personnel_details";
	}
	
	/**
	 * 跳转到人员修改
	 * @return
	 */
	@RequestMapping("/personnel_changes")
	public String personnel_changes(Model model,sys_user sys_user,HttpServletRequest request, HttpServletResponse response){
		System.out.println(sys_user.getUser_id()+"=====111");
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			System.out.println(sys_user.getUser_id()+"========");
			System.out.println("=1=="+user.getRole());
			if(user.getRole().equals("administrator")) {
			//	查询人员的信息
				sys_user sys_user1=userService.select_login(sys_user);
				System.out.println(sys_user1.toString());
				model.addAttribute("sys_user", sys_user1);
			}else {
				model.addAttribute("Error", "权限不足");
			}
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
		
		
		return "personnel_changes";
	}
	
	
	@RequestMapping("/personnelList")
	@ResponseBody
	public Map<String,Object> personnelList(sys_user sys_user,HttpServletRequest request, HttpServletResponse response){
		Map<String,Object> map=new HashMap<String,Object>();
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			System.out.println(sys_user.getUsername()+"========");
			System.out.println("=1=="+user.getRole());
			System.out.println("=2=="+sys_user.getPageIndex());
			System.out.println("=3=="+sys_user.getPageSize());
			
			if(user.getRole().equals("administrator")) {
				//查询总的条目数
				Integer count=userService.findRecordCount(sys_user);
				if(count>0) {
					List<sys_user> list=userService.findList(sys_user);
					map.put("success",1);
					map.put("list", list);
					map.put("count", count);
				}else {
					map.put("success",-2);
				}
			}else {
				map.put("success",-1);
			}
		}
		
		return map;
		
	}
	
	/**
	 * 批量删除信息
	 */
	@RequestMapping(value = "deleteAll")
	@ResponseBody
	public int deleteAll(String ids) {
		System.out.println("ids===" + ids);
		String newsId[] = ids.split(",");
		try {
			for (String id : newsId) {
				sys_user sys_user = new sys_user();
				sys_user.setUser_id(Integer.parseInt(id));
				userService.delete_notes(Integer.parseInt(id));
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
	
}
