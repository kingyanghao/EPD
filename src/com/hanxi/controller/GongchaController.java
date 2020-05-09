package com.hanxi.controller;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanxi.entity.Gongcha;
import com.hanxi.entity.sys_user;
import com.hanxi.service.GongchaService;

@Controller
@RequestMapping("/gongcha")
public class GongchaController {
	@Resource
	private GongchaService gongchaService;
	
	@RequestMapping("/gongchaadd")
	public String gongchaadd(HttpServletRequest request,Gongcha gongcha){
		int count=0;
		System.out.println("asdasdas");
		int i=gongchaService.findCountGongcha(gongcha);
		if(i!=0){
			request.getSession().setAttribute("gongchatixing", gongcha.getBench()+"中的"+gongcha.getProduct()+"型号公差已存在！");
			return "gongchaadd";
		}else{
		request.getSession().setAttribute("gongchatixing","");
		BigDecimal a = new BigDecimal(Double.toString(gongcha.getCoefficinet()));
		//1
		if(gongcha.getTolerance1()!=null){
		BigDecimal b1 = new BigDecimal(Double.toString(gongcha.getTolerance1()));
		BigDecimal c1 = new BigDecimal(Double.toString(gongcha.getNormal1()));
		BigDecimal e1 = new BigDecimal(Double.toString(gongcha.getEss1()));
		BigDecimal h1 = c1.subtract(e1).add(b1.multiply(a));
		BigDecimal l1 = c1.subtract(e1).subtract(b1.multiply(a));
		System.out.println("h1"+h1+"l1"+l1);
		gongcha.setTh1(h1.doubleValue());
		gongcha.setTl1(l1.doubleValue());
		count++;
		}
		//2
		if(gongcha.getTolerance2()!=null){
		BigDecimal b2 = new BigDecimal(Double.toString(gongcha.getTolerance2()));
		BigDecimal c2 = new BigDecimal(Double.toString(gongcha.getNormal2()));
		BigDecimal e2 = new BigDecimal(Double.toString(gongcha.getEss2()));
		BigDecimal h2 = c2.subtract(e2).add(b2.multiply(a));
		BigDecimal l2 = c2.subtract(e2).subtract(b2.multiply(a));
		gongcha.setTh2(h2.doubleValue());
		gongcha.setTl2(l2.doubleValue());
		count++;
		}
		//3
		if(gongcha.getTolerance3()!=null){
		BigDecimal b3 = new BigDecimal(Double.toString(gongcha.getTolerance3()));
		BigDecimal c3 = new BigDecimal(Double.toString(gongcha.getNormal3()));
		BigDecimal e3 = new BigDecimal(Double.toString(gongcha.getEss3()));
		BigDecimal h3 = c3.subtract(e3).add(b3.multiply(a));
		BigDecimal l3 = c3.subtract(e3).subtract(b3.multiply(a));
		gongcha.setTh3(h3.doubleValue());
		gongcha.setTl3(l3.doubleValue());
		count++;
		}
		//4
		if(gongcha.getTolerance4()!=null){
		BigDecimal b4 = new BigDecimal(Double.toString(gongcha.getTolerance4()));
		BigDecimal c4 = new BigDecimal(Double.toString(gongcha.getNormal4()));
		BigDecimal e4 = new BigDecimal(Double.toString(gongcha.getEss4()));
		BigDecimal h4 = c4.subtract(e4).add(b4.multiply(a));
		BigDecimal l4 = c4.subtract(e4).subtract(b4.multiply(a));
		gongcha.setTh4(h4.doubleValue());
		gongcha.setTl4(l4.doubleValue());
		count++;
		}
		//5
		if(gongcha.getTolerance5()!=null){
		BigDecimal b5 = new BigDecimal(Double.toString(gongcha.getTolerance5()));
		BigDecimal c5 = new BigDecimal(Double.toString(gongcha.getNormal5()));
		BigDecimal e5= new BigDecimal(Double.toString(gongcha.getEss5()));
		BigDecimal h5 = c5.subtract(e5).add(b5.multiply(a));
		BigDecimal l5 = c5.subtract(e5).subtract(b5.multiply(a));
		gongcha.setTh5(h5.doubleValue());
		gongcha.setTl5(l5.doubleValue());
		count++;
		}
		//6
		if(gongcha.getTolerance6()!=null){
		BigDecimal b6 = new BigDecimal(Double.toString(gongcha.getTolerance6()));
		BigDecimal c6 = new BigDecimal(Double.toString(gongcha.getNormal6()));
		BigDecimal e6 = new BigDecimal(Double.toString(gongcha.getEss6()));
		BigDecimal h6 = c6.subtract(e6).add(b6.multiply(a));
		BigDecimal l6 = c6.subtract(e6).subtract(b6.multiply(a));
		gongcha.setTh6(h6.doubleValue());
		gongcha.setTl6(l6.doubleValue());
		count++;
		}
		//7
		if(gongcha.getTolerance7()!=null){
		BigDecimal b7 = new BigDecimal(Double.toString(gongcha.getTolerance7()));
		BigDecimal c7 = new BigDecimal(Double.toString(gongcha.getNormal7()));
		BigDecimal e7 = new BigDecimal(Double.toString(gongcha.getEss7()));
		BigDecimal h7 = c7.subtract(e7).add(b7.multiply(a));
		BigDecimal l7 = c7.subtract(e7).subtract(b7.multiply(a));
		gongcha.setTh7(h7.doubleValue());
		gongcha.setTl7(l7.doubleValue());
		count++;
		}
		//8
				if(gongcha.getTolerance8()!=null){
						BigDecimal b8 = new BigDecimal(Double.toString(gongcha.getTolerance8()));
						BigDecimal c8 = new BigDecimal(Double.toString(gongcha.getNormal8()));
						BigDecimal e8 = new BigDecimal(Double.toString(gongcha.getEss8()));
						BigDecimal h8 = c8.subtract(e8).add(b8.multiply(a));
						BigDecimal l8 = c8.subtract(e8).subtract(b8.multiply(a));
						gongcha.setTh8(h8.doubleValue());
						gongcha.setTl8(l8.doubleValue());
						count++;
				}
		//9
		if(gongcha.getTolerance9()!=null){
				BigDecimal b9 = new BigDecimal(Double.toString(gongcha.getTolerance9()));
				BigDecimal c9 = new BigDecimal(Double.toString(gongcha.getNormal9()));
				BigDecimal e9 = new BigDecimal(Double.toString(gongcha.getEss9()));
				BigDecimal h9 = c9.subtract(e9).add(b9.multiply(a));
				BigDecimal l9 = c9.subtract(e9).subtract(b9.multiply(a));
				gongcha.setTh9(h9.doubleValue());
				gongcha.setTl9(l9.doubleValue());
				count++;
		}
		gongcha.setCount(count);
		gongchaService.gongchaadd(gongcha);
		return "redirect:/gongcha/findGongcha.do";
		}
	}
	
