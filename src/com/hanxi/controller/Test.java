package com.hanxi.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hanxi.entity.Taijia;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.year_check;
import com.hanxi.service.TaijiaService;
import com.hanxi.service.UserService;

@Controller
public class Test {
	@Resource
	private TaijiaService taijiaService;
	@Resource
	private UserService userService;
	@RequestMapping("/test")
	public String test(){
		return "test";
	}
	
	@RequestMapping("/test1")
	public String test1(){
		return "test1";
	}
	
	@RequestMapping("/weixiuliebiao")
	public String weixiuliebiao(HttpServletRequest request){
		sys_user user = (sys_user) request.getSession().getAttribute("userMsg");
		if(user==null){
			return "syslogin";
		}else if("administrator".equals(user.getRole())) {
			return "weixiuliebiao";
		}else if("operator".equals(user.getRole())){
			return "weixiuliebiao";
		}else{
			return "pweixiuliebiao";
		}
		
	}
	

	@RequestMapping("/weixiuadd")
	public String weixiuadd(){
		return "weixiuadd";
	}

	@RequestMapping("/taijialiebiao")
	public String taijialiebiao(){
		return "taijialiebiao";
	}
	
	@RequestMapping("/shoudongliangju")
	public String shoudongliebiao(){
		return "shoudongliangju";
	}
	
	@RequestMapping("/celianggongju")
	public String celianggongju(){
		return "celianggongju";
	}
	@RequestMapping("/a")
	public String a(){
		return "a";
	}
	@RequestMapping("/b")
	public String b(){
		return "b";
	}
	@RequestMapping("/xiangqing1")
	public String xiangqing1(){
		return "xiangqing1";
	}
	@RequestMapping("/xiangqing2")
	public String xiangqing2(){
		return "xiangqing2";
	}
	@RequestMapping("/xiangqing3")
	public String xiangqing3(){
		return "xiangqing3";
	}
	@RequestMapping("/xiangqing4")
	public String xiangqing4(){
		return "xiangqing4";
	}
	@RequestMapping("/xiangqing5")
	public String xiangqing5(){
		return "xiangqing5";
	}
	@RequestMapping("/xiangqing6")
	public String xiangqing6(){
		return "xiangqing6";
	}
	@RequestMapping("/xiangqing7")
	public String xiangqing7(){
		return "xiangqing7";
	}
	@RequestMapping("/xiangqing8")
	public String xiangqing8(){
		return "xiangqing8";
	}
	@RequestMapping("/xiangqing9")
	public String xiangqing9(){
		return "xiangqing9";
	}
	@RequestMapping("/xiangqing10")
	public String xiangqing10(){
		return "xiangqing10";
	}
	@RequestMapping("/xiangqing11")
	public String xiangqing11(){
		return "xiangqing11";
	}
	
	@RequestMapping("/aa")
	public String aa(String user){
		System.out.println(user);
		return "weixiuleibiao";
	}
	
	@RequestMapping("/zengjiagongcha")
	public String zengjiagongcha(){
		return "zengjiagongcha";
	}
	
	@RequestMapping("/gongchaliebiao")
	public String gongchaliebiao(){
		return "gongchaliebiao";
	}
	@RequestMapping("/OnePage")
	public String OnePage(HttpServletRequest request){
		List<Taijia> taijias =taijiaService.findTaijia();
		SimpleDateFormat sdFormat1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdFormat2 = new SimpleDateFormat("yyyy-MM");
		SimpleDateFormat sdFormat3 = new SimpleDateFormat("yyyy");
		Date date = new Date();
		for (int i = 0; i < taijias.size(); i++) {
			// day
			daily_check daily_check = new daily_check();
			daily_check.setCheck_time(sdFormat1.format(date) + "%");
			// System.out.println(sdFormat1.format(date));
			daily_check.setBench_name(taijias.get(i).getTaijiamingcheng());
			daily_check day = taijiaService.findRijian(daily_check);
			// System.out.println(day);
			if (day == null) {
				taijias.get(i).setRijian(0);
			} else {
				if (day.getPower_supply().equals("2") || day.getTest_oil_level().equals("2")
						|| day.getHydraulic_oil_level().equals("2") || day.getAir_source_pressure().equals("2")
						|| day.getWater_coolant().equals("2") || day.getIndustrial_pc().equals("2")
						|| day.getSecurity_door().equals("2") || day.getInterlock().equals("2")
						|| day.getPipeline().equals("2") || day.getLacquer_tray().equals("2")
						|| day.getCleanliness_of_bench().equals("2") || day.getOil_mist().equals("2")) {
					taijias.get(i).setRijian(2);
				} else {
					taijias.get(i).setRijian(1);
				}
			}
			// month
			month_check month_check = new month_check();
			month_check.setCheck_time(sdFormat2.format(date));
			month_check.setBench_name(taijias.get(i).getTaijiamingcheng());
			month_check month = taijiaService.findYuejian(month_check);
			if (month == null) {
				taijias.get(i).setYuejian(0);
			} else {
				
					if (  month.getM_01().length()>0?month.getM_01().equals("2"):false
						||month.getM_02().length()>0?month.getM_02().equals("2"):false 
						||month.getM_03().length()>0?month.getM_03().equals("2"):false
						||month.getM_04().length()>0?month.getM_04().equals("2"):false 
						||month.getM_05().length()>0?month.getM_05().equals("2"):false) {
					taijias.get(i).setYuejian(2);
				} else {
					taijias.get(i).setYuejian(1);
				}
			}
			// year
			year_check year_check = new year_check();
			year_check.setYear(sdFormat3.format(date));
			year_check.setBench_name(taijias.get(i).getTaijiamingcheng());
			year_check year = taijiaService.findNianjian(year_check);
			if (year == null) {
				taijias.get(i).setNianjian(0);
			} else {
				
				   if (	   year.getY_01().length()>0?year.getY_01().equals("2"):false 
						|| year.getY_02().length()>0?year.getY_02().equals("2"):false 
						|| year.getY_03().length()>0?year.getY_03().equals("2"):false
						|| year.getY_04().length()>0?year.getY_04().equals("2"):false) {
					taijias.get(i).setNianjian(2);
				} else {
					taijias.get(i).setNianjian(1);
				}
			}
		}
		request.getSession().setAttribute("taijias", taijias);
		sys_user sys_user=new sys_user();
		Date date1=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String date2=sdf.format(date1);
		System.out.println(date2+"======");
		sys_user.setScheduling_date(date2);
		List<sys_user> sys_users =  userService.dailyOrder(sys_user);
		//System.out.println(sys_users.get(0).getScheduling_recordList().get(0).getTypeOrder());
		List<List<paid_leave>> paid_leaves = new ArrayList<List<paid_leave>>();
		for (sys_user sys_user2 : sys_users) {
			List<paid_leave> paid_leave = taijiaService.findtiaoxiu(sys_user2.getUsername());
			paid_leaves.add(paid_leave);
		}
		request.getSession().setAttribute("sys_users", sys_users);
		request.getSession().setAttribute("paid_leaves", paid_leaves);
		return "OnePage";
	}
	@RequestMapping("/biaoding")
	public String biaoding(){
		return "biaoding";
	}
	@RequestMapping("/celiangjieguoadd")
	public String celiangjieguoadd(){
		return "celiangjieguoadd";
	}
	@RequestMapping("/celiangtubiao")
	public String celiangtubiao(){
		return "celiangtubiao";
	}
}
