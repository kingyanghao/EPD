package com.hanxi.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import com.hanxi.entity.daily_check;
import com.hanxi.entity.year_check;
import com.hanxi.entity.sys_user;
import com.hanxi.service.Daily_checkService;
import com.hanxi.service.UserService;
import com.hanxi.service.Year_checkService;
import com.hanxi.util.SessionSave;

@Controller
@RequestMapping("/main")
public class YearCheckController {
	@Autowired
	private Year_checkService year_checkService;
	
	/**
	 * 跳转月点检列表
	 * @return
	 */
	@RequestMapping("/yearCheckList")
	public String peopleList(){
		return "yearCheckList";
	}
	
	@RequestMapping("/yearCheckDeails")
	public String yearCheckDeails(year_check year_check,Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			year_check year_check2=year_checkService.yearly_checkDeails(year_check);
			 if(year_check2!=null) {
				 model.addAttribute("year_check", year_check2);
			 }
			/**
			 * 缺失冲首页跳转
			 */
			model.addAttribute("sys_user", user);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
	
		return "yearCheckDeails";
	}
	
	
	@RequestMapping("/yearlyCheck")
	public String dailyCheck(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			/**
			 * 缺失冲首页跳转
			 */
			model.addAttribute("sys_user", user);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
	
		return "yearCheck";
	}
	
	
	@RequestMapping("/updateYearlyCheck")
	public String updateYearlyCheck(year_check year_check,Model model,HttpServletRequest request, HttpServletResponse response){
		
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			year_check year_check2=year_checkService.yearly_checkDeails(year_check);
			 if(year_check2!=null) {
				 model.addAttribute("year_check", year_check2);
			 }
			/**
			 * 缺失冲首页跳转
			 */
			model.addAttribute("sys_user", user);
		}else {
			model.addAttribute("loginError", "登录异常，请重新登录");
		}
	
		return "updateYearCheckDeails";
	}
	
	
	@RequestMapping(value ="/updateYearly",method = RequestMethod.POST)
	@ResponseBody
	public String updateYearly(year_check year_check,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			 year_check.setCreate_time(new Date());
			 //先查询
			 year_check year_check2=year_checkService.yearly_checkDeails(year_check);
			 if(year_check2!=null) {
			 //更新数据
				 year_check.setYear_id(year_check2.getYear_id());
			Integer count1=year_checkService.update_year_check(year_check);
				if(count1>0) {
					return "success";
				}
				 return "error";
			 }
			 
			
		}else {
			return "other";
		}
	
		return "fail";
	}

	
	
	@RequestMapping(value ="/yearly",method = RequestMethod.POST)
	@ResponseBody
	public String daily(year_check year_check,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			 year_check.setCreate_time(new Date());
			 //先查询
			 year_check year_check2=year_checkService.yearly_checkDeails(year_check);
			 if(year_check2!=null) {
				 //更新数据
//				 year_check.setYear_id(year_check2.getYear_id());
//				Integer count1=year_checkService.update_year_check(year_check);
//				if(count1>0) {
//					return "success";
//				}
				 return "error";
			 }else {
				 Integer count=year_checkService.insert_yearly_check(year_check);
					if(count>0) {
						return "success";
					}
			 }
			 
			
		}else {
			return "other";
		}
	
		return "fail";
	}

	
	
	@RequestMapping(value ="/yearlyList",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> daily_checkList(year_check year_check,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		Map<String,Object> map=new HashMap<String,Object>();
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			List<year_check> list=year_checkService.yearly_checkList(year_check);
			for(int i=0;i<list.size();i++) {
				System.out.println(list.get(i).toString());
			}
			Integer count=year_checkService.findYearCount(year_check);
			 if(!list.isEmpty()) {
				 map.put("success", 1);
				 map.put("count", count);
				 map.put("daily_checkList", list);
			 }else {
				 map.put("success", -1);
			 }
			
		}else {
			 map.put("success", -2);
		}
		return map;
	}
	
	/**
	 * 批量删除信息
	 */
	@RequestMapping(value = "deleteAllYearCheckList")
	@ResponseBody
	public int deleteAllcheckList(String ids,HttpServletRequest request, HttpServletResponse response) {
		System.out.println("ids===" + ids);
		String newsId[] = ids.split(",");
		
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			String role=user.getRole();
			if(role.equals("administrator")) {
		try {
			for (String id : newsId) {
				year_check year_check = new year_check();
				year_check.setYear_id(Integer.parseInt(id));
				year_checkService.delete_yearly_check(Integer.parseInt(id));
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
		}else {
			return -2;//权限不足
		}
	}else {
		return -3;
	}
	}
	
}
