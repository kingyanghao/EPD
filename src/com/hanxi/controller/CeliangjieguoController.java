package com.hanxi.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hanxi.entity.Celiangjieguo;
import com.hanxi.entity.Celiangtubiao;
import com.hanxi.entity.Gongcha;
import com.hanxi.entity.sys_user;
import com.hanxi.service.CeliangjieguoService;
import com.hanxi.service.WeixiuService;


@Controller
@RequestMapping("/celiangjieguo")
public class CeliangjieguoController {
	@Resource
	private CeliangjieguoService celiangjieguoService;
	@Resource
	private WeixiuService weixiuService;
	
	@RequestMapping("/celiangExcel")
	@ResponseBody
	public List<Celiangjieguo> celiangExcel(@RequestParam("file")MultipartFile file,HttpServletRequest request,String selectt,String test_bench) throws IOException{
		Celiangjieguo cc = new Celiangjieguo();
		cc.setSelectt(selectt);
		cc.setTest_bench(test_bench);
		System.out.println("selectt"+selectt+"test_bench"+test_bench);
		List<Celiangjieguo> celiangjieguos = celiangjieguoService.readExcel(file.getInputStream(), cc);
		return celiangjieguos;
	}
	@RequestMapping("/celiangtubiao")
	public String celiangtubiao(HttpServletRequest request){
		sys_user user = (sys_user) request.getSession().getAttribute("userMsg");
		if(user==null){
			return "syslogin";
		}else if("administrator".equals(user.getRole())) {
			return "celiangtubiao";
		}else if("operator".equals(user.getRole())){
			return "celiangtubiao";
		}else{
			return "pceliangtubiao";
		}
	}
	@RequestMapping("/celiangjieguoAdd")
	public String celiangjieguoAdd(HttpServletRequest request, @RequestParam MultipartFile file,String test_bench,String selectt,String operater,String tty) throws IOException, ParseException, AddressException, MessagingException{
		System.out.println("开始导入的方法"+file.getOriginalFilename());
		Celiangjieguo cc = new Celiangjieguo();
		cc.setTest_bench(test_bench);
		cc.setSelectt(selectt);
		List<Celiangjieguo> celiangjieguos = celiangjieguoService.readExcel(file.getInputStream(),cc);
		Celiangtubiao celiangtubiao = new Celiangtubiao();
		int in =1;
		SimpleDateFormat sDateFormat=new SimpleDateFormat("yyyy-MM-dd"); 
		for (Celiangjieguo celiangjieguo : celiangjieguos) {
			System.out.println(celiangjieguo.getOil_point());
			celiangjieguo.setTest_bench(test_bench);
			celiangjieguo.setOperater(operater);
			celiangjieguo.setSelectt(selectt);
			celiangjieguo.setCejieshijian(sDateFormat.parse(tty));
			celiangjieguos.get(in-1).setInjector("Nr."+in);
			in++;
		}
		double avgtest_point1=0;
		double avgtest_point2=0;
		double avgtest_point3=0;
		double avgtest_point4=0;
		double avgtest_point5=0;
		double avgtest_point6=0;
		double avgtest_point7=0;
		double avgtest_point8=0;
		double avgoil_point=0;
		for(int i =0;i<celiangjieguos.size();i++){
			if(celiangjieguos.get(i).getTest_point1()!=null){
			avgtest_point1+=Double.parseDouble(celiangjieguos.get(i).getTest_point1());
			}
			if(celiangjieguos.get(i).getTest_point2()!=null){
			avgtest_point2+=Double.parseDouble(celiangjieguos.get(i).getTest_point2());
			}
			if(celiangjieguos.get(i).getTest_point3()!=null){
			avgtest_point3+=Double.parseDouble(celiangjieguos.get(i).getTest_point3());
			}
			if(celiangjieguos.get(i).getTest_point4()!=null){
			avgtest_point4+=Double.parseDouble(celiangjieguos.get(i).getTest_point4());
			}
			if(celiangjieguos.get(i).getTest_point5()!=null){
			avgtest_point5+=Double.parseDouble(celiangjieguos.get(i).getTest_point5());
			}
			if(celiangjieguos.get(i).getTest_point6()!=null){
			avgtest_point6+=Double.parseDouble(celiangjieguos.get(i).getTest_point6());
			}
			if(celiangjieguos.get(i).getTest_point7()!=null){
			avgtest_point7+=Double.parseDouble(celiangjieguos.get(i).getTest_point7());
			}
			if(celiangjieguos.get(i).getTest_point8()!=null){
			avgtest_point8+=Double.parseDouble(celiangjieguos.get(i).getTest_point8());
			}
			if(celiangjieguos.get(i).getOil_point()!=null){
			avgoil_point+=Double.parseDouble(celiangjieguos.get(i).getOil_point());
			}
		}
		Celiangjieguo ce = new Celiangjieguo();
		ce.setSelectt(selectt);
		ce.setTest_bench(test_bench);
		Gongcha gongcha = celiangjieguoService.findGongchatubiao(ce);
		if(gongcha.getNormal1()!=null){
			celiangtubiao.setPoint1_Normal(gongcha.getNormal1());
			celiangtubiao.setPoint1_TL(gongcha.getTl1());
			celiangtubiao.setPoint1_TH(gongcha.getTh1());
			celiangtubiao.setPoint1_ESS(gongcha.getEss1());
			avgtest_point1/=celiangjieguos.size();
			avgtest_point1-=gongcha.getEss1();
			celiangtubiao.setAvgtest_point1(avgtest_point1);
		}
		if(gongcha.getNormal2()!=null){
		celiangtubiao.setPoint2_Normal(gongcha.getNormal2());
		celiangtubiao.setPoint2_TL(gongcha.getTl2());
		celiangtubiao.setPoint2_TH(gongcha.getTh2());
		celiangtubiao.setPoint2_ESS(gongcha.getEss2());
		avgtest_point2/=celiangjieguos.size();
		avgtest_point2-=gongcha.getEss2();
		celiangtubiao.setAvgtest_point2(avgtest_point2);
		}
		if(gongcha.getNormal3()!=null){
		celiangtubiao.setPoint3_Normal(gongcha.getNormal3());
		celiangtubiao.setPoint3_TL(gongcha.getTl3());
		celiangtubiao.setPoint3_TH(gongcha.getTh3());
		celiangtubiao.setPoint3_ESS(gongcha.getEss3());
		avgtest_point3/=celiangjieguos.size();
		avgtest_point3-=gongcha.getEss3();
		celiangtubiao.setAvgtest_point3(avgtest_point3);
		}
		if(gongcha.getNormal4()!=null){
		celiangtubiao.setPoint4_Normal(gongcha.getNormal4());
		celiangtubiao.setPoint4_TL(gongcha.getTl4());
		celiangtubiao.setPoint4_TH(gongcha.getTh4());
		celiangtubiao.setPoint4_ESS(gongcha.getEss4());
		avgtest_point4/=celiangjieguos.size();
		avgtest_point4-=gongcha.getEss4();
		celiangtubiao.setAvgtest_point4(avgtest_point4);
		}
		if(gongcha.getNormal5()!=null){
		celiangtubiao.setPoint5_Normal(gongcha.getNormal5());
		celiangtubiao.setPoint5_TL(gongcha.getTl5());
		celiangtubiao.setPoint5_TH(gongcha.getTh5());
		celiangtubiao.setPoint5_ESS(gongcha.getEss5());
		avgtest_point5/=celiangjieguos.size();
		avgtest_point5-=gongcha.getEss5();
		celiangtubiao.setAvgtest_point5(avgtest_point5);
		}
		if(gongcha.getNormal6()!=null){
		celiangtubiao.setPoint6_Normal(gongcha.getNormal6());
		celiangtubiao.setPoint6_TL(gongcha.getTl6());
		celiangtubiao.setPoint6_TH(gongcha.getTh6());
		celiangtubiao.setPoint6_ESS(gongcha.getEss6());
		avgtest_point6/=celiangjieguos.size();
		avgtest_point6-=gongcha.getEss6();
		celiangtubiao.setAvgtest_point6(avgtest_point6);
		}
		if(gongcha.getNormal7()!=null){
		celiangtubiao.setPoint7_Normal(gongcha.getNormal7());
		celiangtubiao.setPoint7_TL(gongcha.getTl7());
		celiangtubiao.setPoint7_TH(gongcha.getTh7());
		celiangtubiao.setPoint7_ESS(gongcha.getEss7());
		avgtest_point7/=celiangjieguos.size();
		avgtest_point7-=gongcha.getEss7();
		celiangtubiao.setAvgtest_point7(avgtest_point7);
		}
		if(gongcha.getNormal8()!=null){
		celiangtubiao.setPoint8_Normal(gongcha.getNormal8());
		celiangtubiao.setPoint8_TL(gongcha.getTl8());
		celiangtubiao.setPoint8_TH(gongcha.getTh8());
		celiangtubiao.setPoint8_ESS(gongcha.getEss8());
		avgtest_point8/=celiangjieguos.size();
		avgtest_point8-=gongcha.getEss8();
		celiangtubiao.setAvgtest_point8(avgtest_point8);
		}
		if(gongcha.getNormal9()!=null){
		celiangtubiao.setOil_Normal(gongcha.getNormal9());
		celiangtubiao.setOil_TL(gongcha.getTl9());
		celiangtubiao.setOil_TH(gongcha.getTh9());
		celiangtubiao.setOil_ESS(gongcha.getEss9());
		avgoil_point/=celiangjieguos.size();
		avgoil_point-=gongcha.getEss9();
		celiangtubiao.setAvgoil_point(avgoil_point);
		}
		
		
		celiangtubiao.setAvgtest_bench(celiangjieguos.get(0).getTest_bench());
		celiangtubiao.setAvgcejieshijian(celiangjieguos.get(0).getCejieshijian());
		celiangtubiao.setAvgselectt(celiangjieguos.get(0).getSelectt());
		celiangtubiao.setAvgoperater(celiangjieguos.get(0).getOperater());
		celiangjieguoService.delce(celiangtubiao);
		celiangjieguoService.celiangtubiao(celiangtubiao);
		celiangjieguoService.celiangjieguoAdd(celiangjieguos);
		
		if(		 celiangtubiao.getAvgtest_point1()!=null&&
				 celiangtubiao.getAvgtest_point2()!=null&&
				 celiangtubiao.getAvgtest_point3()!=null&&
			   	 celiangtubiao.getAvgtest_point4()!=null&&
				 celiangtubiao.getAvgtest_point5()!=null&&
				 celiangtubiao.getAvgtest_point6()!=null&&
				 celiangtubiao.getAvgtest_point7()!=null&&
				 celiangtubiao.getAvgtest_point8()!=null&&
				 celiangtubiao.getAvgoil_point()!=null
				){
		if(		celiangtubiao.getAvgtest_point1()<=celiangtubiao.getPoint1_TH()&&celiangtubiao.getAvgtest_point1()>=celiangtubiao.getPoint1_TL()&&
				celiangtubiao.getAvgtest_point2()<=celiangtubiao.getPoint2_TH()&&celiangtubiao.getAvgtest_point2()>=celiangtubiao.getPoint2_TL()&&
				celiangtubiao.getAvgtest_point3()<=celiangtubiao.getPoint3_TH()&&celiangtubiao.getAvgtest_point3()>=celiangtubiao.getPoint3_TL()&&
				celiangtubiao.getAvgtest_point4()<=celiangtubiao.getPoint4_TH()&&celiangtubiao.getAvgtest_point4()>=celiangtubiao.getPoint4_TL()&&
				celiangtubiao.getAvgtest_point5()<=celiangtubiao.getPoint5_TH()&&celiangtubiao.getAvgtest_point5()>=celiangtubiao.getPoint5_TL()&&
				celiangtubiao.getAvgtest_point6()<=celiangtubiao.getPoint6_TH()&&celiangtubiao.getAvgtest_point6()>=celiangtubiao.getPoint6_TL()&&
				celiangtubiao.getAvgtest_point7()<=celiangtubiao.getPoint7_TH()&&celiangtubiao.getAvgtest_point7()>=celiangtubiao.getPoint7_TL()&&
				celiangtubiao.getAvgtest_point8()<=celiangtubiao.getPoint8_TH()&&celiangtubiao.getAvgtest_point8()>=celiangtubiao.getPoint8_TL()&&
				celiangtubiao.getAvgoil_point()<=celiangtubiao.getOil_TH()&&celiangtubiao.getAvgoil_point()>=celiangtubiao.getOil_TL())
			{
			}else{
			   List<String> emails= weixiuService.weixiuEmail();
		       sys_user a = (sys_user)request.getSession().getAttribute("userMsg");
		       if(emails.size()>0&&a.getEmail()!=null){
		       //System.out.println(a.getEmail()+"sddsadsad");
		       SendEmail.sendMail("EPD_Lab_Service<"+a.getEmail()+">",emails,"Control system test result is out of tolerance", celiangtubiao.getAvgcejieshijian()+celiangtubiao.getAvgtest_bench()+celiangtubiao.getAvgselectt()+"  measurement result is out of tolerance , please check it!");
		       }
			}
		}else if(celiangtubiao.getAvgtest_point1()!=null&&
				 celiangtubiao.getAvgtest_point2()!=null&&
				 celiangtubiao.getAvgtest_point3()!=null&&
			   	 celiangtubiao.getAvgtest_point4()!=null&&
				 celiangtubiao.getAvgtest_point5()!=null&&
				 celiangtubiao.getAvgtest_point6()!=null&&
				 celiangtubiao.getAvgtest_point7()!=null&&
				 celiangtubiao.getAvgoil_point()!=null
				){
		if(		celiangtubiao.getAvgtest_point1()<=celiangtubiao.getPoint1_TH()&&celiangtubiao.getAvgtest_point1()>=celiangtubiao.getPoint1_TL()&&
				celiangtubiao.getAvgtest_point2()<=celiangtubiao.getPoint2_TH()&&celiangtubiao.getAvgtest_point2()>=celiangtubiao.getPoint2_TL()&&
				celiangtubiao.getAvgtest_point3()<=celiangtubiao.getPoint3_TH()&&celiangtubiao.getAvgtest_point3()>=celiangtubiao.getPoint3_TL()&&
				celiangtubiao.getAvgtest_point4()<=celiangtubiao.getPoint4_TH()&&celiangtubiao.getAvgtest_point4()>=celiangtubiao.getPoint4_TL()&&
				celiangtubiao.getAvgtest_point5()<=celiangtubiao.getPoint5_TH()&&celiangtubiao.getAvgtest_point5()>=celiangtubiao.getPoint5_TL()&&
				celiangtubiao.getAvgtest_point6()<=celiangtubiao.getPoint6_TH()&&celiangtubiao.getAvgtest_point6()>=celiangtubiao.getPoint6_TL()&&
				celiangtubiao.getAvgtest_point7()<=celiangtubiao.getPoint7_TH()&&celiangtubiao.getAvgtest_point7()>=celiangtubiao.getPoint7_TL()&&
				celiangtubiao.getAvgoil_point()<=celiangtubiao.getOil_TH()&&celiangtubiao.getAvgoil_point()>=celiangtubiao.getOil_TL())
			{
			}else{
			   List<String> emails= weixiuService.weixiuEmail();
		       sys_user a = (sys_user)request.getSession().getAttribute("userMsg");
		       if(emails.size()>0&&a.getEmail()!=null){
		       //System.out.println(a.getEmail()+"sddsadsad");
			       SendEmail.sendMail("EPD_Lab_Service<"+a.getEmail()+">",emails,"Control system test result is out of tolerance", celiangtubiao.getAvgcejieshijian()+celiangtubiao.getAvgtest_bench()+celiangtubiao.getAvgselectt()+"measurement result is out of tolerance , please check it!");
		       }
			}
		}else if(celiangtubiao.getAvgtest_point1()!=null&&
				 celiangtubiao.getAvgtest_point2()!=null&&
				 celiangtubiao.getAvgtest_point3()!=null&&
			   	 celiangtubiao.getAvgtest_point4()!=null&&
				 celiangtubiao.getAvgtest_point5()!=null&&
				 celiangtubiao.getAvgtest_point6()!=null&&
				 celiangtubiao.getAvgoil_point()!=null
				){
		if(		celiangtubiao.getAvgtest_point1()<=celiangtubiao.getPoint1_TH()&&celiangtubiao.getAvgtest_point1()>=celiangtubiao.getPoint1_TL()&&
				celiangtubiao.getAvgtest_point2()<=celiangtubiao.getPoint2_TH()&&celiangtubiao.getAvgtest_point2()>=celiangtubiao.getPoint2_TL()&&
				celiangtubiao.getAvgtest_point3()<=celiangtubiao.getPoint3_TH()&&celiangtubiao.getAvgtest_point3()>=celiangtubiao.getPoint3_TL()&&
				celiangtubiao.getAvgtest_point4()<=celiangtubiao.getPoint4_TH()&&celiangtubiao.getAvgtest_point4()>=celiangtubiao.getPoint4_TL()&&
				celiangtubiao.getAvgtest_point5()<=celiangtubiao.getPoint5_TH()&&celiangtubiao.getAvgtest_point5()>=celiangtubiao.getPoint5_TL()&&
				celiangtubiao.getAvgtest_point6()<=celiangtubiao.getPoint6_TH()&&celiangtubiao.getAvgtest_point6()>=celiangtubiao.getPoint6_TL()&&
				celiangtubiao.getAvgoil_point()<=celiangtubiao.getOil_TH()&&celiangtubiao.getAvgoil_point()>=celiangtubiao.getOil_TL())
			{
			}else{
			   List<String> emails= weixiuService.weixiuEmail();
		       sys_user a = (sys_user)request.getSession().getAttribute("userMsg");
		       if(emails.size()>0&&a.getEmail()!=null){
		       //System.out.println(a.getEmail()+"sddsadsad");
			       SendEmail.sendMail("EPD_Lab_Service<"+a.getEmail()+">",emails,"Control system test result is out of tolerance", celiangtubiao.getAvgcejieshijian()+celiangtubiao.getAvgtest_bench()+celiangtubiao.getAvgselectt()+"measurement result is out of tolerance , please check it!");
		       }
			}
		}else if(celiangtubiao.getAvgtest_point1()!=null&&
				 celiangtubiao.getAvgtest_point2()!=null&&
				 celiangtubiao.getAvgtest_point3()!=null&&
			   	 celiangtubiao.getAvgtest_point4()!=null&&
				 celiangtubiao.getAvgtest_point5()!=null&&
				 celiangtubiao.getAvgoil_point()!=null
				){
		if(		celiangtubiao.getAvgtest_point1()<=celiangtubiao.getPoint1_TH()&&celiangtubiao.getAvgtest_point1()>=celiangtubiao.getPoint1_TL()&&
				celiangtubiao.getAvgtest_point2()<=celiangtubiao.getPoint2_TH()&&celiangtubiao.getAvgtest_point2()>=celiangtubiao.getPoint2_TL()&&
				celiangtubiao.getAvgtest_point3()<=celiangtubiao.getPoint3_TH()&&celiangtubiao.getAvgtest_point3()>=celiangtubiao.getPoint3_TL()&&
				celiangtubiao.getAvgtest_point4()<=celiangtubiao.getPoint4_TH()&&celiangtubiao.getAvgtest_point4()>=celiangtubiao.getPoint4_TL()&&
				celiangtubiao.getAvgtest_point5()<=celiangtubiao.getPoint5_TH()&&celiangtubiao.getAvgtest_point5()>=celiangtubiao.getPoint5_TL()&&
				celiangtubiao.getAvgoil_point()<=celiangtubiao.getOil_TH()&&celiangtubiao.getAvgoil_point()>=celiangtubiao.getOil_TL())
			{
			}else{
			   List<String> emails= weixiuService.weixiuEmail();
		       sys_user a = (sys_user)request.getSession().getAttribute("userMsg");
		       if(emails.size()>0&&a.getEmail()!=null){
		       //System.out.println(a.getEmail()+"sddsadsad");
			       SendEmail.sendMail("EPD_Lab_Service<"+a.getEmail()+">",emails,"Control system test result is out of tolerance", celiangtubiao.getAvgcejieshijian()+celiangtubiao.getAvgtest_bench()+celiangtubiao.getAvgselectt()+"measurement result is out of tolerance , please check it!");
		       }
			}
		}else if(celiangtubiao.getAvgtest_point1()!=null&&
				 celiangtubiao.getAvgtest_point2()!=null&&
				 celiangtubiao.getAvgtest_point3()!=null&&
			   	 celiangtubiao.getAvgtest_point4()!=null&&
				 celiangtubiao.getAvgoil_point()!=null
				){
		if(		celiangtubiao.getAvgtest_point1()<=celiangtubiao.getPoint1_TH()&&celiangtubiao.getAvgtest_point1()>=celiangtubiao.getPoint1_TL()&&
				celiangtubiao.getAvgtest_point2()<=celiangtubiao.getPoint2_TH()&&celiangtubiao.getAvgtest_point2()>=celiangtubiao.getPoint2_TL()&&
				celiangtubiao.getAvgtest_point3()<=celiangtubiao.getPoint3_TH()&&celiangtubiao.getAvgtest_point3()>=celiangtubiao.getPoint3_TL()&&
				celiangtubiao.getAvgtest_point4()<=celiangtubiao.getPoint4_TH()&&celiangtubiao.getAvgtest_point4()>=celiangtubiao.getPoint4_TL()&&
				celiangtubiao.getAvgoil_point()<=celiangtubiao.getOil_TH()&&celiangtubiao.getAvgoil_point()>=celiangtubiao.getOil_TL())
			{
			}else{
			   List<String> emails= weixiuService.weixiuEmail();
		       sys_user a = (sys_user)request.getSession().getAttribute("userMsg");
		       if(emails.size()>0&&a.getEmail()!=null){
		       //System.out.println(a.getEmail()+"sddsadsad");
			       SendEmail.sendMail("EPD_Lab_Service<"+a.getEmail()+">",emails,"Control system test result is out of tolerance", celiangtubiao.getAvgcejieshijian()+celiangtubiao.getAvgtest_bench()+celiangtubiao.getAvgselectt()+"measurement result is out of tolerance , please check it!");
		       }
			}
		}
		return "celiangtubiao";
	}
	@RequestMapping("/findCeliangtubiao")
	@ResponseBody
	public Map<String, Object> findCeliangjieguo(Celiangjieguo celiangjieguo,String test_point,HttpServletRequest request){
		List<Celiangtubiao> celiangtubiaos= celiangjieguoService.findCeliangtubiao(celiangjieguo);
		List<Celiangjieguo> celiangjieguos1= celiangjieguoService.findCeliangjieguo1(celiangjieguo);
		List<Celiangjieguo> celiangjieguos2= celiangjieguoService.findCeliangjieguo2(celiangjieguo);
		List<Celiangjieguo> celiangjieguos3= celiangjieguoService.findCeliangjieguo3(celiangjieguo);
		List<Celiangjieguo> celiangjieguos4= celiangjieguoService.findCeliangjieguo4(celiangjieguo);
		/*
		request.getSession().setAttribute("celiangjieguos1",celiangjieguos1);
		request.getSession().setAttribute("celiangjieguos2",celiangjieguos2);
		request.getSession().setAttribute("celiangjieguos3",celiangjieguos3);
		request.getSession().setAttribute("celiangjieguos4",celiangjieguos4);
		request.getSession().setAttribute("celiangtubiaos",celiangtubiaos);
		*/
		for(int i =0;i<celiangtubiaos.size();i++){
			if("1".equals(test_point)){
				if(celiangtubiaos.get(i).getAvgtest_point1()==null){
					celiangtubiaos.remove(i);
					i--;
				}
			}
			if("2".equals(test_point)){
				if(celiangtubiaos.get(i).getAvgtest_point2()==null){
					celiangtubiaos.remove(i);
					i--;
				}
			}
			if("3".equals(test_point)){
				if(celiangtubiaos.get(i).getAvgtest_point3()==null){
					celiangtubiaos.remove(i);
					i--;
				}
			}
			if("4".equals(test_point)){
				if(celiangtubiaos.get(i).getAvgtest_point4()==null){
					celiangtubiaos.remove(i);
					i--;
				}
			}
			if("5".equals(test_point)){
				if(celiangtubiaos.get(i).getAvgtest_point5()==null){
					celiangtubiaos.remove(i);
					i--;
				}
			}
			if("6".equals(test_point)){
				if(celiangtubiaos.get(i).getAvgtest_point6()==null){
					celiangtubiaos.remove(i);
					i--;
				}
			}
			if("7".equals(test_point)){
				if(celiangtubiaos.get(i).getAvgtest_point7()==null){
					celiangtubiaos.remove(i);
					i--;
				}
			}
			if("8".equals(test_point)){
				if(celiangtubiaos.get(i).getAvgtest_point8()==null){
					celiangtubiaos.remove(i);
					i--;
				}
			}
			if("9".equals(test_point)){
				if(celiangtubiaos.get(i).getAvgoil_point()==null){
					celiangtubiaos.remove(i);
					i--;
				}
			}
		}
		for(int i =0;i<celiangjieguos1.size();i++){
			if("1".equals(test_point)){
				if(celiangjieguos1.get(i).getTest_point1()==null){
					celiangjieguos1.remove(i);
					celiangjieguos2.remove(i);
					celiangjieguos3.remove(i);
					celiangjieguos4.remove(i);
					i--;
				}
			}
			if("2".equals(test_point)){
				if(celiangjieguos1.get(i).getTest_point2()==null){
					celiangjieguos1.remove(i);
					celiangjieguos2.remove(i);
					celiangjieguos3.remove(i);
					celiangjieguos4.remove(i);
					i--;
				}
			}
			if("3".equals(test_point)){
				if(celiangjieguos1.get(i).getTest_point3()==null){
					celiangjieguos1.remove(i);
					celiangjieguos2.remove(i);
					celiangjieguos3.remove(i);
					celiangjieguos4.remove(i);
					i--;
				}
			}
			if("4".equals(test_point)){
				if(celiangjieguos1.get(i).getTest_point4()==null){
					celiangjieguos1.remove(i);
					celiangjieguos2.remove(i);
					celiangjieguos3.remove(i);
					celiangjieguos4.remove(i);
					i--;
				}
			}
			if("5".equals(test_point)){
				if(celiangjieguos1.get(i).getTest_point5()==null){
					celiangjieguos1.remove(i);
					celiangjieguos2.remove(i);
					celiangjieguos3.remove(i);
					celiangjieguos4.remove(i);
					i--;
				}
			}
			if("6".equals(test_point)){
				if(celiangjieguos1.get(i).getTest_point6()==null){
					celiangjieguos1.remove(i);
					celiangjieguos2.remove(i);
					celiangjieguos3.remove(i);
					celiangjieguos4.remove(i);
					i--;
				}
			}
			if("7".equals(test_point)){
				if(celiangjieguos1.get(i).getTest_point7()==null){
					celiangjieguos1.remove(i);
					celiangjieguos2.remove(i);
					celiangjieguos3.remove(i);
					celiangjieguos4.remove(i);
					i--;
				}
			}
			if("8".equals(test_point)){
				if(celiangjieguos1.get(i).getTest_point8()==null){
					celiangjieguos1.remove(i);
					celiangjieguos2.remove(i);
					celiangjieguos3.remove(i);
					celiangjieguos4.remove(i);
					i--;
				}
			}
			if("9".equals(test_point)){
				if(celiangjieguos1.get(i).getOil_point()==null){
					celiangjieguos1.remove(i);
					celiangjieguos2.remove(i);
					celiangjieguos3.remove(i);
					celiangjieguos4.remove(i);
					i--;
				}
			}
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("celiangtubiaos", celiangtubiaos);
		map.put("celiangjieguos1", celiangjieguos1);
		map.put("celiangjieguos2", celiangjieguos2);
		map.put("celiangjieguos3", celiangjieguos3);
		map.put("celiangjieguos4", celiangjieguos4);
		map.put("test_point", test_point);
		return map;
	}
	@RequestMapping("/dian")
	public String dian(HttpServletRequest request){
		return "dian";
	}
}
