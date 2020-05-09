package com.hanxi.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import com.alibaba.fastjson.JSON;
import com.hanxi.entity.allOrderPage;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.evaluation;
import com.hanxi.entity.kb_record;
import com.hanxi.entity.month_check;
import com.hanxi.entity.nozzleList;
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
import com.hanxi.util.MathMoney;
import com.hanxi.util.SessionSave;



@Controller
@RequestMapping("/main")
public class WorkOrderController {
	@Autowired
	private Work_orderService work_orderService;
	@Autowired
	private UserService userService;
	@Autowired
	private VaRecordService vaRecordService;
	
	@Autowired
	private KbRecordService kbRecordService;
	@Autowired
	private Scheduling_recordService scheduling_recordService;
	@Autowired
	private EvaluationService evaluationService;
	
	
	@RequestMapping(value ="/getTaskPool")
	public String getTaskPool(Model model,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		
		if(user!=null) {
			System.out.println("进入开始getTaskPool");
			List<sys_user> list=userService.getoperator();
			List<sys_user> list1=userService.getoperator();
			String role=user.getRole();//该账号的身份权限
			model.addAttribute("role", role);
			model.addAttribute("work_orderList", list);
			model.addAttribute("userlist", list1);
			scheduling_record scheduling_record=new scheduling_record();
			scheduling_record.setWorkers("admin");
			List<scheduling_record> list2=scheduling_recordService.getoperators(scheduling_record);
			
		}else {
			model.addAttribute("error", "-1");
		}
	
		return "taskPool";
	}

	/**
	 * 弹框显示该订单的详情
	 */
	@RequestMapping("/taskPooldeails")
	@ResponseBody
	public Map<String,Object> taskPooldeails(Model model,HttpServletRequest request, HttpServletResponse response){
		Map<String,Object> map=new HashMap<String,Object>();
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
		String orderid=request.getParameter("orderid");
			work_order work_order=new work_order();
			work_order.setOrderid(Integer.valueOf(orderid));
			work_order work_order1=work_orderService.select_Order_Deails(work_order);
			if(!work_order1.getStatus().equals("0")&&!work_order1.getStatus().equals("1")) {
				map.put("error","-1");//该订单已拍完
			}else {
			//查询所有的操作人员
				List<sys_user> list=userService.getoperator();
				
				scheduling_record scheduling_record1=new scheduling_record();
				scheduling_record1.setScheduling_kb(work_order1.getKb_no());
				
				List<scheduling_record> Scheduling_recordList1=scheduling_recordService.select_Scheduling_record(scheduling_record1);
				//该订单未拍完
				map.put("Scheduling_recordList",Scheduling_recordList1);
				map.put("error","1");
				map.put("work_order", work_order1);
				map.put("sys_user_list", list);
			}
			
		}
		
