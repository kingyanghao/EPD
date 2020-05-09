package com.hanxi.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.filechooser.FileSystemView;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.bench;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.evaluation;
import com.hanxi.entity.kb_record;
import com.hanxi.entity.month_check;
import com.hanxi.entity.scheduling_record;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.va_record;
import com.hanxi.entity.work_order;
import com.hanxi.service.Daily_checkService;
import com.hanxi.service.EvaluationService;
import com.hanxi.service.KbRecordService;
import com.hanxi.service.Scheduling_recordService;
import com.hanxi.service.UserService;
import com.hanxi.service.VaRecordService;
import com.hanxi.service.Work_orderService;
import com.hanxi.util.DateUtils;
import com.hanxi.util.MathMoney;
import com.hanxi.util.SessionSave;

@Controller
@RequestMapping("/main")
public class SelectopeterController {
	@Autowired
	private Work_orderService work_orderService;
	@Autowired
	private UserService userService;
	@Autowired
	private Scheduling_recordService scheduling_recordService;
	@Autowired
	private EvaluationService evaluationService;
	
	
	
	
	/**
	 * 五日排单的搜索
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value ="/searchFiveSelectopeter")
	@ResponseBody
	public Map<String,Object> fiveSelectopeter(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> mapList=new HashMap<>();
		
		
		
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String name=request.getParameter("name");
		if(user!=null) {
			String weekday=request.getParameter("str");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // 设置时间格式  
			Date time=sdf.parse(weekday);
			System.out.println("进入开始getTaskPool");
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setWorkers(name);
			List<sys_user> list2=userService.five_dailyOrder(weekday);
			if(!list2.isEmpty()) {
				String one=DateUtils.getWeekByDate(time,0);
				String two=DateUtils.getWeekByDate(time,1);
				String three=DateUtils.getWeekByDate(time,2);
				String four=DateUtils.getWeekByDate(time,3);
				String five=DateUtils.getWeekByDate(time,4);
				String six=DateUtils.getWeekByDate(time,5);
				String seven=DateUtils.getWeekByDate(time,6);
				mapList.put("one", one);
				mapList.put("two", two);
				mapList.put("three", three);
				mapList.put("four", four);
				mapList.put("five", five);
				mapList.put("six", six);
				mapList.put("seven", seven);
				for(int i=0;i<list2.size();i++) {
					
					if(list2.get(i).getScheduling_recordList().isEmpty()) {
						Map<String,Object> map=new HashMap<>();
						List<String> onelist=new ArrayList<>();
						List<String> twolist=new ArrayList<>();
						List<String> threelist=new ArrayList<>();
						List<String> fourlist=new ArrayList<>();
						List<String> fivelist=new ArrayList<>();
						List<String> sixlist=new ArrayList<>();
						List<String> sevenlist=new ArrayList<>();
						map.put("one", onelist);
						map.put("two", twolist);
						map.put("three", threelist);
						map.put("four", fourlist);
						map.put("five", fivelist);
						map.put("six", sixlist);
						map.put("seven", sevenlist);
						list2.get(i).setKbList(map);
						
					}else {
						System.out.println("优质"+list2.get(i).getUsername());
						List<scheduling_record> scheduling_recordlist=list2.get(i).getScheduling_recordList();
						List<scheduling_record> onelist=new ArrayList<>();
						List<scheduling_record> twolist=new ArrayList<>();
						List<scheduling_record> threelist=new ArrayList<>();
						List<scheduling_record> fourlist=new ArrayList<>();
						List<scheduling_record> fivelist=new ArrayList<>();
						List<scheduling_record> sixlist=new ArrayList<>();
						List<scheduling_record> sevenlist=new ArrayList<>();
						Map<String,Object> map1=new HashMap<>();
						for(int s=0;s<scheduling_recordlist.size();s++) {
							if(scheduling_recordlist.get(s).getScheduling_date().equals(one)) {
								System.out.println("tianjia1");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
								onelist.add(scheduling_recordlist.get(s));
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(two)) {
								twolist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia2");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(three)) {
								threelist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia3");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(four)) {
								fourlist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia4");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(five)) {
								fivelist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia5");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(six)) {
								sixlist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia5");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(seven)) {
								sevenlist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia5");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}
							
							
						}
						map1.put("one", onelist);
						map1.put("two", twolist);
						map1.put("three", threelist);
						map1.put("four", fourlist);
						map1.put("five", fivelist);
						map1.put("six", sixlist);
						map1.put("seven", sevenlist);
						list2.get(i).setKbList(map1);
						
					}
				}
				/*for(int i=0;i<list2.size();i++) {
					System.out.println(list2.get(i).getUsername()+"="+i+"======="+list2.get(i).toString());
				}*/
				mapList.put("list2", list2);
				mapList.put("succ", 1);
			}
			
		}else {
			mapList.put("succ", "-1");
		}
	
		return mapList;
	}
	
	/**
	 * 七日排单的搜索
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value ="/searchSevenSelectopeter")
	@ResponseBody
	public Map<String,Object>  sevenSelectopeter(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> mapList=new HashMap<>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String name=request.getParameter("name");
		String weekday=request.getParameter("str");
		System.out.println("----weekday---"+weekday);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // 设置时间格式  
		Date time=sdf.parse(weekday);
		System.out.println("----time---"+time);
		if(user!=null) {
			System.out.println("进入开始getTaskPool");
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setWorkers(name);
			List<sys_user> list2=userService.seven_dailyOrder(weekday);
			if(!list2.isEmpty()) {
				String one=DateUtils.getWeekByDate(time,0);
				String two=DateUtils.getWeekByDate(time,1);
				String three=DateUtils.getWeekByDate(time,2);
				String four=DateUtils.getWeekByDate(time,3);
				String five=DateUtils.getWeekByDate(time,4);
				String six=DateUtils.getWeekByDate(time,5);
				String seven=DateUtils.getWeekByDate(time,6);
				Calendar cal=Calendar.getInstance();
		
				System.out.println("seven:"+seven);
				mapList.put("one", one);
				mapList.put("two", two);
				mapList.put("three", three);
				mapList.put("four", four);
				mapList.put("five", five);
				mapList.put("six", six);
				mapList.put("seven", seven);
				for(int i=0;i<list2.size();i++) {
					if(list2.get(i).getScheduling_recordList().isEmpty()) {
						Map<String,Object> map=new HashMap<>();
						List<String> onelist=new ArrayList<>();
						List<String> twolist=new ArrayList<>();
						List<String> threelist=new ArrayList<>();
						List<String> fourlist=new ArrayList<>();
						List<String> fivelist=new ArrayList<>();
						List<String> sixlist=new ArrayList<>();
						List<String> sevenlist=new ArrayList<>();
						map.put("one", onelist);
						map.put("two", twolist);
						map.put("three", threelist);
						map.put("four", fourlist);
						map.put("five", fivelist);
						map.put("six", sixlist);
						map.put("seven", sevenlist);
						list2.get(i).setKbList(map);
						
					}else {
						System.out.println("优质"+list2.get(i).getUsername());
						List<scheduling_record> scheduling_recordlist=list2.get(i).getScheduling_recordList();
						List<scheduling_record> onelist=new ArrayList<>();
						List<scheduling_record> twolist=new ArrayList<>();
						List<scheduling_record> threelist=new ArrayList<>();
						List<scheduling_record> fourlist=new ArrayList<>();
						List<scheduling_record> fivelist=new ArrayList<>();
						List<scheduling_record> sixlist=new ArrayList<>();
						List<scheduling_record> sevenlist=new ArrayList<>();
						Map<String,Object> map1=new HashMap<>();
						for(int s=0;s<scheduling_recordlist.size();s++) {
							if(scheduling_recordlist.get(s).getScheduling_date().equals(one)) {
								System.out.println("tianjia1");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
								onelist.add(scheduling_recordlist.get(s));
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(two)) {
								
								twolist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia2");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(three)) {
								threelist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia3");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(four)) {
								fourlist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia4");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(five)) {
								fivelist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia5");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(six)) {
								sixlist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia5");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}else if(scheduling_recordlist.get(s).getScheduling_date().equals(seven)) {
								sevenlist.add(scheduling_recordlist.get(s));
								System.out.println("tianjia5");
								System.out.println(list2.get(i).getUsername());
								System.out.println(scheduling_recordlist.get(s).getScheduling_kb());
							}
							
							
						}
						map1.put("one", onelist);
						map1.put("two", twolist);
						map1.put("three", threelist);
						map1.put("four", fourlist);
						map1.put("five", fivelist);
						map1.put("six", sixlist);
						map1.put("seven", sevenlist);
						list2.get(i).setKbList(map1);
						
					}
				}
		
				mapList.put("list2", list2);
				mapList.put("succ", 1);
				
			}
			
		}else {
			mapList.put("succ", "-1");
		}
	
		return mapList;
	}
	
	
	
}
