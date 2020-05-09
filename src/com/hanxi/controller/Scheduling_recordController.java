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
public class Scheduling_recordController {
	@Autowired
	private Work_orderService work_orderService;
	@Autowired
	private UserService userService;
	@Autowired
	private Scheduling_recordService scheduling_recordService;
	@Autowired
	private EvaluationService evaluationService;
	
	
	
	
	/**
	 * 弹框显示该订单的详情
	 * @throws ParseException 
	 */
	@RequestMapping("/insert_scheduling")
	@ResponseBody
	public Map<String,Object> taskPooldeails(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		Map<String,Object> map=new HashMap<String,Object>();
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
		String vaId=request.getParameter("vaId");
		String kbId=request.getParameter("kbId");
		String operator=request.getParameter("operator");
		String start=request.getParameter("start");
		String end=request.getParameter("end");
		String overtime=request.getParameter("overtime");
		String hours=request.getParameter("hours");
		String date_time=request.getParameter("date_time");
		String bench_name=request.getParameter("bench_name");
		String type=request.getParameter("type");
		System.out.println(type+":type");
		work_order work_order=new work_order();
			work_order.setKb_no(kbId);
			work_order work_order1=work_orderService.select_Order_Deails(work_order);
			//订单状态0 未派单 1.已派单未拍完，2.已拍完，3.未全部关单，4已完成
			if(!work_order1.getStatus().equals("0")&&!work_order1.getStatus().equals("1")) {
				map.put("error","-1");//该订单已经排完
			}else {
				//进行时间段的校验
				double minus=MathMoney.sub(MathMoney.sub(Double.valueOf(work_order1.getWork_hours()),Double.valueOf(work_order1.getSingle_hours())),Double.valueOf(hours));
				if(minus<0d) {
					//提示排单时间过长
					map.put("error","-2");
				}else {
					//查询该人员在当前时间段中是否已经有排单
					System.out.println("bench_name:"+bench_name);
					System.out.println("bench_name:"+bench_name.equals("Other"));
					
					scheduling_record scheduling_record=new scheduling_record();
					scheduling_record.setStarthours(Double.valueOf(start));
					scheduling_record.setEndhours(Double.valueOf(end));
					scheduling_record.setScheduling_status("1");
					scheduling_record.setWorkers(operator);
					scheduling_record.setScheduling_va(vaId);
					scheduling_record.setScheduling_date(date_time);
					scheduling_record.setWork_overtime(overtime);
					List<scheduling_record> Scheduling_recordList=new ArrayList();
					if(!bench_name.equals("Other")) {
						System.out.println("bench_name:进入");
						//scheduling_record.setBench_name(bench_name);
						Scheduling_recordList=scheduling_recordService.select_Scheduling_record(scheduling_record);
						
					}
					
					scheduling_record scheduling_record2=new scheduling_record();
					scheduling_record2.setStarthours(Double.valueOf(start));
					scheduling_record2.setEndhours(Double.valueOf(end));
					/*scheduling_record1.setScheduling_status("1");
					scheduling_record1.setWorkers(operator);*/
					/*scheduling_record2.setScheduling_va(vaId);*/
					scheduling_record2.setScheduling_date(date_time);
					scheduling_record2.setWork_overtime(overtime);
					scheduling_record2.setScheduling_status("1");
					List<scheduling_record> Scheduling_recordList2=new ArrayList();
					if(!bench_name.equals("Other")) {
						System.out.println("bench_name:进入1");
						scheduling_record2.setBench_name(bench_name);
						Scheduling_recordList2=scheduling_recordService.select_Scheduling_record(scheduling_record2);//查看台架是否优质
					}
					
					if(!Scheduling_recordList.isEmpty()) {
						//当前时间段有值
						map.put("error","-3");
						System.out.println("当前时间段优质11");
					}else if(!Scheduling_recordList2.isEmpty()){
							//当前时间段有值
							map.put("error","-6");
							System.out.println("当前时间段优质22");
					}else {
						System.out.println("===当前时间段无订单");
						//进行数据的插入处理
						System.out.println(start+"==");
						System.out.println(end+"==");
						String start_time=timeHours(start);
						String end_time=timeHours(end);
						System.out.println(start_time+"==");
						System.out.println(end_time+"==");
						scheduling_record.setStart_time(start_time);
						scheduling_record.setEnd_time(end_time);
						scheduling_record.setScheduling_hours(hours);
						scheduling_record.setWorkers(operator);
						scheduling_record.setScheduling_date(date_time);
						scheduling_record.setScheduling_kb(kbId);
						scheduling_record.setScheduling_va(vaId);
						scheduling_record.setBench_name(bench_name);
						SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
						scheduling_record.setScheduling_day(sdf.parse(date_time));
						scheduling_record.setYear(String.valueOf(DateUtils.getYear(date_time)));
						scheduling_record.setMonth(String.valueOf(DateUtils.getMonth(date_time)));
						scheduling_record.setWeek(String.valueOf(DateUtils.getWeekByDay(date_time)));
						scheduling_record.setTypeOrder(type);
						//如果大于0，代表还有时间可以排单
						String hours1=MathMoney.add(hours,work_order1.getSingle_hours());
						work_order.setRemaining_hours(String.valueOf(minus));//剩余时间
						work_order.setSingle_hours(hours1);//已经排的时间
						work_order.setOperator(operator);
						System.out.println(work_order.toString());
						if(minus>0d) {
							//修改订单的状态1.已派单未拍完
							work_order.setStatus("1");
							
						}else {
							//2.已拍完
							work_order.setStatus("2");
						}
						//调用接口保存数据
						System.out.println(scheduling_record.toString());
						
						Integer aa=scheduling_recordService.insert_scheduling_record(scheduling_record,work_order);
						if(aa>0) {
							//获取此kb下的所以的排单
							scheduling_record scheduling_record1=new scheduling_record();
							scheduling_record1.setScheduling_kb(kbId);
							
							List<scheduling_record> Scheduling_recordList1=scheduling_recordService.select_Scheduling_record(scheduling_record1);
							//获取此kb的订单
							work_order work_order2=new work_order();
							work_order2.setKb_no(kbId);
							work_order work_order3=work_orderService.select_Order_Deails(work_order);
							System.out.println("保存成功");
							map.put("error","1");
							map.put("Scheduling_recordList",Scheduling_recordList1);
							map.put("work_order",work_order3);
							//进行邮件的发送
						
								System.out.println("进入排单邮件");
								List<String> order_placerList=userService.emailList(work_order3.getOrder_placer());//查询下单人
								List<String> operatorList=userService.emailList(work_order3.getOperator());//查询操作者
								String em="EPD_Lab_Service<"+user.getEmail()+">";
								
								//进行备注信息的转换
								String remark=work_order3.getRemark();
								String remark1=remark.replaceAll("<br />", "\n                ");
								
								if(overtime.equals("1")) {
									String order_placertext_E="Dear colleague: \n   Your overtime test order has been assigned to operator: "+work_order3.getOperator()+",\n   Test bench: "+work_order3.getBench_name()+"\n   VA:"+work_order3.getVa_no()+"\n   KB:"+work_order3.getKb_no()+" \n   Part type:"+work_order3.getPart_type()+"\n   Customer/Project:"+work_order3.getCustomer_project()+" \n   Part quantity:"+work_order3.getPart_quantity()+" \n   Assigned time:"+sdf.parse(date_time)+" "+start_time+"-"+end_time+" \n \n \n \n \n   Best regards, \n   RBCD/EPD5 Lab Team";
									String order_placertext=order_placertext_E;
									System.out.println("发送");
									sendMailByAsynchronous(em, order_placerList, " Your test order is assigned by lab team",order_placertext );
									sendMailByAsynchronous(em, operatorList, " Your test order is assigned by lab team",order_placertext );
								}else {
									System.out.println("发送");
									String order_placertext_E="Dear colleague: \n   You test order has been assigned to operator: "+work_order3.getOperator()+",\n   Test bench: "+work_order3.getBench_name()+"\n   VA:"+work_order3.getVa_no()+"\n   KB:"+work_order3.getKb_no()+" \n   Part type:"+work_order3.getPart_type()+"\n   Customer/Project:"+work_order3.getCustomer_project()+" \n   Part quantity:"+work_order3.getPart_quantity()+" \n   Assigned time:"+sdf.parse(date_time)+" "+start_time+"-"+end_time+" \n \n \n \n \n   Best regards, \n   RBCD/EPD5 Lab Team";
									String order_placertext=order_placertext_E;
									sendMailByAsynchronous(em, order_placerList, "Your test order is assigned by lab team",order_placertext );
									sendMailByAsynchronous(em, operatorList, "Your test order is assigned by lab team ",order_placertext );
								}
							
						}else {
							System.out.println("保存失败");
							map.put("error","-4");
						}
					}
					
					
				} 
			}
			
		}
		