		return map;
	}
	
	
	/**
	 * 跳转未排单详情
	 */
	@RequestMapping("/Deails")
	public String Deails(work_order work_order,Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			work_order work_order1=work_orderService.select_Order_Deails(work_order);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String is=sdf.format(work_order1.getIssue_date1());
			String d=sdf.format(work_order1.getDeadline1());
			work_order1.setIssue_date(is);
			work_order1.setDeadline(d);
			
			if(work_order1!=null) {
				model.addAttribute("work_order", work_order1);
				if(work_order1.getType().equals("Injector")) {
					return "InjectorOrderDeails";
				}else if(work_order1.getType().equals("Rail")) {
					return "RailOrderDeails";
				}else if(work_order1.getType().equals("Nozzle")) {
					//进行列表数据的处理
					String nozzleList=work_order1.getOrder_describe();//新加的列表数据
					model.addAttribute("nozzleList", nozzleList);
					return "NozzleOrderDealis";
				}else if(work_order1.getType().equals("Other")) {
					return "OtherOrderDeails";
				}
			}
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		
		
		return "allOrderList";
	}
	
	/**
	 * 跳转update订单详情
	 */
	@RequestMapping("/updateDeails")
	public String updateDeails(work_order work_order,Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			
			work_order.setStatus("0");
			work_order work_order1=work_orderService.select_Order_Deails(work_order);
			if(work_order1!=null) {
					/*if(!user.getUsername().equals(work_order1.getOrder_placer())) {
						model.addAttribute("operator", "error");
					}*/
					if(user.getRole().equals("operator")) {
						model.addAttribute("operator", "error1");//权限不足
					}
				//查询所有的操作者
				List<sys_user> operatorList=userService.operatorList();
				model.addAttribute("operatorList", operatorList);
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				String is=sdf.format(work_order1.getIssue_date1());
				String d=sdf.format(work_order1.getDeadline1());
				work_order1.setIssue_date(is);
				work_order1.setDeadline(d);
				work_order1.setRemark(SessionSave.HtmlToText(work_order1.getRemark()));
				model.addAttribute("work_order", work_order1);
				if(work_order1.getType().equals("Injector")) {
					return "updateInjectorOrderDeails";
				}else if(work_order1.getType().equals("Rail")) {
					return "updateRailOrderDeails";
				}else if(work_order1.getType().equals("Nozzle")) {
					//进行列表数据的处理
					String nozzleList=work_order1.getOrder_describe();//新加的列表数据
						model.addAttribute("nozzleList", nozzleList);
					return "updateNozzleOrderDealis";
				}else if(work_order1.getType().equals("Other")) {
					return "updateOtherOrderDeails";
				}
			}else {
				model.addAttribute("errors", "error");
			}
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		
		
		return "allOrderList";
	}
	
	@RequestMapping(value ="/updateOrder",method = RequestMethod.POST)
	@ResponseBody
	public String updateOrder(work_order work_order,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		System.out.println("进入开始111");
		
		if(user!=null) {
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println(work_order.toString());
			/*	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				 work_order.setDeadline1(sdf.parse(work_order.getDeadline()));
				 work_order.setIssue_date1(sdf.parse(work_order.getIssue_date()));
				 work_order.setOrder_placer(user.getUsername());*/
				
					work_order.setOrder_describe(request.getParameter("table"));
					 work_order.setRemark(SessionSave.Text2Html(work_order.getRemark()));
					SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
					 Date date=new Date();
					 
					 work_order.setDeadline1(sdf.parse(work_order.getDeadline()));
				 Integer count=work_orderService.update_work_order(work_order);
					if(count>0) {
						System.out.println("保存成功");
						return "success";
					}
			 }
		
		return "fail";
	}
	
	
	
	@RequestMapping(value ="/deleteOrder",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> deleteOrder(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		System.out.println("进入开始111");
		Map<String,Object> map=new HashMap<>();
		if(user!=null) {
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println("进入开始");
			
			if(user.getRole().equals("operator")) {
				map.put("role", "-1");//权限不足
			}else {
				String orderid=request.getParameter("orderid");
				String kb_no=request.getParameter("kb_no");
				work_order work_order=new work_order();
				work_order.setStatus("0");
				work_order.setKb_no(kb_no);
				work_order.setOrderid(Integer.valueOf(orderid));
				work_order work_order1=work_orderService.select_Order_Deails(work_order);
				if(work_order1!=null) {
					if(!user.getUsername().equals(work_order1.getOrder_placer())) {
						map.put("role", "-2");//不是自己下的订单
					}else {
						//进行订单的删除，以及kb号的回退
						Integer del=work_orderService.deleteOrder(work_order1);
						if(del>0) {
							map.put("succ", 1);//删除成功	
						}else {
							map.put("succ", -1);//删除失败
						}
					}
				}else {
					map.put("role", "-3");//该订单已有排单
				}
				
			}
			
			 }
		
		return map;
	}
	
	
	/**
	 * 跳转到未排单列表
	 * @return
	 */
	@RequestMapping("/modifyOrder")
	public String modifyOrder(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			/*if(user.getRole().equals("operator")){
				//身份权限不足
				model.addAttribute("role", "notRole");
			}else {*/
				//查询所有的工程师，以及管理员
				List<sys_user> noOperatorList=userService.noOperatorList();
				model.addAttribute("noOperatorList", noOperatorList);
			/*}*/
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		
		
		return "modifyOrderList";
	}
	
	@RequestMapping(value ="/modifyOrderList",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> modifyOrderList(work_order work_order,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		Map<String,Object> map=new HashMap<String,Object>();
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			List<work_order> list=work_orderService.select_work_order_list(work_order);
			Integer count=work_orderService.findWork_orderCount(work_order);
			 if(!list.isEmpty()) {
				 map.put("success", 1);
				 map.put("count", count);
				 map.put("username", user.getUsername());
				 map.put("work_orderList", list);
			 }else {
				 map.put("success", -1);
			 }
			
		}else {
			 map.put("success", -2);
		}
		return map;
	}
	
	
	
	
	
	/**
	 * 跳转到已经有了va号的下单
	 * @return
	 */
	@RequestMapping("/createVaOrder")
	public String createVaOrder(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		String va_no=request.getParameter("va_no");
		if(user!=null) {
			if(user.getRole().equals("operator")){
				//身份权限不足
				model.addAttribute("role", "notRole");
			}else {
				va_record va_record=new va_record();
				va_record.setVa_name(user.getUsername());
				va_record.setVa_worknum(user.getAccount());
				
				//查询该人员的VO号
			//	List<va_record> va_recordList=vaRecordService.select_va_record_list(va_record);
				//查询所有的工程师，以及管理员
				List<sys_user> noOperatorList=userService.noOperatorList();
				//查询所有的操作者
				List<sys_user> operatorList=userService.operatorList();
				
				//查询所有的该va下未使用的kb号
			//	List<kb_record> kb_recordList=kbRecordService.select_kb_record_list();
//				model.addAttribute("va_recordList", va_recordList);
				
				
				work_order work_order= work_orderService.selectVAOrderDeails(va_no);
				if(work_order!=null) {
					List<kb_record> kb_recordList=kbRecordService.select_va_kb_record_list(va_no);
					model.addAttribute("noOperatorList", noOperatorList);
					model.addAttribute("operatorList", operatorList);
					model.addAttribute("kb_recordList", kb_recordList);
					model.addAttribute("work_order", work_order);
				}else {
					model.addAttribute("abnormal", "abnormal");
				}
				
				
			}
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		return "createVaOrder";
	}
	
	
	
	
	/**
	 * 跳转下单
	 * @return
	 */
	@RequestMapping("/createOeder")
	public String createOeder(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			if(user.getRole().equals("operator")){
				//身份权限不足
				model.addAttribute("role", "notRole");
			}else {
				va_record va_record=new va_record();
				va_record.setVa_name(user.getUsername());
				va_record.setVa_worknum(user.getAccount());
				
				//查询该人员的VO号
				List<va_record> va_recordList=vaRecordService.select_va_record_list(va_record);
				//查询所有的工程师，以及管理员
				List<sys_user> noOperatorList=userService.noOperatorList();
				//查询所有的操作者
				List<sys_user> operatorList=userService.operatorList();
				
				//查询所有的未使用的kb号
			//	List<kb_record> kb_recordList=kbRecordService.select_kb_record_list();
				
				model.addAttribute("va_recordList", va_recordList);
				model.addAttribute("noOperatorList", noOperatorList);
				model.addAttribute("operatorList", operatorList);
				//model.addAttribute("kb_recordList", kb_recordList);
			}
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		return "createOeder";
	}
	


	
	

	@RequestMapping(value ="/insertOrder",method = RequestMethod.POST)
	@ResponseBody
	public String createOrder(work_order work_order,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		System.out.println("进入开始111");
		/*String[] args=request.getParameterValues("one");
		for(int i=0;i<args.length;i++) {
			System.out.println(args[i]);
		}*/
		if(user!=null) {
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println("进入开始");
			System.out.println(work_order.toString());
			System.out.println("json:"+request.getParameter("table"));
			 //先查询,该kb号是否被使用
			work_order work_order1=work_orderService.select_Order_Deails(work_order);
			 if(work_order1!=null) {
				 return "fail_kb";
			
			 }else {
				// System.out.println("work_order:"+Text2Html(work_order.getRemark()));
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				 Date date=new Date();
				 work_order.setRemark(SessionSave.Text2Html(work_order.getRemark()));
				 work_order.setDeadline1(sdf.parse(work_order.getDeadline()));
				 work_order.setIssue_date1(sdf.parse(work_order.getIssue_date()));
				 work_order.setOrder_placer(user.getUsername());
				 work_order.setCreate_time(date);
				 work_order.setOrder_describe(request.getParameter("table"));
				 Integer count=work_orderService.insert_work_order(work_order);
					if(count>0) {
						System.out.println("保存成功");
						
						Calendar cale =Calendar.getInstance();
				        int year = cale.get(Calendar.YEAR); 
				        sendCreateFile(year,work_order.getVa_no(),work_order.getKb_no());
						
						//发送邮件给管理员
						List<String> list=userService.administratorList();
						System.out.println(list.toString());
						String text_E="Dear Lab team:\n\n"+user.getUsername()+" create a new order, va:"+work_order.getVa_no()+";kb:"+work_order.getKb_no()+";";
						String text=text_E;
					
							String em="EPD_Lab_Service<"+user.getEmail()+">";
							//SendEmail.sendMail(em, list, " Test order is created",text );
							Scheduling_recordController.sendMailByAsynchronous(em, list, " Test order is created",text );
					
						return "success";
						
					
					}
					
			 }
			 
			
		}else {
			return "fail";
		}
	
		return "fail";
	}
	public static void sendCreateFile(final int year,final String va_no,final String kb_no) { 
		new Thread(new Runnable() { public void run() { 
			try { 
				    String url="//bosch.com/dfsrb/DfsCN/loc/Wx/SpecialData/ENG/EPD/va_task/VA_Task_Result/"+year+"/"+va_no+"/"+kb_no+"/Common data";
			    //  String url="D:/dfsrb/DfsCN/loc/Wx/SpecialData/ENG/EPD/va_ftask/VA_fTask_fResult/"+year+"/"+work_order.getVa_no()+"/"+work_order.getKb_no()+"/Common data";
			        
				   
				    File file = new File(url);//创建了一个对象 ==> 描述了一个路径
					System.out.println(file);
					System.out.println(file.exists());
					File desktopDir = FileSystemView.getFileSystemView() .getHomeDirectory();
					String desktopPath = desktopDir.getAbsolutePath();
					System.out.println("desktopPath:"+desktopPath);
					if(!file.exists()) {
						file.mkdirs();
					}
			} catch (Exception ex) { 
				
				}
			} 
		}).start();
		}
	

	
	@RequestMapping(value ="/insertVaNo",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> insertVaNo(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<String,Object>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		va_record va_record=new va_record();
		
		if(user!=null) {
			String role=user.getRole();
			//查询当前数据库中的最大值
		if(role.equals("administrator")||role.equals("engineer")) {
			try {
				
				
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
				SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date1=Calendar.getInstance().getTime();
				String timeStr=sdf.format(date1);//年
				va_record.setYear(timeStr);
				String maxnum=vaRecordService.select_va_record_count(va_record);
				if(maxnum==null||maxnum.equals("")) {
					maxnum=timeStr+String.format("%05d", Integer.valueOf(0));
				}
				
				if(maxnum!=null) {
					 maxnum=MathMoney.add(maxnum,"1");
					 String fansidStr=maxnum;
					/* if(maxnum.length()<5) {
						 fansidStr=String.format("%05d", Integer.valueOf(fansidStr));
					 }*/
					
					 
					String str="VA"+fansidStr;
					 va_record.setVa_no(str);
					 va_record.setNum(Integer.valueOf(maxnum));
					 va_record.setVa_name(user.getUsername());
					 va_record.setVa_worknum(user.getAccount());
					 va_record.setYear(timeStr);
					 Date date=new Date();
					 va_record.setVa_create(sdf1.format(date));
					 Integer num=vaRecordService.insert_va_record(va_record);
					 if(num>0) {
						 map.put("succ", "success");
						 map.put("username", user.getUsername());
						
					 }
					
				}else {
					map.put("succ", "fail");
				}
				}catch (Exception e) {
					System.out.println("错误实行");
					map.put("fail", "-1");
				}
		}else {
			map.put("fail", "-5");	//权限不足
		}
			
			
			
			 
			
		}else {
			map.put("succ", "fail");
		}
	
		return map;
	}
	
	
	@RequestMapping(value ="/insertKbNo",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> insertKbNo(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<String,Object>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		kb_record kb_record=new kb_record();
		String vaNo=request.getParameter("va_no");
		if(user!=null) {
			//查询当前数据库中的最大值
			String role=user.getRole();
			//查询当前数据库中的最大值
		if(role.equals("administrator")||role.equals("engineer")) {
			try {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
			SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date1=Calendar.getInstance().getTime();
			String timeStr=sdf.format(date1);//年
			kb_record.setKb_year(timeStr);
			String maxnum=kbRecordService.select_kb_record_count(kb_record);
			if(maxnum==null||maxnum.equals("")) {
				maxnum=timeStr+String.format("%06d", Integer.valueOf(0));
			}
			
			if(maxnum!=null) {
				 maxnum=MathMoney.add(maxnum,"1");
				 String fansidStr=maxnum;
				/* if(maxnum.length()<5) {
					 fansidStr=String.format("%05d", Integer.valueOf(fansidStr));
				 }*/
				
				 
				String str="KB"+fansidStr;
				 kb_record.setKb_no(str);
				 kb_record.setKb_num(Integer.valueOf(maxnum));
				 kb_record.setKb_name(user.getUsername());
				 kb_record.setKb_account(user.getAccount());
				 kb_record.setKb_year(timeStr);
				 kb_record.setKb_va(vaNo);
				 Date date=new Date();
				 kb_record.setCreate_time(sdf1.format(date));
				 Integer num=kbRecordService.insert_kb_record(kb_record);
				 if(num>0) {
					 
					//查询所有的未使用的kb号
					List<kb_record> kb_recordList=kbRecordService.select_va_kb_record_list(vaNo);
					map.put("kb_recordList",kb_recordList);
					map.put("succ", "success");
				 }
				
			}else {
				map.put("succ", -1);
			}
			}catch (Exception e) {
				System.out.println("错误实行");
				map.put("fail", "-1");
			}
			}else {
				map.put("fail", "-5");	//权限不足
			}
			 
			
		}else {
			map.put("succ", "fail");
		}
	
		return map;
	}
	
	
	
	
	@RequestMapping(value ="/selectVaNo",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> selectVaNo(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		HttpSession session = request.getSession();
		Map<String,Object> map=new HashMap<String,Object>();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		va_record va_record=new va_record();
		if(user!=null) {
			String va_name=request.getParameter("name");
			if(va_name.equals("-1")) {
				va_record.setVa_name(user.getUsername());
			}else {
				va_record.setVa_name(va_name);	
			}
			//查询当前数据库中的最大值
			List<va_record> list= vaRecordService.select_va_record_list(va_record);
			if(list.isEmpty()){
				map.put("list", -1);
				
			}else {
				map.put("list", list);
				
			}
			
		}else {
			map.put("succ", "fail");
		}
	
		return map;
	}
	
	
	/**
	 * 跳转到已完成列表
	 * @return
	 */
	@RequestMapping("/performOrder")
	public String closeOrder(Model model,HttpServletRequest request, HttpServletResponse response){
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
		
		
		return "closeOrderList";
	}
	
	@RequestMapping(value ="/performOrderList",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> closeOrderList(work_order work_order,HttpServletRequest request, HttpServletResponse response) throws ParseException{
		Map<String,Object> map=new HashMap<String,Object>();
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			List<work_order> list=work_orderService.select_performWork_order_list(work_order);
			Integer count=work_orderService.findPerformWork_orderCount(work_order);
			 if(!list.isEmpty()) {
				 map.put("success", 1);
				 map.put("count", count);
				 map.put("username", user.getUsername());
				 map.put("work_orderList", list);
			 }else {
				 map.put("success", -1);
			 }
			
		}else {
			 map.put("success", -2);
		}
		return map;
	}
	
	@RequestMapping(value ="/insert_evaluation",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> insert_evaluation(HttpServletRequest request, HttpServletResponse response) throws ParseException{
		Map<String,Object> map=new HashMap<String,Object>();
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			evaluation evaluation=new evaluation();
			String kbId=request.getParameter("kbId");
			String evaluation1=request.getParameter("evaluation");
			evaluation.setEvaluation_kb(kbId);
			evaluation.setEvaluation_name(user.getUsername());
			evaluation.setEvaluation(evaluation1);
			evaluation.setEvaluation_time(new Date());
			Integer count=evaluationService.insert_evaluation(evaluation);
			if(count==1) {
				 map.put("success", 1);
				 map.put("username", user.getUsername());
			}else {
				 map.put("success", 1);
				 map.put("username", user.getUsername());
			}
				
			 
			
		}else {
			 map.put("success", -2);
		}
		return map;
	}
	
	
	//全部数据列表的跳转
	
	@RequestMapping("/allOrderList")
	public String allOrderList(Model model,HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(user!=null) {
			/*if(user.getRole().equals("operator")){
				//身份权限不足
				model.addAttribute("role", "notRole");
			}else {*/
				//查询所有的工程师，以及管理员
				List<sys_user> noOperatorList=userService.AllList();
				
						va_record va_record=new va_record();
						va_record.setVa_name(user.getUsername());	
					//查询当前数据库中的最大值
					List<va_record> list= vaRecordService.select_va_record_list(va_record);
				
				model.addAttribute("noOperatorList", noOperatorList);
				model.addAttribute("name", user.getUsername());
				model.addAttribute("vaList",list);//该人员下的va，号
				
			/*}*/
		}else {
			//登录失败
			model.addAttribute("error", "error");
		}
		
		return "allOrderList";
	}
	//全部数据列表
	
	
	@RequestMapping("/findAllOrderList")
	@ResponseBody
	public Map<String, Object> findAllOrderList(HttpServletRequest request,allOrderPage allOrderPage) throws ParseException{
		Map<String, Object> maps = new HashMap<String, Object>();
		List<work_order> work_orderList = work_orderService.findAllOrderList(allOrderPage);
		int count = work_orderService.findAllOrderListCount(allOrderPage);
		//进行订单状态的处理
		HttpSession session = request.getSession();
		sys_user user = (sys_user) session.getAttribute("userMsg");
		if(work_orderList.size()>0) {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			for(int i=0;i<work_orderList.size();i++) {
				
				
				 work_orderList.get(i).setDeadline1(sdf.parse(work_orderList.get(i).getDeadline()));
				 work_orderList.get(i).setIssue_date1(sdf.parse(work_orderList.get(i).getIssue_date()));
				if(work_orderList.get(i).getStatus().equals("0")) {//未派单的情况
					work_orderList.get(i).setStatus_e("Created");
					if(work_orderList.get(i).getOrder_placer().equals(user.getUsername())||user.getRole().equals("administrator")) {
						//代表是当前登陆人员下的单,或者该人员是管理员
						work_orderList.get(i).setLogin_role_all("1");
					}else {
						work_orderList.get(i).setLogin_role_all("0");
					}
				}else if(work_orderList.get(i).getStatus().equals("1")) {
					work_orderList.get(i).setStatus_e("In operation");
					work_orderList.get(i).setLogin_role_all("0");
				}else if(work_orderList.get(i).getStatus().equals("2")){
					work_orderList.get(i).setStatus_e("Planned");
					work_orderList.get(i).setLogin_role_all("0");
				}else if(work_orderList.get(i).getStatus().equals("3")) {
					work_orderList.get(i).setStatus_e("Completed");
					work_orderList.get(i).setLogin_role_all("0");
				}
			}
		}
		
		  	maps.put("msg","");
		    maps.put("count",count);
		    maps.put("data",work_orderList);
		    maps.put("code", 0);
		return maps;
	}
	
	
	
	@RequestMapping("/selectVANO")
	@ResponseBody
	public Map<String, Object> selectVANO(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> maps = new HashMap<String, Object>();
		String va_no=request.getParameter("vaNo");
		work_order work_order= work_orderService.selectVAOrderDeails(va_no);
		if(work_order!=null) {
			//查询该va下的kb号
			maps.put("work_order",work_order);
			List<kb_record> kb_recordList=kbRecordService.select_va_kb_record_list(va_no);
			maps.put("succ",1);
			maps.put("kb_recordList",kb_recordList);
		}else {
			maps.put("succ",-1);
		}
		
		
		return maps;
	}
	
	
}
