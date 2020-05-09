package com.hanxi.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanxi.entity.allOrderPage;
import com.hanxi.entity.allWorkSheet;
import com.hanxi.entity.calendarOptions;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.scheduling_record;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.va_record;
import com.hanxi.entity.work_order;
import com.hanxi.service.CalendarOptionsService;
import com.hanxi.service.Daily_checkService;
import com.hanxi.service.Scheduling_recordService;
import com.hanxi.service.UserService;
import com.hanxi.service.Work_orderService;
import com.hanxi.util.DateUtils;
import com.hanxi.util.SessionSave;

@Controller
@RequestMapping("/main")
public class WorkCountController {
	@Autowired
	private Scheduling_recordService scheduling_recordService;
	
	@Autowired
	private UserService userService;
	@Autowired
	private CalendarOptionsService calendarOptionsService;
	
	@Autowired
	private Work_orderService work_orderService;
	/**
	 * 跳转日点检列表
	 * @return
	 */
	@RequestMapping("/workCount")
	public String peopleList(){
		scheduling_record scheduling_record =new scheduling_record();
		scheduling_record.setYear("2019");
		scheduling_record.setMonth("3");
		scheduling_record.setWeek("9");
		List<scheduling_record> list=scheduling_recordService.getstatistical(scheduling_record);
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).toString());
		}
		int aa=DateUtils.getMaxWeekNumOfYear(Integer.valueOf("2019"));
		System.out.println(aa+"aa");
		return "workCount";
	}
	
	@RequestMapping("/workCountOrder")
	@ResponseBody
	public Map<String,Object> workCountOrder(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		Map<String,Object> map=new HashMap<>();
		if(user!=null) {
			scheduling_record scheduling_record =new scheduling_record();
			String id=request.getParameter("id");
			String str=request.getParameter("str");
			System.out.println("id:"+id);
			calendarOptions calendarOptions=new calendarOptions();//休息日的获取
			calendarOptions calendarOptions1=new calendarOptions();//工作日的获取
			if(id.equals("1")) {
				scheduling_record.setYear(str);
				System.out.println(str+":str");
				
				calendarOptions.setYear(str);
				calendarOptions.setType("1");
				calendarOptions1.setYear(str);                                     
				calendarOptions1.setType("2");
		
				//获取当前时间的是否是公休日，工作日
				List<String> overList=calendarOptionsService.selectcalSearchList(calendarOptions);;//1为休息日,不是双休的休息日
				List<String> workList=calendarOptionsService.selectcalSearchList(calendarOptions1);//2为工作日，双休的需要正常上班的日子
				int yearNum=DateUtils.getMaxDaysOfYear(Integer.valueOf(str));//获取一年有多少天
				Set restSet= DateUtils.getYearDoubleWeekend(Integer.valueOf(str));//获取一年中的双休日
				int num=(yearNum-restSet.size()-overList.size()+workList.size())*8;
				System.out.println(num+"++++++++++++++num"+restSet.size());
				
				map.put("num", num);
				
			
			
			}else {
				String strs[]=str.split("-");
				scheduling_record.setYear(strs[0]);
				
				calendarOptions.setYear(strs[0]);
				calendarOptions.setType("1");
				calendarOptions1.setYear(strs[0]);
				calendarOptions1.setType("2");
				if(id.equals("2")) {
					scheduling_record.setMonth(strs[1]);
					calendarOptions.setMonth(strs[1]);
					calendarOptions1.setMonth(strs[1]);
					//获取当前时间的是否是公休日，工作日
					List<String> overList=calendarOptionsService.selectcalSearchList(calendarOptions);;//1为休息日,不是双休的休息日
					List<String> workList=calendarOptionsService.selectcalSearchList(calendarOptions1);//2为工作日，双休的需要正常上班的日子
					int yearNum=DateUtils.getMonthDayFromMonth(str);//获取一个月有多少天
					Set restSet= DateUtils.getWeekEndDayFromMonth(str);//获取一个月中的双休日
					int num=(yearNum-restSet.size()-overList.size()+workList.size())*8;
					System.out.println(num+"++++++month++++++++num"+restSet.size());
					
					
					map.put("num", num);
					
				}else if(id.equals("3")) {
					scheduling_record.setWeek(strs[1]);
					calendarOptions.setWeek(strs[1]);
					calendarOptions1.setWeek(strs[1]);
					
					//获取当前时间的是否是公休日，工作日
					List<String> overList=calendarOptionsService.selectcalSearchList(calendarOptions);;//1为休息日,不是双休的休息日
					List<String> workList=calendarOptionsService.selectcalSearchList(calendarOptions1);//2为工作日，双休的需要正常上班的日子
					int yearNum=7;//获取一周有多少天
					int num=(yearNum-2-overList.size()+workList.size())*8;
					System.out.println(num+"++++++week++++++++num");
					map.put("num", num);
				}
			}
			List<scheduling_record> list=scheduling_recordService.getstatistical(scheduling_record);
			if(!list.isEmpty()) {
				map.put("list", list);
				map.put("succ", 1);
				
			}else {
				map.put("succ", -1);
			}
			
			
		}else {
			map.put("succ", -2);
		}
		
		
		return map;
	}
	
	
	
	//跳转到人员订单详情列表
	
		
		@RequestMapping("/worksheetList")
		public String worksheetList(Model model,HttpServletRequest request, HttpServletResponse response){
			HttpSession session = request.getSession();
			sys_user user = (sys_user) session.getAttribute("userMsg");
			if(user!=null) {
				/*if(user.getRole().equals("operator")){
					//身份权限不足
					model.addAttribute("role", "notRole");
				}else {*/
					//查询所有的工程师，以及管理员
					List<sys_user> noOperatorList=userService.AllList();
					
					model.addAttribute("noOperatorList", noOperatorList);
					model.addAttribute("name", user.getUsername());
					
				/*}*/
			}else {
				//登录失败
				model.addAttribute("error", "error");
			}
			
			return "worksheetList";
		}
		//全部数据列表
		
		
		@RequestMapping("/findWorksheetList")
		@ResponseBody
		public Map<String, Object> findAllOrderList(HttpServletRequest request,allWorkSheet allWorkSheet) throws ParseException{
			Map<String, Object> maps = new HashMap<String, Object>();
			List<allWorkSheet> work_orderList = work_orderService.findallWorkSheetOrderList(allWorkSheet);
			int count = work_orderService.findallWorkSheetListCount(allWorkSheet);
			//进行订单状态的处理
			HttpSession session = request.getSession();
			sys_user user = (sys_user) session.getAttribute("userMsg");
			if(work_orderList.size()>0) {
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				
				
			}
			
			  	maps.put("msg","");
			    maps.put("count",count);
			    maps.put("data",work_orderList);
			    maps.put("code", 0);
			return maps;
		}
		
		
}