		return map;
	}
	
	
	
	@RequestMapping(value ="/selectopeter")
	@ResponseBody
	public Map<String,Object> selectopeter(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String name=request.getParameter("name");
		if(user!=null) {
			System.out.println("进入开始getTaskPool");
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setWorkers(name);
			List<scheduling_record> list2=scheduling_recordService.getoperators(scheduling_record);
			if(!list2.isEmpty()) {
				map.put("succ", 1);
				map.put("scheduling_List", list2);
			}else {
				map.put("succ", -1);
				map.put("scheduling_List", list2);
			}
			
		}else {
			map.put("succ", -1);
		}
	
		return map;
	}
	
	@RequestMapping(value ="/fiveSelectopeter")
	public String fiveSelectopeter(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String name=request.getParameter("name");
		if(user!=null) {
			System.out.println("进入开始getTaskPool");
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setWorkers(name);
			
			Date dayDate=new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // 设置时间格式  
			String timeDay=sdf.format(dayDate);
			List<sys_user> list2=userService.five_dailyOrder(timeDay);
			if(!list2.isEmpty()) {
				String one=DateUtils.getWeekStart(1);
				String two=DateUtils.getWeekStart(2);
				String three=DateUtils.getWeekStart(3);
				String four=DateUtils.getWeekStart(4);
				String five=DateUtils.getWeekStart(5);
				String six=DateUtils.getWeekStart(6);
				String seven=DateUtils.getWeekStart(7);
				model.addAttribute("one", one);
				model.addAttribute("two", two);
				model.addAttribute("three", three);
				model.addAttribute("four", four);
				model.addAttribute("five", five);
				model.addAttribute("six", six);
				model.addAttribute("seven", seven);
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
				model.addAttribute("list2", list2);
			}
			
		}else {
			model.addAttribute("loginError", "-1");
		}
	
		return "fiveDailyOrder";
	}
	
	
	
	
	
	@RequestMapping("/overtimeOrder")
	public String overtime(){
		return "overtimeSelectopeter";
	}
	
	@RequestMapping(value ="/overtimeSelectopeter")
	@ResponseBody
	public Map<String,Object> overtimeSelectopeter(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String name=request.getParameter("name");
		Map<String,Object> map=new HashMap<>();
		if(user!=null) {
			System.out.println("进入开始getTaskPool");
			sys_user sys_user=new sys_user();
			String val=request.getParameter("val");
			System.out.println("val"+val);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			Date date=sdf.parse(val);
			sys_user.setStartMonth(date);
			List<sys_user> list3=userService.month_dailyOrder(sys_user);
			
			if(!list3.isEmpty()) {
				for(int i=0;i<list3.size();i++) {
					String count="0";
					List<scheduling_record> scheduling_recordlist=list3.get(i).getScheduling_recordList();
					for(int s=0;s<scheduling_recordlist.size();s++) {
						count=MathMoney.add(count, scheduling_recordlist.get(s).getHarmonious());
					}
					list3.get(i).setConut(count);
			}
				map.put("succ", 1);
				map.put("list3", list3);
			}
			String[] ymd=val.split("-");
			int num=DateUtils.getDays(Integer.valueOf(ymd[0]),Integer.valueOf(ymd[1]));
			System.out.println(num);
			map.put("num", num);
		}
	
		return map;
	}
	
	
	@RequestMapping(value ="/sevenSelectopeter")
	public String sevenSelectopeter(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String name=request.getParameter("name");
		if(user!=null) {
			System.out.println("进入开始getTaskPool");
			scheduling_record scheduling_record=new scheduling_record();
			Date dayDate=new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // 设置时间格式  
			String timeDay=sdf.format(dayDate);
			scheduling_record.setWorkers(name);
			List<sys_user> list2=userService.seven_dailyOrder(timeDay);
			if(!list2.isEmpty()) {
				String one=DateUtils.getWeekStart(1);
				String two=DateUtils.getWeekStart(2);
				String three=DateUtils.getWeekStart(3);
				String four=DateUtils.getWeekStart(4);
				String five=DateUtils.getWeekStart(5);
				String six=DateUtils.getWeekStart(6);
				String seven=DateUtils.getWeekStart(7);
				Calendar cal=Calendar.getInstance();
		
				System.out.println("seven:"+seven);
				model.addAttribute("one", one);
				model.addAttribute("two", two);
				model.addAttribute("three", three);
				model.addAttribute("four", four);
				model.addAttribute("five", five);
				model.addAttribute("six", six);
				model.addAttribute("seven", seven);
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
				model.addAttribute("list2", list2);
				
			
				
			}
			
		}else {
			model.addAttribute("loginError", "-1");
		}
	
		return "sevenDailyOrder";
	}
	
	
	
	public String oneDay(int num){
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		/*System.out.println("当前日期:"+sf.format(c.getTime()));*/
		c.add(Calendar.DAY_OF_MONTH, num);
		/*System.out.println("增加一天后日期:"+sf.format(c.getTime()));*/
		return sf.format(c.getTime());
	}
	
	//打印结果
	
	/**
	 * 跳转当日排单
	 * @return
	 */
	@RequestMapping("/dailyOrder")
	public String forgot_password(){
		return "dailyOrder";
	}
	/**
	/**
	 * 获取当日的所有人排单计划
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value ="/dailyOrderList")
	@ResponseBody
	public Map<String,Object> dailyOrder(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String name=request.getParameter("name");
		if(user!=null) {
			System.out.println("进入开始dailyOrder");
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setWorkers(name);
			sys_user sys_user=new sys_user();
			Date date=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String date1=sdf.format(date);
			System.out.println(date1+"======");
			sys_user.setScheduling_date(date1);
			List<sys_user> list2=userService.dailyOrder(sys_user);
			if(!list2.isEmpty()) {
				map.put("succ", 1);
				map.put("scheduling_List", list2);
			for(int i=0;i<list2.size();i++) {
				System.out.println(list2.get(i).getUsername());
			}
			
			}else {
				map.put("succ", -1);
				map.put("scheduling_List", list2);
			}
			
		}else {
			map.put("succ", -2);
		}
	
		return map;
	}
	/**
	 * 在不岗的切换
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value ="/updatejob")
	@ResponseBody
	public Map<String,Object> updatejob(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String id=request.getParameter("id");
		String status=request.getParameter("status");
		if(status.equals("off")) {
			status="on";
		}else {
			status="off";
		}
		if(user!=null) {
			sys_user sys_user=new sys_user();
			sys_user.setUser_id(Integer.valueOf(id));
			sys_user.setOn_the_job(status);
			Integer sys=userService.update_notes(sys_user);
			if(sys>0) {
				map.put("succ", 1);
			
			}else {
				map.put("succ", -1);
			}
			
		}else {
			map.put("succ", -1);
		}
	
		return map;
	}
	
	
	
	/**
	 * 跳转台架排单
	 * @return
	 */
	@RequestMapping("/benchOrder")
	public String benchOrder(){
		return "benchOrder";
	}
	/**
	/**
	 * 获取当日的所有台架排单
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value ="/benchOrderList")
	@ResponseBody
	public Map<String,Object> benchOrder(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String name=request.getParameter("name");
		if(user!=null) {
			System.out.println("进入开始dailyOrder");
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setWorkers(name);
			bench bench=new bench();
			Date date=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String date1=sdf.format(date);
			System.out.println(date1+"======");
			bench.setScheduling_date(date1);
			/*bench.setScheduling_date("2019-02-21");*/
			List<bench> list2=userService.benchOrder(bench);
			if(!list2.isEmpty()) {
				map.put("succ", 1);
				map.put("scheduling_List", list2);
			}else {
				map.put("succ", -1);
				map.put("scheduling_List", list2);
			}
			
		}else {
			map.put("succ", -1);
		}
	
		return map;
	}
	
	//进行时间的转化
	public String timeHours(String time) {
		String time1="";
		if(time.equals("0.0")) {
			time1="0:00";
		}
		if(time.equals("0.5")) {
			time1="0:30";
		}
		if(time.equals("1")) {
			time1="1:00";
		}
		if(time.equals("1.5")) {
			time1="1:30";
		}
		if(time.equals("2")) {
			time1="2:00";
		}
		if(time.equals("2.5")) {
			time1="2:30";
		}
		if(time.equals("3")) {
			time1="3:00";
		}
		if(time.equals("3.5")) {
			time1="3:30";
		}
		if(time.equals("4")) {
			time1="4:00";
		}
		if(time.equals("4.5")) {
			time1="4:30";
		}
		if(time.equals("5")) {
			time1="5:00";
		}
		if(time.equals("5.5")) {
			time1="5:30";
		}
		if(time.equals("6")) {
			time1="6:00";
		}
		if(time.equals("6.5")) {
			time1="6:30";
		}
		if(time.equals("7")) {
			time1="7:00";
		}
		if(time.equals("7.5")) {
			time1="7:30";
		}
		if(time.equals("8")) {
			time1="8:00";
		}
		if(time.equals("8.5")) {
			time1="8:30";
		}
		if(time.equals("9")) {
			time1="9:00";
		}
		if(time.equals("9.5")) {
			time1="9:30";
		}
		if(time.equals("10")) {
			time1="10:00";
		}
		if(time.equals("10.5")) {
			time1="10:30";
		}
		if(time.equals("11")) {
			time1="11:00";
		}
		if(time.equals("11.5")) {
			time1="11:30";
		}
		if(time.equals("12")) {
			time1="12:00";
		}
		if(time.equals("12.5")) {
			time1="12:30";
		}
		if(time.equals("13")) {
			time1="13:00";
		}
		if(time.equals("13.5")) {
			time1="13:30";
		}
		if(time.equals("14")) {
			time1="14:00";
		}
		if(time.equals("14.5")) {
			time1="14:30";
		}
		if(time.equals("15")) {
			time1="15:00";
		}
		if(time.equals("5.5")) {
			time1="5:30";
		}
		if(time.equals("16")) {
			time1="16:00";
		}
		if(time.equals("16.5")) {
			time1="16:30";
		}
		if(time.equals("17")) {
			time1="17:00";
		}
		if(time.equals("17.5")) {
			time1="17:30";
		}
		if(time.equals("18")) {
			time1="18:00";
		}
		if(time.equals("18.5")) {
			time1="18:30";
		}
		if(time.equals("19")) {
			time1="19:00";
		}
		if(time.equals("19.5")) {
			time1="19:30";
		}
		if(time.equals("20")) {
			time1="20:00";
		}
		if(time.equals("20.5")) {
			time1="20:30";
		}
		if(time.equals("21")) {
			time1="21:00";
		}
		if(time.equals("21.5")) {
			time1="21:30";
		}
		if(time.equals("22")) {
			time1="22:00";
		}
		if(time.equals("22.5")) {
			time1="22:30";
		}
		if(time.equals("23")) {
			time1="23:00";
		}
		if(time.equals("23.5")) {
			time1="23:30";
		}
		if(time.equals("24")) {
			time1="24:00";
		}
		return time1;
	}
	
	/**
	 * 跳转未排单详情
	 */
	@RequestMapping("/orderDeails")
	public String Deails(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		String kb_no=request.getParameter("kb_no");
		sys_user user = (sys_user) session.getAttribute("userMsg");
		
		
		if(user!=null) {
			evaluation evaluation=new evaluation();
			if(!user.getRole().equals("administrator")) {
				evaluation.setEvaluation_name(user.getUsername());
				model.addAttribute("roles",0);
			}else {
				model.addAttribute("roles",1);
			}
			
			
			work_order work_order=new work_order();
			work_order.setKb_no(kb_no);
			work_order work_order1=work_orderService.select_Order_Deails(work_order);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String is=sdf.format(work_order1.getIssue_date1());
			String d=sdf.format(work_order1.getDeadline1());
			work_order1.setIssue_date(is);
			work_order1.setDeadline(d);
			if(work_order1!=null) {
				model.addAttribute("work_order", work_order1);
				evaluation.setEvaluation_kb(work_order1.getKb_no());
				List<evaluation> evaluationList=evaluationService.select_evaluation_list(evaluation);
				
				model.addAttribute("evaluationList", evaluationList);
				//获取该订单下所有的排单信息
				scheduling_record scheduling_record=new scheduling_record();
				scheduling_record.setScheduling_kb(work_order1.getKb_no());
				List<scheduling_record> scheduling_recordList=scheduling_recordService.select_Scheduling_record(scheduling_record);
				
				
				model.addAttribute("loginName", user.getUsername());
				model.addAttribute("scheduling_recordList", scheduling_recordList);
				if(work_order1.getType().equals("Injector")) {
					return "InjectorDeails";
				}else if(work_order1.getType().equals("Rail")) {
					return "RailDeails";
				}else if(work_order1.getType().equals("Nozzle")) {
					//进行列表数据的处理
					String nozzleList=work_order1.getOrder_describe();//新加的列表数据
					model.addAttribute("nozzleList", nozzleList);
					return "NozzleDealis";
				}else if(work_order1.getType().equals("Other")) {
					return "OtherDeails";
				}
			}
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		
		
		return "allOrderList";
	}
	
	
	/**
	 * taskpool删除排单
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value ="/delete_Order_id")
	@ResponseBody
	public Map<String,Object> delete_Order_id(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String id=request.getParameter("id");
		String kb_no=request.getParameter("kb_no");
		//查询该订单是否已经完成
		if(user!=null) {
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setScheduling_id(Integer.valueOf(id));
			scheduling_record.setScheduling_status("1");
			
			scheduling_record scheduling_record1=scheduling_recordService.getscheduling_record(scheduling_record);
			if(scheduling_record1!=null) {
				Integer s=scheduling_recordService.delete_order(scheduling_record1);
				if(s>0) {
					map.put("succ", 1);
					//获取此kb下的所以的排单
					scheduling_record scheduling_record2=new scheduling_record();
					scheduling_record2.setScheduling_kb(kb_no);
					
					List<scheduling_record> Scheduling_recordList1=scheduling_recordService.select_Scheduling_record(scheduling_record2);
					//获取此kb的订单
					work_order work_order2=new work_order();
					work_order2.setKb_no(kb_no);
					work_order work_order3=work_orderService.select_Order_Deails(work_order2);
					System.out.println("保存成功");
					map.put("error","1");
					map.put("Scheduling_recordList",Scheduling_recordList1);
					map.put("work_order",work_order3);
				}else {
					map.put("succ", -1);
				}
			
			}else {
				map.put("succ", -1);
			}
			
		}else {
			map.put("succ", -1);
		}
	
		return map;
	}
	
	/**
	 * 删除排单
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value ="/delete_Order")
	@ResponseBody
	public Map<String,Object> deleteOrder(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String id=request.getParameter("id");
		//查询该订单是否已经完成
		if(user!=null) {
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setScheduling_id(Integer.valueOf(id));
			scheduling_record.setScheduling_status("1");
			
			scheduling_record scheduling_record1=scheduling_recordService.getscheduling_record(scheduling_record);
			if(scheduling_record1!=null) {
				Integer s=scheduling_recordService.delete_order(scheduling_record1);
				if(s>0) {
					
					map.put("succ", 1);
				}else {
					map.put("succ", -1);
				}
			
			}else {
				map.put("succ", -1);
			}
			
		}else {
			map.put("succ", -1);
		}
	
		return map;
	}
	
	
	/**
	 * 关闭排单
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value ="/closeOrder")
	@ResponseBody
	public Map<String,Object> closeOrder(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String id=request.getParameter("id");
		//查询该订单是否已经完成
		System.out.println("查询该订单");
		if(user!=null) {
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setScheduling_id(Integer.valueOf(id));
			scheduling_record.setScheduling_status("1");
			
			scheduling_record scheduling_record1=scheduling_recordService.getscheduling_record(scheduling_record);
			if(scheduling_record1!=null) {
				Integer s=scheduling_recordService.close_order(scheduling_record1);
				if(s==1) {
					map.put("succ", 1);
					
					//进行邮件的发送
					
						//获取此kb的订单
						System.out.println("进入关单邮件");
						work_order work_order2=new work_order();
						work_order2.setKb_no(scheduling_record1.getScheduling_kb());
						work_order work_order3=work_orderService.select_Order_Deails(work_order2);
						String em="EPD_Lab_Service<"+user.getEmail()+">";
						List<String> order_placerList=userService.emailList(work_order3.getOrder_placer());//查询下单人
						//String order_placertext_C="亲，您的测试订单已完成!您可以在反馈页面对本次订单进行评价和建议，EPD实验室会认真对待你的评价和建议！";
						String order_placertext_E="Dear colleague: \n   Your test order is completed \n   Test bench: "+work_order3.getBench_name()+"\n   VA:"+work_order3.getVa_no()+" \n   KB:"+work_order3.getKb_no()+" \n   Part type:"+work_order3.getPart_type()+"\n   Customer/Project:"+work_order3.getCustomer_project()+" \n   Part quantity:"+work_order3.getPart_quantity()+" \n   Feedback: Please don’t hesitate to evaluate this task and give our proposal on feedback page \n   Route: Test lab online-> VA order-> task assigned->Search/modify \n \n \n \n \n   Best regards, \n   RBCD/EPD5 Lab Team";
						String order_placertext=order_placertext_E;
						sendMailByAsynchronous(em, order_placerList, "Your test order is completed by lab team",order_placertext );
						List<String> operatorList=userService.emailList(work_order3.getOperator());//查询操作者
						sendMailByAsynchronous(em, operatorList, " Your test order is completed by lab team",order_placertext );
						List<String> list=userService.administratorList();
						System.out.println(list.toString());
						sendMailByAsynchronous(em, list, " Your test order is completed by lab team",order_placertext );
					
					return map;
				}else {
					map.put("succ", -1);
					return map;
				}
			
			}else {
				map.put("succ", -1);
				return map;
			}
			
		}else {
			map.put("succ", -1);
			return map;
		}
	
		
	}
	public static void sendMailByAsynchronous(final String to, final List<String> from,final String title,final String text) { 
		new Thread(new Runnable() { public void run() { 
			try { 
				SendEmail.sendMail(to, from, title,text );
			} catch (Exception ex) { 
				
				}
			} 
		}).start();
		}

	/**
	 * 关闭排单
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value ="/createFile")
	@ResponseBody
	public Map<String,Object> createFile(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String va_no=request.getParameter("va_no");
		String kb_no=request.getParameter("kb_no");
		//查询该订单是否已经完成
		System.out.println("查询该订单");
		if(user!=null) {
			Calendar cale =Calendar.getInstance();
	        int year = cale.get(Calendar.YEAR); 
	       String url="//bosch.com/dfsrb/DfsCN/loc/Wx/SpecialData/ENG/EPD/va_task/VA_Task_Result/"+year+"/"+va_no+"/"+kb_no;
	       // String url="D:/dfsrb/DfsCN/loc/Wx/SpecialData/ENG/EPD/va_ftask/VA_fTask_fResult/"+year+"/"+va_no+"/"+kb_no;
	        File file = new File(url);//创建了一个对象 ==> 描述了一个路径
			System.out.println(file);
			System.out.println(file.exists());
			File desktopDir = FileSystemView.getFileSystemView() .getHomeDirectory();
			String desktopPath = desktopDir.getAbsolutePath();
			System.out.println("desktopPath:"+desktopPath);
			map.put("url",file);
			if(!file.exists()) {
				file.mkdirs();
				map.put("succ", 1);
//				  try {
//						System.out.println("本机的IP = " + InetAddress.getLocalHost());
//						  //Runtime.getRuntime().exec("cmd /c start explorer"+url);
//						
//			         // java.awt.Desktop.getDesktop().open(new File(url));
//			        } catch (IOException e) {
//			            e.printStackTrace();
//			        }
			}else {
//				  try {
//					  System.out.println("本机的IP = " + InetAddress.getLocalHost());
//					//  java.awt.Desktop.getDesktop().open(new File(url));
//			        } catch (IOException e) {
//			            e.printStackTrace();
//			        }
				map.put("succ", -2);
			}
		}else {
			map.put("succ", -1);
		}
			
		return map;
	}
	
	
	
	
}