	@RequestMapping("/findGongcha")
	public String findGongcha(HttpServletRequest request,Gongcha gongcha){
		/*
		if ("0".equals(gongcha.getBench())||) {
			
		}
		*/
		List<Gongcha> gongchas = gongchaService.findGongcha(gongcha);
		request.getSession().setAttribute("gongchas", gongchas);
		sys_user user = (sys_user) request.getSession().getAttribute("userMsg");
		if(user==null){
			return "syslogin";
		}else if("administrator".equals(user.getRole())) {
			return "gongchaliebiao";
		}else if("engineer".equals(user.getRole())){
			return "pgongchaliebiao";
		}else{
			return "pgongchaliebiao";
		}
	}
	
	@RequestMapping("/toAddGongcha")
	public String toAddGongcha(){
		return "gongchaadd";
	}
	@RequestMapping("/findOneGongcha")
	public String findOneGongcha(int id,HttpServletRequest request){
		Gongcha gongcha = gongchaService.findOneGongcha(id);
		request.getSession().setAttribute("gongcha", gongcha);
		return "gongchaxiugai";
	}
	@RequestMapping("/gongchaxiugai")
	public String gongchaxiugai(Gongcha gongcha){
		int count=0;
		BigDecimal a = new BigDecimal(Double.toString(gongcha.getCoefficinet()));
		//1
		if(gongcha.getTolerance1()!=null){
		BigDecimal b1 = new BigDecimal(Double.toString(gongcha.getTolerance1()));
		BigDecimal c1 = new BigDecimal(Double.toString(gongcha.getNormal1()));
		BigDecimal e1 = new BigDecimal(Double.toString(gongcha.getEss1()));
		BigDecimal h1 = c1.subtract(e1).add(b1.multiply(a));
		BigDecimal l1 = c1.subtract(e1).subtract(b1.multiply(a));
		System.out.println("h1"+h1+"l1"+l1);
		gongcha.setTh1(h1.doubleValue());
		gongcha.setTl1(l1.doubleValue());
		count++;
		}
		//2
		if(gongcha.getTolerance2()!=null){
		BigDecimal b2 = new BigDecimal(Double.toString(gongcha.getTolerance2()));
		BigDecimal c2 = new BigDecimal(Double.toString(gongcha.getNormal2()));
		BigDecimal e2 = new BigDecimal(Double.toString(gongcha.getEss2()));
		BigDecimal h2 = c2.subtract(e2).add(b2.multiply(a));
		BigDecimal l2 = c2.subtract(e2).subtract(b2.multiply(a));
		gongcha.setTh2(h2.doubleValue());
		gongcha.setTl2(l2.doubleValue());
		count++;
		}
		//3
		if(gongcha.getTolerance3()!=null){
		BigDecimal b3 = new BigDecimal(Double.toString(gongcha.getTolerance3()));
		BigDecimal c3 = new BigDecimal(Double.toString(gongcha.getNormal3()));
		BigDecimal e3 = new BigDecimal(Double.toString(gongcha.getEss3()));
		BigDecimal h3 = c3.subtract(e3).add(b3.multiply(a));
		BigDecimal l3 = c3.subtract(e3).subtract(b3.multiply(a));
		gongcha.setTh3(h3.doubleValue());
		gongcha.setTl3(l3.doubleValue());
		count++;
		}
		//4
		if(gongcha.getTolerance4()!=null){
		BigDecimal b4 = new BigDecimal(Double.toString(gongcha.getTolerance4()));
		BigDecimal c4 = new BigDecimal(Double.toString(gongcha.getNormal4()));
		BigDecimal e4 = new BigDecimal(Double.toString(gongcha.getEss4()));
		BigDecimal h4 = c4.subtract(e4).add(b4.multiply(a));
		BigDecimal l4 = c4.subtract(e4).subtract(b4.multiply(a));
		gongcha.setTh4(h4.doubleValue());
		gongcha.setTl4(l4.doubleValue());
		count++;
		}
		//5
		if(gongcha.getTolerance5()!=null){
		BigDecimal b5 = new BigDecimal(Double.toString(gongcha.getTolerance5()));
		BigDecimal c5 = new BigDecimal(Double.toString(gongcha.getNormal5()));
		BigDecimal e5= new BigDecimal(Double.toString(gongcha.getEss5()));
		BigDecimal h5 = c5.subtract(e5).add(b5.multiply(a));
		BigDecimal l5 = c5.subtract(e5).subtract(b5.multiply(a));
		gongcha.setTh5(h5.doubleValue());
		gongcha.setTl5(l5.doubleValue());
		count++;
		}
		//6
		if(gongcha.getTolerance6()!=null){
		BigDecimal b6 = new BigDecimal(Double.toString(gongcha.getTolerance6()));
		BigDecimal c6 = new BigDecimal(Double.toString(gongcha.getNormal6()));
		BigDecimal e6 = new BigDecimal(Double.toString(gongcha.getEss6()));
		BigDecimal h6 = c6.subtract(e6).add(b6.multiply(a));
		BigDecimal l6 = c6.subtract(e6).subtract(b6.multiply(a));
		gongcha.setTh6(h6.doubleValue());
		gongcha.setTl6(l6.doubleValue());
		count++;
		}
		//7
		if(gongcha.getTolerance7()!=null){
		BigDecimal b7 = new BigDecimal(Double.toString(gongcha.getTolerance7()));
		BigDecimal c7 = new BigDecimal(Double.toString(gongcha.getNormal7()));
		BigDecimal e7 = new BigDecimal(Double.toString(gongcha.getEss7()));
		BigDecimal h7 = c7.subtract(e7).add(b7.multiply(a));
		BigDecimal l7 = c7.subtract(e7).subtract(b7.multiply(a));
		gongcha.setTh7(h7.doubleValue());
		gongcha.setTl7(l7.doubleValue());
		count++;
		}
		//8
				if(gongcha.getTolerance8()!=null){
						BigDecimal b8 = new BigDecimal(Double.toString(gongcha.getTolerance8()));
						BigDecimal c8 = new BigDecimal(Double.toString(gongcha.getNormal8()));
						BigDecimal e8 = new BigDecimal(Double.toString(gongcha.getEss8()));
						BigDecimal h8 = c8.subtract(e8).add(b8.multiply(a));
						BigDecimal l8 = c8.subtract(e8).subtract(b8.multiply(a));
						gongcha.setTh8(h8.doubleValue());
						gongcha.setTl8(l8.doubleValue());
						count++;
				}
		//9
		if(gongcha.getTolerance9()!=null){
				BigDecimal b9 = new BigDecimal(Double.toString(gongcha.getTolerance9()));
				BigDecimal c9 = new BigDecimal(Double.toString(gongcha.getNormal9()));
				BigDecimal e9 = new BigDecimal(Double.toString(gongcha.getEss9()));
				BigDecimal h9 = c9.subtract(e9).add(b9.multiply(a));
				BigDecimal l9 = c9.subtract(e9).subtract(b9.multiply(a));
				gongcha.setTh9(h9.doubleValue());
				gongcha.setTl9(l9.doubleValue());
				count++;
		}
		gongcha.setCount(count);
		gongchaService.gongchaxiugai(gongcha);
		return "redirect:/gongcha/findGongcha.do";
	}
	@RequestMapping("/gongchadel")
	public String gongchadel(int id){
		gongchaService.gongchadel(id);
		return "redirect:/gongcha/findGongcha.do";
	}
}