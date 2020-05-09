package com.hanxi.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanxi.entity.Shoudongliangju;
import com.hanxi.entity.sys_user;
import com.hanxi.service.ShoudongliangjuService;

@Controller
@RequestMapping("/shoudongliangju")
public class ShoudongliangjuController {

	@Resource
	private ShoudongliangjuService shoudongliangjuService;
	
	@RequestMapping("/findShoudongliangju")
	public String findShoudongliangju( HttpServletRequest request){
		List<Shoudongliangju> shoudongliangjus = shoudongliangjuService.findShoudongliangju();
		request.getSession().setAttribute("shoudongliangjus", shoudongliangjus);
		sys_user user = (sys_user) request.getSession().getAttribute("userMsg");
		if(user==null){
			return "syslogin";
		}else if("administrator".equals(user.getRole())) {
			return "shoudongliangju";
		}else if("operator".equals(user.getRole())){
			return "shoudongliangju";
		}else{
			return "pshoudongliangju";
		}
	}
	@RequestMapping("/shoudong1")
	public String shoudong1( HttpServletRequest request){
				return "shoudong1";
	}
	@RequestMapping("/shoudong2")
	public String shoudong2( HttpServletRequest request){
				return "shoudong2";
	}
	@RequestMapping("/shoudong3")
	public String shoudong3( HttpServletRequest request){
				return "shoudong3";
	}
	@RequestMapping("/shoudong4")
	public String shoudong4( HttpServletRequest request){
				return "shoudong4";
	}
	@RequestMapping("/shoudong5")
	public String shoudong5( HttpServletRequest request){
				return "shoudong5";
	}
	@RequestMapping("/shoudong6")
	public String shoudong6( HttpServletRequest request){
				return "shoudong6";
	}
	@RequestMapping("/shoudong7")
	public String shoudong7( HttpServletRequest request){
				return "shoudong7";
	}
	@RequestMapping("/shoudong8")
	public String shoudong8( HttpServletRequest request){
				return "shoudong8";
	}
	@RequestMapping("/shoudong9")
	public String shoudong9( HttpServletRequest request){
				return "shoudong9";
	}
	@RequestMapping("/shoudong10")
	public String shoudong10( HttpServletRequest request){
				return "shoudong10";
	}
	@RequestMapping("/shoudong11")
	public String shoudong11( HttpServletRequest request){
				return "shoudong11";
	}
	@RequestMapping("/shoudong12")
	public String shoudong12( HttpServletRequest request){
				return "shoudong12";
	}
	@RequestMapping("/shoudong13")
	public String shoudong13( HttpServletRequest request){
				return "shoudong13";
	}
	@RequestMapping("/shoudong14")
	public String shoudong14( HttpServletRequest request){
				return "shoudong14";
	}
	@RequestMapping("/shoudong15")
	public String shoudong15( HttpServletRequest request){
				return "shoudong15";
	}
	@RequestMapping("/shoudong16")
	public String shoudong16( HttpServletRequest request){
				return "shoudong16";
	}
	@RequestMapping("/shoudong17")
	public String shoudong17( HttpServletRequest request){
				return "shoudong17";
	}
	@RequestMapping("/shoudong18")
	public String shoudong18( HttpServletRequest request){
				return "shoudong18";
	}
	@RequestMapping("/shoudong19")
	public String shoudong19( HttpServletRequest request){
				return "shoudong19";
	}
	@RequestMapping("/shoudong20")
	public String shoudong20( HttpServletRequest request){
				return "shoudong20";
	}
	@RequestMapping("/shoudong21")
	public String shoudong21( HttpServletRequest request){
				return "shoudong21";
	}
	@RequestMapping("/shoudong22")
	public String shoudong22( HttpServletRequest request){
				return "shoudong22";
	}
	@RequestMapping("/shoudong23")
	public String shoudong23( HttpServletRequest request){
				return "shoudong23";
	}
	@RequestMapping("/shoudong24")
	public String shoudong24( HttpServletRequest request){
				return "shoudong24";
	}
	@RequestMapping("/shoudong25")
	public String shoudong25( HttpServletRequest request){
				return "shoudong25";
	}
	@RequestMapping("/shoudong26")
	public String shoudong26( HttpServletRequest request){
				return "shoudong26";
	}
	@RequestMapping("/shoudong27")
	public String shoudong27( HttpServletRequest request){
				return "shoudong27";
	}
	@RequestMapping("/shoudong28")
	public String shoudong28( HttpServletRequest request){
				return "shoudong28";
	}
	@RequestMapping("/shoudong29")
	public String shoudong29( HttpServletRequest request){
				return "shoudong29";
	}
	
	@RequestMapping("/findOneShou")
	public String findOneShou(int id,HttpServletRequest request){
		Shoudongliangju shoudongliangju = shoudongliangjuService.findOneShou(id);
		request.getSession().setAttribute("shoudong", shoudongliangju);
		return "shoudongzhuangtai";
	}
	@RequestMapping("/xiugaiShou")
	public String xiugaiShou(Shoudongliangju shoudongliangju,HttpServletRequest request){
		shoudongliangjuService.xiugaiShou(shoudongliangju);
		return "redirect:/shoudongliangju/findShoudongliangju.do";
	}
	
}
