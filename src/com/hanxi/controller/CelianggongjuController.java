package com.hanxi.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hanxi.entity.Celianggongju;
import com.hanxi.entity.Page;
import com.hanxi.entity.sys_user;
import com.hanxi.service.CelianggongjuService;

@Controller
@RequestMapping("/celianggongju")
public class CelianggongjuController {
	@Resource
	private CelianggongjuService celianggongjuService;
	
	@RequestMapping("page")
	public String  Page(){
		return "page";
	}
	
	@RequestMapping("/findCelianggongju")
	public String findCelianggongju(HttpServletRequest request){
		List<Celianggongju> celianggongjus = celianggongjuService.findCelianggongju();
		request.getSession().setAttribute("celianggongjus",celianggongjus);
		sys_user user = (sys_user) request.getSession().getAttribute("userMsg");
		if(user==null){
			return "syslogin";
		}else if("administrator".equals(user.getRole())) {
			return "celianggongju";
		}else if("operator".equals(user.getRole())){
			return "celianggongju";
		}else{
			return "pcelianggongju";
		}
	}
	@RequestMapping("/toceliang1")
	public String toceliang1(HttpServletRequest request){
				return "celiang1";
	}
	@RequestMapping("/toceliang2")
	public String toceliang2(HttpServletRequest request){
				return "celiang2";
	}
	@RequestMapping("/toceliang3")
	public String toceliang3(HttpServletRequest request){
				return "celiang3";
	}
	@RequestMapping("/toceliang4")
	public String toceliang4(HttpServletRequest request){
				return "celiang4";
	}
	@RequestMapping("/toceliang5")
	public String toceliang5(HttpServletRequest request){
				return "celiang5";
	}
	@RequestMapping("/toceliang6")
	public String toceliang6(HttpServletRequest request){
				return "celiang6";
	}
	@RequestMapping("/toceliang7")
	public String toceliang7(HttpServletRequest request){
				return "celiang7";
	}
	@RequestMapping("/toceliang8")
	public String toceliang8(HttpServletRequest request){
				return "celiang8";
	}
	@RequestMapping("/toceliang9")
	public String toceliang9(HttpServletRequest request){
				return "celiang9";
	}
	@RequestMapping("/toceliang10")
	public String toceliang10(HttpServletRequest request){
				return "celiang10";
	}
	@RequestMapping("/toceliang11")
	public String toceliang11(HttpServletRequest request){
				return "celiang11";
	}
	@RequestMapping("/toceliang12")
	public String toceliang12(HttpServletRequest request){
				return "celiang12";
	}
	@RequestMapping("/toceliang13")
	public String toceliang13(HttpServletRequest request){
				return "celiang13";
	}
	@RequestMapping("/toceliang14")
	public String toceliang14(HttpServletRequest request){
				return "celiang14";
	}
	@RequestMapping("/findOneCe")
	public String findOneCe(int id,HttpServletRequest request){
		Celianggongju celianggongju = celianggongjuService.findOneCe(id);
		request.getSession().setAttribute("celianggongju",celianggongju);
		return "celiangzhuangtai";
	}
	@RequestMapping("/xiugaiCe")
	public String xiugaiCe(Celianggongju celianggongju,HttpServletRequest request){
		celianggongjuService.xiugaiCe(celianggongju);
		return "redirect:/celianggongju/findCelianggongju.do";
	}
	
}