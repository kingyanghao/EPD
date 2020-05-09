package com.hanxi.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.functors.IfClosure;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanxi.entity.Taijia;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.sys_user;
import com.hanxi.entity.year_check;
import com.hanxi.service.TaijiaService;
import com.sun.mail.handlers.image_gif;

@Controller
@RequestMapping("/taijia")
public class TaijiaController {

	@Resource
	private TaijiaService taijiaService;

	@RequestMapping("/findTaijia")
	public String findTaijia(HttpServletRequest request) {
		List<Taijia> taijias = taijiaService.findTaijia();
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
				if (month.getM_01().length() > 0 ? month.getM_01().equals("2")
						: false || month.getM_02().length() > 0 ? month.getM_02().equals("2")
								: false || month.getM_03().length() > 0 ? month.getM_03().equals("2")
										: false || month.getM_04().length() > 0 ? month.getM_04().equals("2")
												: false || month.getM_05().length() > 0 ? month.getM_05().equals("2")
														: false) {
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

				if (year.getY_01().length() > 0 ? year.getY_01().equals("2")
						: false || year.getY_02().length() > 0 ? year.getY_02().equals("2")
								: false || year.getY_03().length() > 0 ? year.getY_03().equals("2")
										: false || year.getY_04().length() > 0 ? year.getY_04().equals("2") : false) {
					taijias.get(i).setNianjian(2);
				} else {
					taijias.get(i).setNianjian(1);
				}
			}
		}
		request.getSession().setAttribute("taijias", taijias);
		sys_user user = (sys_user) request.getSession().getAttribute("userMsg");
		if (user == null) {
			return "syslogin";
		} else if ("administrator".equals(user.getRole())) {
			return "taijialiebiao";
		} else if ("operator".equals(user.getRole())) {
			return "taijialiebiao";
		} else {
			return "ptaijialiebiao";
		}
	}

	@RequestMapping("/zhuangtai")
	public String xiugaizhuangtai(HttpServletRequest request, String taijiamingcheng) {
		Taijia taijia = taijiaService.findOneTaijia(taijiamingcheng);
		request.getSession().setAttribute("tai", taijia);
		return "taijiaxiugai";
	}

	@RequestMapping("/xiugai")
	public String xiugai(HttpServletRequest request, Taijia taijia) {
		taijiaService.xiugai(taijia);
		return "redirect:/taijia/findTaijia.do";
	}


}
