package com.hanxi.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hanxi.entity.Celiangtubiao;
import com.hanxi.entity.sys_user;
import com.hanxi.service.DianService;
import com.sun.mail.handlers.image_gif;

@Controller
@RequestMapping("/dian")
public class DianController {
	@Resource
	private DianService dianService;

	@RequestMapping("/dian")
	public String celiangtubiao(HttpServletRequest request) {
		Celiangtubiao celiangtubiao1 = dianService.finddian1();
		Celiangtubiao celiangtubiao2 = dianService.finddian2();
		Celiangtubiao celiangtubiao3 = dianService.finddian3();
		Celiangtubiao celiangtubiao4 = dianService.finddian4();
		Celiangtubiao celiangtubiao5 = dianService.finddian5();
		Celiangtubiao celiangtubiao6 = dianService.finddian6();
		Celiangtubiao celiangtubiao7 = dianService.finddian7();
		Celiangtubiao celiangtubiao8 = dianService.finddian8();
		Celiangtubiao celiangtubiao9 = dianService.finddian9();
		Celiangtubiao celiangtubiao10 = dianService.finddian10();
		Celiangtubiao celiangtubiao11 = dianService.finddian11();
		Celiangtubiao celiangtubiao12 = dianService.finddian12();
		Celiangtubiao celiangtubiao13 = dianService.finddian13();
		Celiangtubiao celiangtubiao14 = dianService.finddian14();
		Celiangtubiao celiangtubiao15 = dianService.finddian15();
		Celiangtubiao celiangtubiao16 = dianService.finddian16();
		Celiangtubiao celiangtubiao17 = dianService.finddian17();
		Celiangtubiao celiangtubiao18 = dianService.finddian18();
		Celiangtubiao celiangtubiao19 = dianService.finddian19();
		Celiangtubiao celiangtubiao20 = dianService.finddian20();
		Celiangtubiao celiangtubiao21 = dianService.finddian21();
		Celiangtubiao celiangtubiao22 = dianService.finddian22();
		request.getSession().removeAttribute("dian1");
		request.getSession().removeAttribute("dian2");
		request.getSession().removeAttribute("dian3");
		request.getSession().removeAttribute("dian4");
		request.getSession().removeAttribute("dian5");
		request.getSession().removeAttribute("dian6");
		request.getSession().removeAttribute("dian7");
		request.getSession().removeAttribute("dian8");
		request.getSession().removeAttribute("dian9");
		request.getSession().removeAttribute("dian10");
		request.getSession().removeAttribute("dian11");
		request.getSession().removeAttribute("dian12");
		request.getSession().removeAttribute("dian13");
		request.getSession().removeAttribute("dian14");
		request.getSession().removeAttribute("dian15");
		request.getSession().removeAttribute("dian16");
		request.getSession().removeAttribute("dian17");
		request.getSession().removeAttribute("dian18");
		request.getSession().removeAttribute("dian19");
		request.getSession().removeAttribute("dian20");
		request.getSession().removeAttribute("dian21");
		request.getSession().removeAttribute("dian22");
		System.out.println("asdsad开始");
		if (celiangtubiao1 == null) {
			request.getSession().setAttribute("dian1", 1);
		} else if (celiangtubiao1.getAvgtest_point1() != null && celiangtubiao1.getAvgtest_point2() != null
				&& celiangtubiao1.getAvgtest_point3() != null && celiangtubiao1.getAvgtest_point4() != null
				&& celiangtubiao1.getAvgtest_point5() != null && celiangtubiao1.getAvgtest_point6() != null
				&& celiangtubiao1.getAvgtest_point7() != null && celiangtubiao1.getAvgtest_point8() != null
				&& celiangtubiao1.getAvgoil_point() != null) {
			if (celiangtubiao1.getAvgtest_point1() <= celiangtubiao1.getPoint1_TH()
					&& celiangtubiao1.getAvgtest_point1() >= celiangtubiao1.getPoint1_TL()
					&& celiangtubiao1.getAvgtest_point2() <= celiangtubiao1.getPoint2_TH()
					&& celiangtubiao1.getAvgtest_point2() >= celiangtubiao1.getPoint2_TL()
					&& celiangtubiao1.getAvgtest_point3() <= celiangtubiao1.getPoint3_TH()
					&& celiangtubiao1.getAvgtest_point3() >= celiangtubiao1.getPoint3_TL()
					&& celiangtubiao1.getAvgtest_point4() <= celiangtubiao1.getPoint4_TH()
					&& celiangtubiao1.getAvgtest_point4() >= celiangtubiao1.getPoint4_TL()
					&& celiangtubiao1.getAvgtest_point5() <= celiangtubiao1.getPoint5_TH()
					&& celiangtubiao1.getAvgtest_point5() >= celiangtubiao1.getPoint5_TL()
					&& celiangtubiao1.getAvgtest_point6() <= celiangtubiao1.getPoint6_TH()
					&& celiangtubiao1.getAvgtest_point6() >= celiangtubiao1.getPoint6_TL()
					&& celiangtubiao1.getAvgtest_point7() <= celiangtubiao1.getPoint7_TH()
					&& celiangtubiao1.getAvgtest_point7() >= celiangtubiao1.getPoint7_TL()
					&& celiangtubiao1.getAvgtest_point8() <= celiangtubiao1.getPoint8_TH()
					&& celiangtubiao1.getAvgtest_point8() >= celiangtubiao1.getPoint8_TL()
					&& celiangtubiao1.getAvgoil_point() <= celiangtubiao1.getOil_TH()
					&& celiangtubiao1.getAvgoil_point() >= celiangtubiao1.getOil_TL()) {
				request.getSession().setAttribute("dian1", 2);
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian1", 3);
			}
		} else if (celiangtubiao1.getAvgtest_point1() != null && celiangtubiao1.getAvgtest_point2() != null
				&& celiangtubiao1.getAvgtest_point3() != null && celiangtubiao1.getAvgtest_point4() != null
				&& celiangtubiao1.getAvgtest_point5() != null && celiangtubiao1.getAvgtest_point6() != null
				&& celiangtubiao1.getAvgtest_point7() != null && celiangtubiao1.getAvgoil_point() != null) {
			if (celiangtubiao1.getAvgtest_point1() <= celiangtubiao1.getPoint1_TH()
					&& celiangtubiao1.getAvgtest_point1() >= celiangtubiao1.getPoint1_TL()
					&& celiangtubiao1.getAvgtest_point2() <= celiangtubiao1.getPoint2_TH()
					&& celiangtubiao1.getAvgtest_point2() >= celiangtubiao1.getPoint2_TL()
					&& celiangtubiao1.getAvgtest_point3() <= celiangtubiao1.getPoint3_TH()
					&& celiangtubiao1.getAvgtest_point3() >= celiangtubiao1.getPoint3_TL()
					&& celiangtubiao1.getAvgtest_point4() <= celiangtubiao1.getPoint4_TH()
					&& celiangtubiao1.getAvgtest_point4() >= celiangtubiao1.getPoint4_TL()
					&& celiangtubiao1.getAvgtest_point5() <= celiangtubiao1.getPoint5_TH()
					&& celiangtubiao1.getAvgtest_point5() >= celiangtubiao1.getPoint5_TL()
					&& celiangtubiao1.getAvgtest_point6() <= celiangtubiao1.getPoint6_TH()
					&& celiangtubiao1.getAvgtest_point6() >= celiangtubiao1.getPoint6_TL()
					&& celiangtubiao1.getAvgtest_point7() <= celiangtubiao1.getPoint7_TH()
					&& celiangtubiao1.getAvgtest_point7() >= celiangtubiao1.getPoint7_TL()
					&& celiangtubiao1.getAvgoil_point() <= celiangtubiao1.getOil_TH()
					&& celiangtubiao1.getAvgoil_point() >= celiangtubiao1.getOil_TL()) {
				request.getSession().setAttribute("dian1", 2);
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian1", 3);
			}
		} else if (celiangtubiao1.getAvgtest_point1() != null && celiangtubiao1.getAvgtest_point2() != null
				&& celiangtubiao1.getAvgtest_point3() != null && celiangtubiao1.getAvgtest_point4() != null
				&& celiangtubiao1.getAvgtest_point5() != null && celiangtubiao1.getAvgtest_point6() != null
				&& celiangtubiao1.getAvgoil_point() != null) {
			if (celiangtubiao1.getAvgtest_point1() <= celiangtubiao1.getPoint1_TH()
					&& celiangtubiao1.getAvgtest_point1() >= celiangtubiao1.getPoint1_TL()
					&& celiangtubiao1.getAvgtest_point2() <= celiangtubiao1.getPoint2_TH()
					&& celiangtubiao1.getAvgtest_point2() >= celiangtubiao1.getPoint2_TL()
					&& celiangtubiao1.getAvgtest_point3() <= celiangtubiao1.getPoint3_TH()
					&& celiangtubiao1.getAvgtest_point3() >= celiangtubiao1.getPoint3_TL()
					&& celiangtubiao1.getAvgtest_point4() <= celiangtubiao1.getPoint4_TH()
					&& celiangtubiao1.getAvgtest_point4() >= celiangtubiao1.getPoint4_TL()
					&& celiangtubiao1.getAvgtest_point5() <= celiangtubiao1.getPoint5_TH()
					&& celiangtubiao1.getAvgtest_point5() >= celiangtubiao1.getPoint5_TL()
					&& celiangtubiao1.getAvgtest_point6() <= celiangtubiao1.getPoint6_TH()
					&& celiangtubiao1.getAvgtest_point6() >= celiangtubiao1.getPoint6_TL()
					&& celiangtubiao1.getAvgoil_point() <= celiangtubiao1.getOil_TH()
					&& celiangtubiao1.getAvgoil_point() >= celiangtubiao1.getOil_TL()) {
				request.getSession().setAttribute("dian1", 2);
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian1", 3);
			}
		} else if (celiangtubiao1.getAvgtest_point1() != null && celiangtubiao1.getAvgtest_point2() != null
				&& celiangtubiao1.getAvgtest_point3() != null && celiangtubiao1.getAvgtest_point4() != null
				&& celiangtubiao1.getAvgtest_point5() != null && celiangtubiao1.getAvgoil_point() != null) {
			if (celiangtubiao1.getAvgtest_point1() <= celiangtubiao1.getPoint1_TH()
					&& celiangtubiao1.getAvgtest_point1() >= celiangtubiao1.getPoint1_TL()
					&& celiangtubiao1.getAvgtest_point2() <= celiangtubiao1.getPoint2_TH()
					&& celiangtubiao1.getAvgtest_point2() >= celiangtubiao1.getPoint2_TL()
					&& celiangtubiao1.getAvgtest_point3() <= celiangtubiao1.getPoint3_TH()
					&& celiangtubiao1.getAvgtest_point3() >= celiangtubiao1.getPoint3_TL()
					&& celiangtubiao1.getAvgtest_point4() <= celiangtubiao1.getPoint4_TH()
					&& celiangtubiao1.getAvgtest_point4() >= celiangtubiao1.getPoint4_TL()
					&& celiangtubiao1.getAvgtest_point5() <= celiangtubiao1.getPoint5_TH()
					&& celiangtubiao1.getAvgtest_point5() >= celiangtubiao1.getPoint5_TL()
					&& celiangtubiao1.getAvgoil_point() <= celiangtubiao1.getOil_TH()
					&& celiangtubiao1.getAvgoil_point() >= celiangtubiao1.getOil_TL()) {
				request.getSession().setAttribute("dian1", 2);
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian1", 3);
			}
		} else if (celiangtubiao1.getAvgtest_point1() != null && celiangtubiao1.getAvgtest_point2() != null
				&& celiangtubiao1.getAvgtest_point3() != null && celiangtubiao1.getAvgtest_point4() != null
				&& celiangtubiao1.getAvgoil_point() != null) {
			if (celiangtubiao1.getAvgtest_point1() <= celiangtubiao1.getPoint1_TH()
					&& celiangtubiao1.getAvgtest_point1() >= celiangtubiao1.getPoint1_TL()
					&& celiangtubiao1.getAvgtest_point2() <= celiangtubiao1.getPoint2_TH()
					&& celiangtubiao1.getAvgtest_point2() >= celiangtubiao1.getPoint2_TL()
					&& celiangtubiao1.getAvgtest_point3() <= celiangtubiao1.getPoint3_TH()
					&& celiangtubiao1.getAvgtest_point3() >= celiangtubiao1.getPoint3_TL()
					&& celiangtubiao1.getAvgtest_point4() <= celiangtubiao1.getPoint4_TH()
					&& celiangtubiao1.getAvgtest_point4() >= celiangtubiao1.getPoint4_TL()
					&& celiangtubiao1.getAvgoil_point() <= celiangtubiao1.getOil_TH()
					&& celiangtubiao1.getAvgoil_point() >= celiangtubiao1.getOil_TL()) {
				request.getSession().setAttribute("dian1", 2);
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian1", 3);
			}
		} else {
			request.getSession().setAttribute("dian1", 3);
		}
		if (celiangtubiao2 == null) {
			request.getSession().setAttribute("dian2", 1);
		} else if (celiangtubiao2.getAvgtest_point1() != null && celiangtubiao2.getAvgtest_point2() != null
				&& celiangtubiao2.getAvgtest_point3() != null && celiangtubiao2.getAvgtest_point4() != null
				&& celiangtubiao2.getAvgtest_point5() != null && celiangtubiao2.getAvgtest_point6() != null
				&& celiangtubiao2.getAvgtest_point7() != null && celiangtubiao2.getAvgtest_point8() != null
				&& celiangtubiao2.getAvgoil_point() != null) {
			if (celiangtubiao2.getAvgtest_point1() <= celiangtubiao2.getPoint1_TH()
					&& celiangtubiao2.getAvgtest_point1() >= celiangtubiao2.getPoint1_TL()
					&& celiangtubiao2.getAvgtest_point2() <= celiangtubiao2.getPoint2_TH()
					&& celiangtubiao2.getAvgtest_point2() >= celiangtubiao2.getPoint2_TL()
					&& celiangtubiao2.getAvgtest_point3() <= celiangtubiao2.getPoint3_TH()
					&& celiangtubiao2.getAvgtest_point3() >= celiangtubiao2.getPoint3_TL()
					&& celiangtubiao2.getAvgtest_point4() <= celiangtubiao2.getPoint4_TH()
					&& celiangtubiao2.getAvgtest_point4() >= celiangtubiao2.getPoint4_TL()
					&& celiangtubiao2.getAvgtest_point5() <= celiangtubiao2.getPoint5_TH()
					&& celiangtubiao2.getAvgtest_point5() >= celiangtubiao2.getPoint5_TL()
					&& celiangtubiao2.getAvgtest_point6() <= celiangtubiao2.getPoint6_TH()
					&& celiangtubiao2.getAvgtest_point6() >= celiangtubiao2.getPoint6_TL()
					&& celiangtubiao2.getAvgtest_point7() <= celiangtubiao2.getPoint7_TH()
					&& celiangtubiao2.getAvgtest_point7() >= celiangtubiao2.getPoint7_TL()
					&& celiangtubiao2.getAvgtest_point8() <= celiangtubiao2.getPoint8_TH()
					&& celiangtubiao2.getAvgtest_point8() >= celiangtubiao2.getPoint8_TL()
					&& celiangtubiao2.getAvgoil_point() <= celiangtubiao2.getOil_TH()
					&& celiangtubiao2.getAvgoil_point() >= celiangtubiao2.getOil_TL()) {
				request.getSession().setAttribute("dian2", 2);
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian2", 3);
			}
		} else if (celiangtubiao2.getAvgtest_point1() != null && celiangtubiao2.getAvgtest_point2() != null
				&& celiangtubiao2.getAvgtest_point3() != null && celiangtubiao2.getAvgtest_point4() != null
				&& celiangtubiao2.getAvgtest_point5() != null && celiangtubiao2.getAvgtest_point6() != null
				&& celiangtubiao2.getAvgtest_point7() != null && celiangtubiao2.getAvgoil_point() != null) {
			if (celiangtubiao2.getAvgtest_point1() <= celiangtubiao2.getPoint1_TH()
					&& celiangtubiao2.getAvgtest_point1() >= celiangtubiao2.getPoint1_TL()
					&& celiangtubiao2.getAvgtest_point2() <= celiangtubiao2.getPoint2_TH()
					&& celiangtubiao2.getAvgtest_point2() >= celiangtubiao2.getPoint2_TL()
					&& celiangtubiao2.getAvgtest_point3() <= celiangtubiao2.getPoint3_TH()
					&& celiangtubiao2.getAvgtest_point3() >= celiangtubiao2.getPoint3_TL()
					&& celiangtubiao2.getAvgtest_point4() <= celiangtubiao2.getPoint4_TH()
					&& celiangtubiao2.getAvgtest_point4() >= celiangtubiao2.getPoint4_TL()
					&& celiangtubiao2.getAvgtest_point5() <= celiangtubiao2.getPoint5_TH()
					&& celiangtubiao2.getAvgtest_point5() >= celiangtubiao2.getPoint5_TL()
					&& celiangtubiao2.getAvgtest_point6() <= celiangtubiao2.getPoint6_TH()
					&& celiangtubiao2.getAvgtest_point6() >= celiangtubiao2.getPoint6_TL()
					&& celiangtubiao2.getAvgtest_point7() <= celiangtubiao2.getPoint7_TH()
					&& celiangtubiao2.getAvgtest_point7() >= celiangtubiao2.getPoint7_TL()
					&& celiangtubiao2.getAvgoil_point() <= celiangtubiao2.getOil_TH()
					&& celiangtubiao2.getAvgoil_point() >= celiangtubiao2.getOil_TL()) {
				request.getSession().setAttribute("dian2", 2);
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian2", 3);
			}
		} else if (celiangtubiao2.getAvgtest_point1() != null && celiangtubiao2.getAvgtest_point2() != null
				&& celiangtubiao2.getAvgtest_point3() != null && celiangtubiao2.getAvgtest_point4() != null
				&& celiangtubiao2.getAvgtest_point5() != null && celiangtubiao2.getAvgtest_point6() != null
				&& celiangtubiao2.getAvgoil_point() != null) {
			if (celiangtubiao2.getAvgtest_point1() <= celiangtubiao2.getPoint1_TH()
					&& celiangtubiao2.getAvgtest_point1() >= celiangtubiao2.getPoint1_TL()
					&& celiangtubiao2.getAvgtest_point2() <= celiangtubiao2.getPoint2_TH()
					&& celiangtubiao2.getAvgtest_point2() >= celiangtubiao2.getPoint2_TL()
					&& celiangtubiao2.getAvgtest_point3() <= celiangtubiao2.getPoint3_TH()
					&& celiangtubiao2.getAvgtest_point3() >= celiangtubiao2.getPoint3_TL()
					&& celiangtubiao2.getAvgtest_point4() <= celiangtubiao2.getPoint4_TH()
					&& celiangtubiao2.getAvgtest_point4() >= celiangtubiao2.getPoint4_TL()
					&& celiangtubiao2.getAvgtest_point5() <= celiangtubiao2.getPoint5_TH()
					&& celiangtubiao2.getAvgtest_point5() >= celiangtubiao2.getPoint5_TL()
					&& celiangtubiao2.getAvgtest_point6() <= celiangtubiao2.getPoint6_TH()
					&& celiangtubiao2.getAvgtest_point6() >= celiangtubiao2.getPoint6_TL()
					&& celiangtubiao2.getAvgoil_point() <= celiangtubiao2.getOil_TH()
					&& celiangtubiao2.getAvgoil_point() >= celiangtubiao2.getOil_TL()) {
				request.getSession().setAttribute("dian2", 2);
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian2", 3);
			}
		} else if (celiangtubiao2.getAvgtest_point1() != null && celiangtubiao2.getAvgtest_point2() != null
				&& celiangtubiao2.getAvgtest_point3() != null && celiangtubiao2.getAvgtest_point4() != null
				&& celiangtubiao2.getAvgtest_point5() != null && celiangtubiao2.getAvgoil_point() != null) {
			if (celiangtubiao2.getAvgtest_point1() <= celiangtubiao2.getPoint1_TH()
					&& celiangtubiao2.getAvgtest_point1() >= celiangtubiao2.getPoint1_TL()
					&& celiangtubiao2.getAvgtest_point2() <= celiangtubiao2.getPoint2_TH()
					&& celiangtubiao2.getAvgtest_point2() >= celiangtubiao2.getPoint2_TL()
					&& celiangtubiao2.getAvgtest_point3() <= celiangtubiao2.getPoint3_TH()
					&& celiangtubiao2.getAvgtest_point3() >= celiangtubiao2.getPoint3_TL()
					&& celiangtubiao2.getAvgtest_point4() <= celiangtubiao2.getPoint4_TH()
					&& celiangtubiao2.getAvgtest_point4() >= celiangtubiao2.getPoint4_TL()
					&& celiangtubiao2.getAvgtest_point5() <= celiangtubiao2.getPoint5_TH()
					&& celiangtubiao2.getAvgtest_point5() >= celiangtubiao2.getPoint5_TL()
					&& celiangtubiao2.getAvgoil_point() <= celiangtubiao2.getOil_TH()
					&& celiangtubiao2.getAvgoil_point() >= celiangtubiao2.getOil_TL()) {
				request.getSession().setAttribute("dian2", 2);
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian2", 3);
			}
		} else if (celiangtubiao2.getAvgtest_point1() != null && celiangtubiao2.getAvgtest_point2() != null
				&& celiangtubiao2.getAvgtest_point3() != null && celiangtubiao2.getAvgtest_point4() != null
				&& celiangtubiao2.getAvgoil_point() != null) {
			if (celiangtubiao2.getAvgtest_point1() <= celiangtubiao2.getPoint1_TH()
					&& celiangtubiao2.getAvgtest_point1() >= celiangtubiao2.getPoint1_TL()
					&& celiangtubiao2.getAvgtest_point2() <= celiangtubiao2.getPoint2_TH()
					&& celiangtubiao2.getAvgtest_point2() >= celiangtubiao2.getPoint2_TL()
					&& celiangtubiao2.getAvgtest_point3() <= celiangtubiao2.getPoint3_TH()
					&& celiangtubiao2.getAvgtest_point3() >= celiangtubiao2.getPoint3_TL()
					&& celiangtubiao2.getAvgtest_point4() <= celiangtubiao2.getPoint4_TH()
					&& celiangtubiao2.getAvgtest_point4() >= celiangtubiao2.getPoint4_TL()
					&& celiangtubiao2.getAvgoil_point() <= celiangtubiao2.getOil_TH()
					&& celiangtubiao2.getAvgoil_point() >= celiangtubiao2.getOil_TL()) {
				request.getSession().setAttribute("dian2", 2);
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian2", 3);
			}
		} else {
			request.getSession().setAttribute("dian2", 3);
		}
		if (celiangtubiao3 == null) {
			request.getSession().setAttribute("dian3", 1);
		} else if (celiangtubiao3.getAvgtest_point1() != null && celiangtubiao3.getAvgtest_point2() != null
				&& celiangtubiao3.getAvgtest_point3() != null && celiangtubiao3.getAvgtest_point4() != null
				&& celiangtubiao3.getAvgtest_point5() != null && celiangtubiao3.getAvgtest_point6() != null
				&& celiangtubiao3.getAvgtest_point7() != null && celiangtubiao3.getAvgtest_point8() != null
				&& celiangtubiao3.getAvgoil_point() != null) {
			if (celiangtubiao3.getAvgtest_point1() <= celiangtubiao3.getPoint1_TH()
					&& celiangtubiao3.getAvgtest_point1() >= celiangtubiao3.getPoint1_TL()
					&& celiangtubiao3.getAvgtest_point2() <= celiangtubiao3.getPoint2_TH()
					&& celiangtubiao3.getAvgtest_point2() >= celiangtubiao3.getPoint2_TL()
					&& celiangtubiao3.getAvgtest_point3() <= celiangtubiao3.getPoint3_TH()
					&& celiangtubiao3.getAvgtest_point3() >= celiangtubiao3.getPoint3_TL()
					&& celiangtubiao3.getAvgtest_point4() <= celiangtubiao3.getPoint4_TH()
					&& celiangtubiao3.getAvgtest_point4() >= celiangtubiao3.getPoint4_TL()
					&& celiangtubiao3.getAvgtest_point5() <= celiangtubiao3.getPoint5_TH()
					&& celiangtubiao3.getAvgtest_point5() >= celiangtubiao3.getPoint5_TL()
					&& celiangtubiao3.getAvgtest_point6() <= celiangtubiao3.getPoint6_TH()
					&& celiangtubiao3.getAvgtest_point6() >= celiangtubiao3.getPoint6_TL()
					&& celiangtubiao3.getAvgtest_point7() <= celiangtubiao3.getPoint7_TH()
					&& celiangtubiao3.getAvgtest_point7() >= celiangtubiao3.getPoint7_TL()
					&& celiangtubiao3.getAvgtest_point8() <= celiangtubiao3.getPoint8_TH()
					&& celiangtubiao3.getAvgtest_point8() >= celiangtubiao3.getPoint8_TL()
					&& celiangtubiao3.getAvgoil_point() <= celiangtubiao3.getOil_TH()
					&& celiangtubiao3.getAvgoil_point() >= celiangtubiao3.getOil_TL()) {
				request.getSession().setAttribute("dian3", 2);
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian3", 3);
			}
		} else if (celiangtubiao3.getAvgtest_point1() != null && celiangtubiao3.getAvgtest_point2() != null
				&& celiangtubiao3.getAvgtest_point3() != null && celiangtubiao3.getAvgtest_point4() != null
				&& celiangtubiao3.getAvgtest_point5() != null && celiangtubiao3.getAvgtest_point6() != null
				&& celiangtubiao3.getAvgtest_point7() != null && celiangtubiao3.getAvgoil_point() != null) {
			if (celiangtubiao3.getAvgtest_point1() <= celiangtubiao3.getPoint1_TH()
					&& celiangtubiao3.getAvgtest_point1() >= celiangtubiao3.getPoint1_TL()
					&& celiangtubiao3.getAvgtest_point2() <= celiangtubiao3.getPoint2_TH()
					&& celiangtubiao3.getAvgtest_point2() >= celiangtubiao3.getPoint2_TL()
					&& celiangtubiao3.getAvgtest_point3() <= celiangtubiao3.getPoint3_TH()
					&& celiangtubiao3.getAvgtest_point3() >= celiangtubiao3.getPoint3_TL()
					&& celiangtubiao3.getAvgtest_point4() <= celiangtubiao3.getPoint4_TH()
					&& celiangtubiao3.getAvgtest_point4() >= celiangtubiao3.getPoint4_TL()
					&& celiangtubiao3.getAvgtest_point5() <= celiangtubiao3.getPoint5_TH()
					&& celiangtubiao3.getAvgtest_point5() >= celiangtubiao3.getPoint5_TL()
					&& celiangtubiao3.getAvgtest_point6() <= celiangtubiao3.getPoint6_TH()
					&& celiangtubiao3.getAvgtest_point6() >= celiangtubiao3.getPoint6_TL()
					&& celiangtubiao3.getAvgtest_point7() <= celiangtubiao3.getPoint7_TH()
					&& celiangtubiao3.getAvgtest_point7() >= celiangtubiao3.getPoint7_TL()
					&& celiangtubiao3.getAvgoil_point() <= celiangtubiao3.getOil_TH()
					&& celiangtubiao3.getAvgoil_point() >= celiangtubiao3.getOil_TL()) {
				request.getSession().setAttribute("dian3", 2);
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian3", 3);
			}
		} else if (celiangtubiao3.getAvgtest_point1() != null && celiangtubiao3.getAvgtest_point2() != null
				&& celiangtubiao3.getAvgtest_point3() != null && celiangtubiao3.getAvgtest_point4() != null
				&& celiangtubiao3.getAvgtest_point5() != null && celiangtubiao3.getAvgtest_point6() != null
				&& celiangtubiao3.getAvgoil_point() != null) {
			if (celiangtubiao3.getAvgtest_point1() <= celiangtubiao3.getPoint1_TH()
					&& celiangtubiao3.getAvgtest_point1() >= celiangtubiao3.getPoint1_TL()
					&& celiangtubiao3.getAvgtest_point2() <= celiangtubiao3.getPoint2_TH()
					&& celiangtubiao3.getAvgtest_point2() >= celiangtubiao3.getPoint2_TL()
					&& celiangtubiao3.getAvgtest_point3() <= celiangtubiao3.getPoint3_TH()
					&& celiangtubiao3.getAvgtest_point3() >= celiangtubiao3.getPoint3_TL()
					&& celiangtubiao3.getAvgtest_point4() <= celiangtubiao3.getPoint4_TH()
					&& celiangtubiao3.getAvgtest_point4() >= celiangtubiao3.getPoint4_TL()
					&& celiangtubiao3.getAvgtest_point5() <= celiangtubiao3.getPoint5_TH()
					&& celiangtubiao3.getAvgtest_point5() >= celiangtubiao3.getPoint5_TL()
					&& celiangtubiao3.getAvgtest_point6() <= celiangtubiao3.getPoint6_TH()
					&& celiangtubiao3.getAvgtest_point6() >= celiangtubiao3.getPoint6_TL()
					&& celiangtubiao3.getAvgoil_point() <= celiangtubiao3.getOil_TH()
					&& celiangtubiao3.getAvgoil_point() >= celiangtubiao3.getOil_TL()) {
				request.getSession().setAttribute("dian3", 2);
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian3", 3);
			}
		} else if (celiangtubiao3.getAvgtest_point1() != null && celiangtubiao3.getAvgtest_point2() != null
				&& celiangtubiao3.getAvgtest_point3() != null && celiangtubiao3.getAvgtest_point4() != null
				&& celiangtubiao3.getAvgtest_point5() != null && celiangtubiao3.getAvgoil_point() != null) {
			if (celiangtubiao3.getAvgtest_point1() <= celiangtubiao3.getPoint1_TH()
					&& celiangtubiao3.getAvgtest_point1() >= celiangtubiao3.getPoint1_TL()
					&& celiangtubiao3.getAvgtest_point2() <= celiangtubiao3.getPoint2_TH()
					&& celiangtubiao3.getAvgtest_point2() >= celiangtubiao3.getPoint2_TL()
					&& celiangtubiao3.getAvgtest_point3() <= celiangtubiao3.getPoint3_TH()
					&& celiangtubiao3.getAvgtest_point3() >= celiangtubiao3.getPoint3_TL()
					&& celiangtubiao3.getAvgtest_point4() <= celiangtubiao3.getPoint4_TH()
					&& celiangtubiao3.getAvgtest_point4() >= celiangtubiao3.getPoint4_TL()
					&& celiangtubiao3.getAvgtest_point5() <= celiangtubiao3.getPoint5_TH()
					&& celiangtubiao3.getAvgtest_point5() >= celiangtubiao3.getPoint5_TL()
					&& celiangtubiao3.getAvgoil_point() <= celiangtubiao3.getOil_TH()
					&& celiangtubiao3.getAvgoil_point() >= celiangtubiao3.getOil_TL()) {
				request.getSession().setAttribute("dian3", 2);
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian3", 3);
			}
		} else if (celiangtubiao3.getAvgtest_point1() != null && celiangtubiao3.getAvgtest_point2() != null
				&& celiangtubiao3.getAvgtest_point3() != null && celiangtubiao3.getAvgtest_point4() != null
				&& celiangtubiao3.getAvgoil_point() != null) {
			if (celiangtubiao3.getAvgtest_point1() <= celiangtubiao3.getPoint1_TH()
					&& celiangtubiao3.getAvgtest_point1() >= celiangtubiao3.getPoint1_TL()
					&& celiangtubiao3.getAvgtest_point2() <= celiangtubiao3.getPoint2_TH()
					&& celiangtubiao3.getAvgtest_point2() >= celiangtubiao3.getPoint2_TL()
					&& celiangtubiao3.getAvgtest_point3() <= celiangtubiao3.getPoint3_TH()
					&& celiangtubiao3.getAvgtest_point3() >= celiangtubiao3.getPoint3_TL()
					&& celiangtubiao3.getAvgtest_point4() <= celiangtubiao3.getPoint4_TH()
					&& celiangtubiao3.getAvgtest_point4() >= celiangtubiao3.getPoint4_TL()
					&& celiangtubiao3.getAvgoil_point() <= celiangtubiao3.getOil_TH()
					&& celiangtubiao3.getAvgoil_point() >= celiangtubiao3.getOil_TL()) {
				request.getSession().setAttribute("dian3", 2);
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian3", 3);
			}
		} else {
			request.getSession().setAttribute("dian3", 3);
		}

		// 4
		if (celiangtubiao4 == null) {
			if (request.getSession().getAttribute("dian1") != null
					&& request.getSession().getAttribute("dian1").equals(2)) {
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian4", 1);
			}
		} else if (celiangtubiao4.getAvgtest_point1() != null && celiangtubiao4.getAvgtest_point2() != null
				&& celiangtubiao4.getAvgtest_point3() != null && celiangtubiao4.getAvgtest_point4() != null
				&& celiangtubiao4.getAvgtest_point5() != null && celiangtubiao4.getAvgtest_point6() != null
				&& celiangtubiao4.getAvgtest_point7() != null && celiangtubiao4.getAvgtest_point8() != null
				&& celiangtubiao4.getAvgoil_point() != null) {
			if (celiangtubiao4.getAvgtest_point1() <= celiangtubiao4.getPoint1_TH()
					&& celiangtubiao4.getAvgtest_point1() >= celiangtubiao4.getPoint1_TL()
					&& celiangtubiao4.getAvgtest_point2() <= celiangtubiao4.getPoint2_TH()
					&& celiangtubiao4.getAvgtest_point2() >= celiangtubiao4.getPoint2_TL()
					&& celiangtubiao4.getAvgtest_point3() <= celiangtubiao4.getPoint3_TH()
					&& celiangtubiao4.getAvgtest_point3() >= celiangtubiao4.getPoint3_TL()
					&& celiangtubiao4.getAvgtest_point4() <= celiangtubiao4.getPoint4_TH()
					&& celiangtubiao4.getAvgtest_point4() >= celiangtubiao4.getPoint4_TL()
					&& celiangtubiao4.getAvgtest_point5() <= celiangtubiao4.getPoint5_TH()
					&& celiangtubiao4.getAvgtest_point5() >= celiangtubiao4.getPoint5_TL()
					&& celiangtubiao4.getAvgtest_point6() <= celiangtubiao4.getPoint6_TH()
					&& celiangtubiao4.getAvgtest_point6() >= celiangtubiao4.getPoint6_TL()
					&& celiangtubiao4.getAvgtest_point7() <= celiangtubiao4.getPoint7_TH()
					&& celiangtubiao4.getAvgtest_point7() >= celiangtubiao4.getPoint7_TL()
					&& celiangtubiao4.getAvgtest_point8() <= celiangtubiao4.getPoint8_TH()
					&& celiangtubiao4.getAvgtest_point8() >= celiangtubiao4.getPoint8_TL()
					&& celiangtubiao4.getAvgoil_point() <= celiangtubiao4.getOil_TH()
					&& celiangtubiao4.getAvgoil_point() >= celiangtubiao4.getOil_TL()) {
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian4", 3);
			}
		} else if (celiangtubiao4.getAvgtest_point1() != null && celiangtubiao4.getAvgtest_point2() != null
				&& celiangtubiao4.getAvgtest_point3() != null && celiangtubiao4.getAvgtest_point4() != null
				&& celiangtubiao4.getAvgtest_point5() != null && celiangtubiao4.getAvgtest_point6() != null
				&& celiangtubiao4.getAvgtest_point7() != null && celiangtubiao4.getAvgoil_point() != null) {
			if (celiangtubiao4.getAvgtest_point1() <= celiangtubiao4.getPoint1_TH()
					&& celiangtubiao4.getAvgtest_point1() >= celiangtubiao4.getPoint1_TL()
					&& celiangtubiao4.getAvgtest_point2() <= celiangtubiao4.getPoint2_TH()
					&& celiangtubiao4.getAvgtest_point2() >= celiangtubiao4.getPoint2_TL()
					&& celiangtubiao4.getAvgtest_point3() <= celiangtubiao4.getPoint3_TH()
					&& celiangtubiao4.getAvgtest_point3() >= celiangtubiao4.getPoint3_TL()
					&& celiangtubiao4.getAvgtest_point4() <= celiangtubiao4.getPoint4_TH()
					&& celiangtubiao4.getAvgtest_point4() >= celiangtubiao4.getPoint4_TL()
					&& celiangtubiao4.getAvgtest_point5() <= celiangtubiao4.getPoint5_TH()
					&& celiangtubiao4.getAvgtest_point5() >= celiangtubiao4.getPoint5_TL()
					&& celiangtubiao4.getAvgtest_point6() <= celiangtubiao4.getPoint6_TH()
					&& celiangtubiao4.getAvgtest_point6() >= celiangtubiao4.getPoint6_TL()
					&& celiangtubiao4.getAvgtest_point7() <= celiangtubiao4.getPoint7_TH()
					&& celiangtubiao4.getAvgtest_point7() >= celiangtubiao4.getPoint7_TL()
					&& celiangtubiao4.getAvgoil_point() <= celiangtubiao4.getOil_TH()
					&& celiangtubiao4.getAvgoil_point() >= celiangtubiao4.getOil_TL()) {
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian4", 3);
			}
		} else if (celiangtubiao4.getAvgtest_point1() != null && celiangtubiao4.getAvgtest_point2() != null
				&& celiangtubiao4.getAvgtest_point3() != null && celiangtubiao4.getAvgtest_point4() != null
				&& celiangtubiao4.getAvgtest_point5() != null && celiangtubiao4.getAvgtest_point6() != null
				&& celiangtubiao4.getAvgoil_point() != null) {
			if (celiangtubiao4.getAvgtest_point1() <= celiangtubiao4.getPoint1_TH()
					&& celiangtubiao4.getAvgtest_point1() >= celiangtubiao4.getPoint1_TL()
					&& celiangtubiao4.getAvgtest_point2() <= celiangtubiao4.getPoint2_TH()
					&& celiangtubiao4.getAvgtest_point2() >= celiangtubiao4.getPoint2_TL()
					&& celiangtubiao4.getAvgtest_point3() <= celiangtubiao4.getPoint3_TH()
					&& celiangtubiao4.getAvgtest_point3() >= celiangtubiao4.getPoint3_TL()
					&& celiangtubiao4.getAvgtest_point4() <= celiangtubiao4.getPoint4_TH()
					&& celiangtubiao4.getAvgtest_point4() >= celiangtubiao4.getPoint4_TL()
					&& celiangtubiao4.getAvgtest_point5() <= celiangtubiao4.getPoint5_TH()
					&& celiangtubiao4.getAvgtest_point5() >= celiangtubiao4.getPoint5_TL()
					&& celiangtubiao4.getAvgtest_point6() <= celiangtubiao4.getPoint6_TH()
					&& celiangtubiao4.getAvgtest_point6() >= celiangtubiao4.getPoint6_TL()
					&& celiangtubiao4.getAvgoil_point() <= celiangtubiao4.getOil_TH()
					&& celiangtubiao4.getAvgoil_point() >= celiangtubiao4.getOil_TL()) {
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian4", 3);
			}
		} else if (celiangtubiao4.getAvgtest_point1() != null && celiangtubiao4.getAvgtest_point2() != null
				&& celiangtubiao4.getAvgtest_point3() != null && celiangtubiao4.getAvgtest_point4() != null
				&& celiangtubiao4.getAvgtest_point5() != null && celiangtubiao4.getAvgoil_point() != null) {
			if (celiangtubiao4.getAvgtest_point1() <= celiangtubiao4.getPoint1_TH()
					&& celiangtubiao4.getAvgtest_point1() >= celiangtubiao4.getPoint1_TL()
					&& celiangtubiao4.getAvgtest_point2() <= celiangtubiao4.getPoint2_TH()
					&& celiangtubiao4.getAvgtest_point2() >= celiangtubiao4.getPoint2_TL()
					&& celiangtubiao4.getAvgtest_point3() <= celiangtubiao4.getPoint3_TH()
					&& celiangtubiao4.getAvgtest_point3() >= celiangtubiao4.getPoint3_TL()
					&& celiangtubiao4.getAvgtest_point4() <= celiangtubiao4.getPoint4_TH()
					&& celiangtubiao4.getAvgtest_point4() >= celiangtubiao4.getPoint4_TL()
					&& celiangtubiao4.getAvgtest_point5() <= celiangtubiao4.getPoint5_TH()
					&& celiangtubiao4.getAvgtest_point5() >= celiangtubiao4.getPoint5_TL()
					&& celiangtubiao4.getAvgoil_point() <= celiangtubiao4.getOil_TH()
					&& celiangtubiao4.getAvgoil_point() >= celiangtubiao4.getOil_TL()) {
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian4", 3);
			}
		} else if (celiangtubiao4.getAvgtest_point1() != null && celiangtubiao4.getAvgtest_point2() != null
				&& celiangtubiao4.getAvgtest_point3() != null && celiangtubiao4.getAvgtest_point4() != null
				&& celiangtubiao4.getAvgoil_point() != null) {
			if (celiangtubiao4.getAvgtest_point1() <= celiangtubiao4.getPoint1_TH()
					&& celiangtubiao4.getAvgtest_point1() >= celiangtubiao4.getPoint1_TL()
					&& celiangtubiao4.getAvgtest_point2() <= celiangtubiao4.getPoint2_TH()
					&& celiangtubiao4.getAvgtest_point2() >= celiangtubiao4.getPoint2_TL()
					&& celiangtubiao4.getAvgtest_point3() <= celiangtubiao4.getPoint3_TH()
					&& celiangtubiao4.getAvgtest_point3() >= celiangtubiao4.getPoint3_TL()
					&& celiangtubiao4.getAvgtest_point4() <= celiangtubiao4.getPoint4_TH()
					&& celiangtubiao4.getAvgtest_point4() >= celiangtubiao4.getPoint4_TL()
					&& celiangtubiao4.getAvgoil_point() <= celiangtubiao4.getOil_TH()
					&& celiangtubiao4.getAvgoil_point() >= celiangtubiao4.getOil_TL()) {
				request.getSession().setAttribute("dian4", 2);
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian4", 3);
			}
		} else {
			request.getSession().setAttribute("dian4", 3);
		}
		// 5
		if (celiangtubiao5 == null) {
			if (request.getSession().getAttribute("dian2") != null
					&& request.getSession().getAttribute("dian2").equals(2)) {
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian5", 1);
			}
		} else if (celiangtubiao5.getAvgtest_point1() != null && celiangtubiao5.getAvgtest_point2() != null
				&& celiangtubiao5.getAvgtest_point3() != null && celiangtubiao5.getAvgtest_point4() != null
				&& celiangtubiao5.getAvgtest_point5() != null && celiangtubiao5.getAvgtest_point6() != null
				&& celiangtubiao5.getAvgtest_point7() != null && celiangtubiao5.getAvgtest_point8() != null
				&& celiangtubiao5.getAvgoil_point() != null) {
			if (celiangtubiao5.getAvgtest_point1() <= celiangtubiao5.getPoint1_TH()
					&& celiangtubiao5.getAvgtest_point1() >= celiangtubiao5.getPoint1_TL()
					&& celiangtubiao5.getAvgtest_point2() <= celiangtubiao5.getPoint2_TH()
					&& celiangtubiao5.getAvgtest_point2() >= celiangtubiao5.getPoint2_TL()
					&& celiangtubiao5.getAvgtest_point3() <= celiangtubiao5.getPoint3_TH()
					&& celiangtubiao5.getAvgtest_point3() >= celiangtubiao5.getPoint3_TL()
					&& celiangtubiao5.getAvgtest_point4() <= celiangtubiao5.getPoint4_TH()
					&& celiangtubiao5.getAvgtest_point4() >= celiangtubiao5.getPoint4_TL()
					&& celiangtubiao5.getAvgtest_point5() <= celiangtubiao5.getPoint5_TH()
					&& celiangtubiao5.getAvgtest_point5() >= celiangtubiao5.getPoint5_TL()
					&& celiangtubiao5.getAvgtest_point6() <= celiangtubiao5.getPoint6_TH()
					&& celiangtubiao5.getAvgtest_point6() >= celiangtubiao5.getPoint6_TL()
					&& celiangtubiao5.getAvgtest_point7() <= celiangtubiao5.getPoint7_TH()
					&& celiangtubiao5.getAvgtest_point7() >= celiangtubiao5.getPoint7_TL()
					&& celiangtubiao5.getAvgtest_point8() <= celiangtubiao5.getPoint8_TH()
					&& celiangtubiao5.getAvgtest_point8() >= celiangtubiao5.getPoint8_TL()
					&& celiangtubiao5.getAvgoil_point() <= celiangtubiao5.getOil_TH()
					&& celiangtubiao5.getAvgoil_point() >= celiangtubiao5.getOil_TL()) {
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian5", 3);
			}
		} else if (celiangtubiao5.getAvgtest_point1() != null && celiangtubiao5.getAvgtest_point2() != null
				&& celiangtubiao5.getAvgtest_point3() != null && celiangtubiao5.getAvgtest_point4() != null
				&& celiangtubiao5.getAvgtest_point5() != null && celiangtubiao5.getAvgtest_point6() != null
				&& celiangtubiao5.getAvgtest_point7() != null && celiangtubiao5.getAvgoil_point() != null) {
			if (celiangtubiao5.getAvgtest_point1() <= celiangtubiao5.getPoint1_TH()
					&& celiangtubiao5.getAvgtest_point1() >= celiangtubiao5.getPoint1_TL()
					&& celiangtubiao5.getAvgtest_point2() <= celiangtubiao5.getPoint2_TH()
					&& celiangtubiao5.getAvgtest_point2() >= celiangtubiao5.getPoint2_TL()
					&& celiangtubiao5.getAvgtest_point3() <= celiangtubiao5.getPoint3_TH()
					&& celiangtubiao5.getAvgtest_point3() >= celiangtubiao5.getPoint3_TL()
					&& celiangtubiao5.getAvgtest_point4() <= celiangtubiao5.getPoint4_TH()
					&& celiangtubiao5.getAvgtest_point4() >= celiangtubiao5.getPoint4_TL()
					&& celiangtubiao5.getAvgtest_point5() <= celiangtubiao5.getPoint5_TH()
					&& celiangtubiao5.getAvgtest_point5() >= celiangtubiao5.getPoint5_TL()
					&& celiangtubiao5.getAvgtest_point6() <= celiangtubiao5.getPoint6_TH()
					&& celiangtubiao5.getAvgtest_point6() >= celiangtubiao5.getPoint6_TL()
					&& celiangtubiao5.getAvgtest_point7() <= celiangtubiao5.getPoint7_TH()
					&& celiangtubiao5.getAvgtest_point7() >= celiangtubiao5.getPoint7_TL()
					&& celiangtubiao5.getAvgoil_point() <= celiangtubiao5.getOil_TH()
					&& celiangtubiao5.getAvgoil_point() >= celiangtubiao5.getOil_TL()) {
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian5", 3);
			}
		} else if (celiangtubiao5.getAvgtest_point1() != null && celiangtubiao5.getAvgtest_point2() != null
				&& celiangtubiao5.getAvgtest_point3() != null && celiangtubiao5.getAvgtest_point4() != null
				&& celiangtubiao5.getAvgtest_point5() != null && celiangtubiao5.getAvgtest_point6() != null
				&& celiangtubiao5.getAvgoil_point() != null) {
			if (celiangtubiao5.getAvgtest_point1() <= celiangtubiao5.getPoint1_TH()
					&& celiangtubiao5.getAvgtest_point1() >= celiangtubiao5.getPoint1_TL()
					&& celiangtubiao5.getAvgtest_point2() <= celiangtubiao5.getPoint2_TH()
					&& celiangtubiao5.getAvgtest_point2() >= celiangtubiao5.getPoint2_TL()
					&& celiangtubiao5.getAvgtest_point3() <= celiangtubiao5.getPoint3_TH()
					&& celiangtubiao5.getAvgtest_point3() >= celiangtubiao5.getPoint3_TL()
					&& celiangtubiao5.getAvgtest_point4() <= celiangtubiao5.getPoint4_TH()
					&& celiangtubiao5.getAvgtest_point4() >= celiangtubiao5.getPoint4_TL()
					&& celiangtubiao5.getAvgtest_point5() <= celiangtubiao5.getPoint5_TH()
					&& celiangtubiao5.getAvgtest_point5() >= celiangtubiao5.getPoint5_TL()
					&& celiangtubiao5.getAvgtest_point6() <= celiangtubiao5.getPoint6_TH()
					&& celiangtubiao5.getAvgtest_point6() >= celiangtubiao5.getPoint6_TL()
					&& celiangtubiao5.getAvgoil_point() <= celiangtubiao5.getOil_TH()
					&& celiangtubiao5.getAvgoil_point() >= celiangtubiao5.getOil_TL()) {
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian5", 3);
			}
		} else if (celiangtubiao5.getAvgtest_point1() != null && celiangtubiao5.getAvgtest_point2() != null
				&& celiangtubiao5.getAvgtest_point3() != null && celiangtubiao5.getAvgtest_point4() != null
				&& celiangtubiao5.getAvgtest_point5() != null && celiangtubiao5.getAvgoil_point() != null) {
			if (celiangtubiao5.getAvgtest_point1() <= celiangtubiao5.getPoint1_TH()
					&& celiangtubiao5.getAvgtest_point1() >= celiangtubiao5.getPoint1_TL()
					&& celiangtubiao5.getAvgtest_point2() <= celiangtubiao5.getPoint2_TH()
					&& celiangtubiao5.getAvgtest_point2() >= celiangtubiao5.getPoint2_TL()
					&& celiangtubiao5.getAvgtest_point3() <= celiangtubiao5.getPoint3_TH()
					&& celiangtubiao5.getAvgtest_point3() >= celiangtubiao5.getPoint3_TL()
					&& celiangtubiao5.getAvgtest_point4() <= celiangtubiao5.getPoint4_TH()
					&& celiangtubiao5.getAvgtest_point4() >= celiangtubiao5.getPoint4_TL()
					&& celiangtubiao5.getAvgtest_point5() <= celiangtubiao5.getPoint5_TH()
					&& celiangtubiao5.getAvgtest_point5() >= celiangtubiao5.getPoint5_TL()
					&& celiangtubiao5.getAvgoil_point() <= celiangtubiao5.getOil_TH()
					&& celiangtubiao5.getAvgoil_point() >= celiangtubiao5.getOil_TL()) {
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian5", 3);
			}
		} else if (celiangtubiao5.getAvgtest_point1() != null && celiangtubiao5.getAvgtest_point2() != null
				&& celiangtubiao5.getAvgtest_point3() != null && celiangtubiao5.getAvgtest_point4() != null
				&& celiangtubiao5.getAvgoil_point() != null) {
			if (celiangtubiao5.getAvgtest_point1() <= celiangtubiao5.getPoint1_TH()
					&& celiangtubiao5.getAvgtest_point1() >= celiangtubiao5.getPoint1_TL()
					&& celiangtubiao5.getAvgtest_point2() <= celiangtubiao5.getPoint2_TH()
					&& celiangtubiao5.getAvgtest_point2() >= celiangtubiao5.getPoint2_TL()
					&& celiangtubiao5.getAvgtest_point3() <= celiangtubiao5.getPoint3_TH()
					&& celiangtubiao5.getAvgtest_point3() >= celiangtubiao5.getPoint3_TL()
					&& celiangtubiao5.getAvgtest_point4() <= celiangtubiao5.getPoint4_TH()
					&& celiangtubiao5.getAvgtest_point4() >= celiangtubiao5.getPoint4_TL()
					&& celiangtubiao5.getAvgoil_point() <= celiangtubiao5.getOil_TH()
					&& celiangtubiao5.getAvgoil_point() >= celiangtubiao5.getOil_TL()) {
				request.getSession().setAttribute("dian5", 2);
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian5", 3);
			}
		} else {
			request.getSession().setAttribute("dian5", 3);
		}
		// 6
		if (celiangtubiao6 == null) {
			System.out.println("zounull");
			if (request.getSession().getAttribute("dian3") != null
					&& request.getSession().getAttribute("dian3").equals(2)) {
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian6", 1);
			}
		} else if (celiangtubiao6.getAvgtest_point1() != null && celiangtubiao6.getAvgtest_point2() != null
				&& celiangtubiao6.getAvgtest_point3() != null && celiangtubiao6.getAvgtest_point4() != null
				&& celiangtubiao6.getAvgtest_point5() != null && celiangtubiao6.getAvgtest_point6() != null
				&& celiangtubiao6.getAvgtest_point7() != null && celiangtubiao6.getAvgtest_point8() != null
				&& celiangtubiao6.getAvgoil_point() != null) {
			if (celiangtubiao6.getAvgtest_point1() <= celiangtubiao6.getPoint1_TH()
					&& celiangtubiao6.getAvgtest_point1() >= celiangtubiao6.getPoint1_TL()
					&& celiangtubiao6.getAvgtest_point2() <= celiangtubiao6.getPoint2_TH()
					&& celiangtubiao6.getAvgtest_point2() >= celiangtubiao6.getPoint2_TL()
					&& celiangtubiao6.getAvgtest_point3() <= celiangtubiao6.getPoint3_TH()
					&& celiangtubiao6.getAvgtest_point3() >= celiangtubiao6.getPoint3_TL()
					&& celiangtubiao6.getAvgtest_point4() <= celiangtubiao6.getPoint4_TH()
					&& celiangtubiao6.getAvgtest_point4() >= celiangtubiao6.getPoint4_TL()
					&& celiangtubiao6.getAvgtest_point5() <= celiangtubiao6.getPoint5_TH()
					&& celiangtubiao6.getAvgtest_point5() >= celiangtubiao6.getPoint5_TL()
					&& celiangtubiao6.getAvgtest_point6() <= celiangtubiao6.getPoint6_TH()
					&& celiangtubiao6.getAvgtest_point6() >= celiangtubiao6.getPoint6_TL()
					&& celiangtubiao6.getAvgtest_point7() <= celiangtubiao6.getPoint7_TH()
					&& celiangtubiao6.getAvgtest_point7() >= celiangtubiao6.getPoint7_TL()
					&& celiangtubiao6.getAvgtest_point8() <= celiangtubiao6.getPoint8_TH()
					&& celiangtubiao6.getAvgtest_point8() >= celiangtubiao6.getPoint8_TL()
					&& celiangtubiao6.getAvgoil_point() <= celiangtubiao6.getOil_TH()
					&& celiangtubiao6.getAvgoil_point() >= celiangtubiao6.getOil_TL()) {
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian6", 3);
			}
		} else if (celiangtubiao6.getAvgtest_point1() != null && celiangtubiao6.getAvgtest_point2() != null
				&& celiangtubiao6.getAvgtest_point3() != null && celiangtubiao6.getAvgtest_point4() != null
				&& celiangtubiao6.getAvgtest_point5() != null && celiangtubiao6.getAvgtest_point6() != null
				&& celiangtubiao6.getAvgtest_point7() != null && celiangtubiao6.getAvgoil_point() != null) {
			if (celiangtubiao6.getAvgtest_point1() <= celiangtubiao6.getPoint1_TH()
					&& celiangtubiao6.getAvgtest_point1() >= celiangtubiao6.getPoint1_TL()
					&& celiangtubiao6.getAvgtest_point2() <= celiangtubiao6.getPoint2_TH()
					&& celiangtubiao6.getAvgtest_point2() >= celiangtubiao6.getPoint2_TL()
					&& celiangtubiao6.getAvgtest_point3() <= celiangtubiao6.getPoint3_TH()
					&& celiangtubiao6.getAvgtest_point3() >= celiangtubiao6.getPoint3_TL()
					&& celiangtubiao6.getAvgtest_point4() <= celiangtubiao6.getPoint4_TH()
					&& celiangtubiao6.getAvgtest_point4() >= celiangtubiao6.getPoint4_TL()
					&& celiangtubiao6.getAvgtest_point5() <= celiangtubiao6.getPoint5_TH()
					&& celiangtubiao6.getAvgtest_point5() >= celiangtubiao6.getPoint5_TL()
					&& celiangtubiao6.getAvgtest_point6() <= celiangtubiao6.getPoint6_TH()
					&& celiangtubiao6.getAvgtest_point6() >= celiangtubiao6.getPoint6_TL()
					&& celiangtubiao6.getAvgtest_point7() <= celiangtubiao6.getPoint7_TH()
					&& celiangtubiao6.getAvgtest_point7() >= celiangtubiao6.getPoint7_TL()
					&& celiangtubiao6.getAvgoil_point() <= celiangtubiao6.getOil_TH()
					&& celiangtubiao6.getAvgoil_point() >= celiangtubiao6.getOil_TL()) {
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian6", 3);
			}
		} else if (celiangtubiao6.getAvgtest_point1() != null && celiangtubiao6.getAvgtest_point2() != null
				&& celiangtubiao6.getAvgtest_point3() != null && celiangtubiao6.getAvgtest_point4() != null
				&& celiangtubiao6.getAvgtest_point5() != null && celiangtubiao6.getAvgtest_point6() != null
				&& celiangtubiao6.getAvgoil_point() != null) {
			if (celiangtubiao6.getAvgtest_point1() <= celiangtubiao6.getPoint1_TH()
					&& celiangtubiao6.getAvgtest_point1() >= celiangtubiao6.getPoint1_TL()
					&& celiangtubiao6.getAvgtest_point2() <= celiangtubiao6.getPoint2_TH()
					&& celiangtubiao6.getAvgtest_point2() >= celiangtubiao6.getPoint2_TL()
					&& celiangtubiao6.getAvgtest_point3() <= celiangtubiao6.getPoint3_TH()
					&& celiangtubiao6.getAvgtest_point3() >= celiangtubiao6.getPoint3_TL()
					&& celiangtubiao6.getAvgtest_point4() <= celiangtubiao6.getPoint4_TH()
					&& celiangtubiao6.getAvgtest_point4() >= celiangtubiao6.getPoint4_TL()
					&& celiangtubiao6.getAvgtest_point5() <= celiangtubiao6.getPoint5_TH()
					&& celiangtubiao6.getAvgtest_point5() >= celiangtubiao6.getPoint5_TL()
					&& celiangtubiao6.getAvgtest_point6() <= celiangtubiao6.getPoint6_TH()
					&& celiangtubiao6.getAvgtest_point6() >= celiangtubiao6.getPoint6_TL()
					&& celiangtubiao6.getAvgoil_point() <= celiangtubiao6.getOil_TH()
					&& celiangtubiao6.getAvgoil_point() >= celiangtubiao6.getOil_TL()) {
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian6", 3);
			}
		} else if (celiangtubiao6.getAvgtest_point1() != null && celiangtubiao6.getAvgtest_point2() != null
				&& celiangtubiao6.getAvgtest_point3() != null && celiangtubiao6.getAvgtest_point4() != null
				&& celiangtubiao6.getAvgtest_point5() != null && celiangtubiao6.getAvgoil_point() != null) {
			if (celiangtubiao6.getAvgtest_point1() <= celiangtubiao6.getPoint1_TH()
					&& celiangtubiao6.getAvgtest_point1() >= celiangtubiao6.getPoint1_TL()
					&& celiangtubiao6.getAvgtest_point2() <= celiangtubiao6.getPoint2_TH()
					&& celiangtubiao6.getAvgtest_point2() >= celiangtubiao6.getPoint2_TL()
					&& celiangtubiao6.getAvgtest_point3() <= celiangtubiao6.getPoint3_TH()
					&& celiangtubiao6.getAvgtest_point3() >= celiangtubiao6.getPoint3_TL()
					&& celiangtubiao6.getAvgtest_point4() <= celiangtubiao6.getPoint4_TH()
					&& celiangtubiao6.getAvgtest_point4() >= celiangtubiao6.getPoint4_TL()
					&& celiangtubiao6.getAvgtest_point5() <= celiangtubiao6.getPoint5_TH()
					&& celiangtubiao6.getAvgtest_point5() >= celiangtubiao6.getPoint5_TL()
					&& celiangtubiao6.getAvgoil_point() <= celiangtubiao6.getOil_TH()
					&& celiangtubiao6.getAvgoil_point() >= celiangtubiao6.getOil_TL()) {
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian6", 3);
			}
		} else if (celiangtubiao6.getAvgtest_point1() != null && celiangtubiao6.getAvgtest_point2() != null
				&& celiangtubiao6.getAvgtest_point3() != null && celiangtubiao6.getAvgtest_point4() != null
				&& celiangtubiao6.getAvgoil_point() != null) {
			if (celiangtubiao6.getAvgtest_point1() <= celiangtubiao6.getPoint1_TH()
					&& celiangtubiao6.getAvgtest_point1() >= celiangtubiao6.getPoint1_TL()
					&& celiangtubiao6.getAvgtest_point2() <= celiangtubiao6.getPoint2_TH()
					&& celiangtubiao6.getAvgtest_point2() >= celiangtubiao6.getPoint2_TL()
					&& celiangtubiao6.getAvgtest_point3() <= celiangtubiao6.getPoint3_TH()
					&& celiangtubiao6.getAvgtest_point3() >= celiangtubiao6.getPoint3_TL()
					&& celiangtubiao6.getAvgtest_point4() <= celiangtubiao6.getPoint4_TH()
					&& celiangtubiao6.getAvgtest_point4() >= celiangtubiao6.getPoint4_TL()
					&& celiangtubiao6.getAvgoil_point() <= celiangtubiao6.getOil_TH()
					&& celiangtubiao6.getAvgoil_point() >= celiangtubiao6.getOil_TL()) {
				request.getSession().setAttribute("dian6", 2);
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian6", 3);
			}
		} else {
			System.out.println("都不符合");
			request.getSession().setAttribute("dian6", 3);
		}
		// 7
		if (celiangtubiao7 == null) {
			if (request.getSession().getAttribute("dian1") != null) {
				if (request.getSession().getAttribute("dian1").equals(2)) {
					request.getSession().setAttribute("dian7", 2);
				} else {
					if (request.getSession().getAttribute("dian4").equals(2)) {
						request.getSession().setAttribute("dian7", 2);
					} else {
						request.getSession().setAttribute("dian7", 1);
					}
				}

			} else {
				if (request.getSession().getAttribute("dian4").equals(2)) {
					request.getSession().setAttribute("dian7", 2);
				} else {
					request.getSession().setAttribute("dian7", 1);
				}
			}
		} else if (celiangtubiao7.getAvgtest_point1() != null && celiangtubiao7.getAvgtest_point2() != null
				&& celiangtubiao7.getAvgtest_point3() != null && celiangtubiao7.getAvgtest_point4() != null
				&& celiangtubiao7.getAvgtest_point5() != null && celiangtubiao7.getAvgtest_point6() != null
				&& celiangtubiao7.getAvgtest_point7() != null && celiangtubiao7.getAvgtest_point8() != null
				&& celiangtubiao7.getAvgoil_point() != null) {
			if (celiangtubiao7.getAvgtest_point1() <= celiangtubiao7.getPoint1_TH()
					&& celiangtubiao7.getAvgtest_point1() >= celiangtubiao7.getPoint1_TL()
					&& celiangtubiao7.getAvgtest_point2() <= celiangtubiao7.getPoint2_TH()
					&& celiangtubiao7.getAvgtest_point2() >= celiangtubiao7.getPoint2_TL()
					&& celiangtubiao7.getAvgtest_point3() <= celiangtubiao7.getPoint3_TH()
					&& celiangtubiao7.getAvgtest_point3() >= celiangtubiao7.getPoint3_TL()
					&& celiangtubiao7.getAvgtest_point4() <= celiangtubiao7.getPoint4_TH()
					&& celiangtubiao7.getAvgtest_point4() >= celiangtubiao7.getPoint4_TL()
					&& celiangtubiao7.getAvgtest_point5() <= celiangtubiao7.getPoint5_TH()
					&& celiangtubiao7.getAvgtest_point5() >= celiangtubiao7.getPoint5_TL()
					&& celiangtubiao7.getAvgtest_point6() <= celiangtubiao7.getPoint6_TH()
					&& celiangtubiao7.getAvgtest_point6() >= celiangtubiao7.getPoint6_TL()
					&& celiangtubiao7.getAvgtest_point7() <= celiangtubiao7.getPoint7_TH()
					&& celiangtubiao7.getAvgtest_point7() >= celiangtubiao7.getPoint7_TL()
					&& celiangtubiao7.getAvgtest_point8() <= celiangtubiao7.getPoint8_TH()
					&& celiangtubiao7.getAvgtest_point8() >= celiangtubiao7.getPoint8_TL()
					&& celiangtubiao7.getAvgoil_point() <= celiangtubiao7.getOil_TH()
					&& celiangtubiao7.getAvgoil_point() >= celiangtubiao7.getOil_TL()) {
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian7", 3);
			}
		} else if (celiangtubiao7.getAvgtest_point1() != null && celiangtubiao7.getAvgtest_point2() != null
				&& celiangtubiao7.getAvgtest_point3() != null && celiangtubiao7.getAvgtest_point4() != null
				&& celiangtubiao7.getAvgtest_point5() != null && celiangtubiao7.getAvgtest_point6() != null
				&& celiangtubiao7.getAvgtest_point7() != null && celiangtubiao7.getAvgoil_point() != null) {
			if (celiangtubiao7.getAvgtest_point1() <= celiangtubiao7.getPoint1_TH()
					&& celiangtubiao7.getAvgtest_point1() >= celiangtubiao7.getPoint1_TL()
					&& celiangtubiao7.getAvgtest_point2() <= celiangtubiao7.getPoint2_TH()
					&& celiangtubiao7.getAvgtest_point2() >= celiangtubiao7.getPoint2_TL()
					&& celiangtubiao7.getAvgtest_point3() <= celiangtubiao7.getPoint3_TH()
					&& celiangtubiao7.getAvgtest_point3() >= celiangtubiao7.getPoint3_TL()
					&& celiangtubiao7.getAvgtest_point4() <= celiangtubiao7.getPoint4_TH()
					&& celiangtubiao7.getAvgtest_point4() >= celiangtubiao7.getPoint4_TL()
					&& celiangtubiao7.getAvgtest_point5() <= celiangtubiao7.getPoint5_TH()
					&& celiangtubiao7.getAvgtest_point5() >= celiangtubiao7.getPoint5_TL()
					&& celiangtubiao7.getAvgtest_point6() <= celiangtubiao7.getPoint6_TH()
					&& celiangtubiao7.getAvgtest_point6() >= celiangtubiao7.getPoint6_TL()
					&& celiangtubiao7.getAvgtest_point7() <= celiangtubiao7.getPoint7_TH()
					&& celiangtubiao7.getAvgtest_point7() >= celiangtubiao7.getPoint7_TL()
					&& celiangtubiao7.getAvgoil_point() <= celiangtubiao7.getOil_TH()
					&& celiangtubiao7.getAvgoil_point() >= celiangtubiao7.getOil_TL()) {
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian7", 3);
			}
		} else if (celiangtubiao7.getAvgtest_point1() != null && celiangtubiao7.getAvgtest_point2() != null
				&& celiangtubiao7.getAvgtest_point3() != null && celiangtubiao7.getAvgtest_point4() != null
				&& celiangtubiao7.getAvgtest_point5() != null && celiangtubiao7.getAvgtest_point6() != null
				&& celiangtubiao7.getAvgoil_point() != null) {
			if (celiangtubiao7.getAvgtest_point1() <= celiangtubiao7.getPoint1_TH()
					&& celiangtubiao7.getAvgtest_point1() >= celiangtubiao7.getPoint1_TL()
					&& celiangtubiao7.getAvgtest_point2() <= celiangtubiao7.getPoint2_TH()
					&& celiangtubiao7.getAvgtest_point2() >= celiangtubiao7.getPoint2_TL()
					&& celiangtubiao7.getAvgtest_point3() <= celiangtubiao7.getPoint3_TH()
					&& celiangtubiao7.getAvgtest_point3() >= celiangtubiao7.getPoint3_TL()
					&& celiangtubiao7.getAvgtest_point4() <= celiangtubiao7.getPoint4_TH()
					&& celiangtubiao7.getAvgtest_point4() >= celiangtubiao7.getPoint4_TL()
					&& celiangtubiao7.getAvgtest_point5() <= celiangtubiao7.getPoint5_TH()
					&& celiangtubiao7.getAvgtest_point5() >= celiangtubiao7.getPoint5_TL()
					&& celiangtubiao7.getAvgtest_point6() <= celiangtubiao7.getPoint6_TH()
					&& celiangtubiao7.getAvgtest_point6() >= celiangtubiao7.getPoint6_TL()
					&& celiangtubiao7.getAvgoil_point() <= celiangtubiao7.getOil_TH()
					&& celiangtubiao7.getAvgoil_point() >= celiangtubiao7.getOil_TL()) {
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian7", 3);
			}
		} else if (celiangtubiao7.getAvgtest_point1() != null && celiangtubiao7.getAvgtest_point2() != null
				&& celiangtubiao7.getAvgtest_point3() != null && celiangtubiao7.getAvgtest_point4() != null
				&& celiangtubiao7.getAvgtest_point5() != null && celiangtubiao7.getAvgoil_point() != null) {
			if (celiangtubiao7.getAvgtest_point1() <= celiangtubiao7.getPoint1_TH()
					&& celiangtubiao7.getAvgtest_point1() >= celiangtubiao7.getPoint1_TL()
					&& celiangtubiao7.getAvgtest_point2() <= celiangtubiao7.getPoint2_TH()
					&& celiangtubiao7.getAvgtest_point2() >= celiangtubiao7.getPoint2_TL()
					&& celiangtubiao7.getAvgtest_point3() <= celiangtubiao7.getPoint3_TH()
					&& celiangtubiao7.getAvgtest_point3() >= celiangtubiao7.getPoint3_TL()
					&& celiangtubiao7.getAvgtest_point4() <= celiangtubiao7.getPoint4_TH()
					&& celiangtubiao7.getAvgtest_point4() >= celiangtubiao7.getPoint4_TL()
					&& celiangtubiao7.getAvgtest_point5() <= celiangtubiao7.getPoint5_TH()
					&& celiangtubiao7.getAvgtest_point5() >= celiangtubiao7.getPoint5_TL()
					&& celiangtubiao7.getAvgoil_point() <= celiangtubiao7.getOil_TH()
					&& celiangtubiao7.getAvgoil_point() >= celiangtubiao7.getOil_TL()) {
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian7", 3);
			}
		} else if (celiangtubiao7.getAvgtest_point1() != null && celiangtubiao7.getAvgtest_point2() != null
				&& celiangtubiao7.getAvgtest_point3() != null && celiangtubiao7.getAvgtest_point4() != null
				&& celiangtubiao7.getAvgoil_point() != null) {
			if (celiangtubiao7.getAvgtest_point1() <= celiangtubiao7.getPoint1_TH()
					&& celiangtubiao7.getAvgtest_point1() >= celiangtubiao7.getPoint1_TL()
					&& celiangtubiao7.getAvgtest_point2() <= celiangtubiao7.getPoint2_TH()
					&& celiangtubiao7.getAvgtest_point2() >= celiangtubiao7.getPoint2_TL()
					&& celiangtubiao7.getAvgtest_point3() <= celiangtubiao7.getPoint3_TH()
					&& celiangtubiao7.getAvgtest_point3() >= celiangtubiao7.getPoint3_TL()
					&& celiangtubiao7.getAvgtest_point4() <= celiangtubiao7.getPoint4_TH()
					&& celiangtubiao7.getAvgtest_point4() >= celiangtubiao7.getPoint4_TL()
					&& celiangtubiao7.getAvgoil_point() <= celiangtubiao7.getOil_TH()
					&& celiangtubiao7.getAvgoil_point() >= celiangtubiao7.getOil_TL()) {
				request.getSession().setAttribute("dian7", 2);
			} else {
				request.getSession().setAttribute("dian7", 3);
			}
		} else {
			request.getSession().setAttribute("dian7", 3);
		}
		// 8
		if (celiangtubiao8 == null) {
			if (request.getSession().getAttribute("dian2") != null) {
				if (request.getSession().getAttribute("dian2").equals(2)) {
					request.getSession().setAttribute("dian8", 2);
				} else {
					if (request.getSession().getAttribute("dian5").equals(2)) {
						request.getSession().setAttribute("dian8", 2);
					} else {
						request.getSession().setAttribute("dian8", 1);
					}
				}

			} else {
				if (request.getSession().getAttribute("dian5").equals(2)) {
					request.getSession().setAttribute("dian8", 2);
				} else {
					request.getSession().setAttribute("dian8", 1);
				}
			}
		} else if (celiangtubiao8.getAvgtest_point1() != null && celiangtubiao8.getAvgtest_point2() != null
				&& celiangtubiao8.getAvgtest_point3() != null && celiangtubiao8.getAvgtest_point4() != null
				&& celiangtubiao8.getAvgtest_point5() != null && celiangtubiao8.getAvgtest_point6() != null
				&& celiangtubiao8.getAvgtest_point7() != null && celiangtubiao8.getAvgtest_point8() != null
				&& celiangtubiao8.getAvgoil_point() != null) {
			if (celiangtubiao8.getAvgtest_point1() <= celiangtubiao8.getPoint1_TH()
					&& celiangtubiao8.getAvgtest_point1() >= celiangtubiao8.getPoint1_TL()
					&& celiangtubiao8.getAvgtest_point2() <= celiangtubiao8.getPoint2_TH()
					&& celiangtubiao8.getAvgtest_point2() >= celiangtubiao8.getPoint2_TL()
					&& celiangtubiao8.getAvgtest_point3() <= celiangtubiao8.getPoint3_TH()
					&& celiangtubiao8.getAvgtest_point3() >= celiangtubiao8.getPoint3_TL()
					&& celiangtubiao8.getAvgtest_point4() <= celiangtubiao8.getPoint4_TH()
					&& celiangtubiao8.getAvgtest_point4() >= celiangtubiao8.getPoint4_TL()
					&& celiangtubiao8.getAvgtest_point5() <= celiangtubiao8.getPoint5_TH()
					&& celiangtubiao8.getAvgtest_point5() >= celiangtubiao8.getPoint5_TL()
					&& celiangtubiao8.getAvgtest_point6() <= celiangtubiao8.getPoint6_TH()
					&& celiangtubiao8.getAvgtest_point6() >= celiangtubiao8.getPoint6_TL()
					&& celiangtubiao8.getAvgtest_point7() <= celiangtubiao8.getPoint7_TH()
					&& celiangtubiao8.getAvgtest_point7() >= celiangtubiao8.getPoint7_TL()
					&& celiangtubiao8.getAvgtest_point8() <= celiangtubiao8.getPoint8_TH()
					&& celiangtubiao8.getAvgtest_point8() >= celiangtubiao8.getPoint8_TL()
					&& celiangtubiao8.getAvgoil_point() <= celiangtubiao8.getOil_TH()
					&& celiangtubiao8.getAvgoil_point() >= celiangtubiao8.getOil_TL()) {
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian8", 3);
			}
		} else if (celiangtubiao8.getAvgtest_point1() != null && celiangtubiao8.getAvgtest_point2() != null
				&& celiangtubiao8.getAvgtest_point3() != null && celiangtubiao8.getAvgtest_point4() != null
				&& celiangtubiao8.getAvgtest_point5() != null && celiangtubiao8.getAvgtest_point6() != null
				&& celiangtubiao8.getAvgtest_point7() != null && celiangtubiao8.getAvgoil_point() != null) {
			if (celiangtubiao8.getAvgtest_point1() <= celiangtubiao8.getPoint1_TH()
					&& celiangtubiao8.getAvgtest_point1() >= celiangtubiao8.getPoint1_TL()
					&& celiangtubiao8.getAvgtest_point2() <= celiangtubiao8.getPoint2_TH()
					&& celiangtubiao8.getAvgtest_point2() >= celiangtubiao8.getPoint2_TL()
					&& celiangtubiao8.getAvgtest_point3() <= celiangtubiao8.getPoint3_TH()
					&& celiangtubiao8.getAvgtest_point3() >= celiangtubiao8.getPoint3_TL()
					&& celiangtubiao8.getAvgtest_point4() <= celiangtubiao8.getPoint4_TH()
					&& celiangtubiao8.getAvgtest_point4() >= celiangtubiao8.getPoint4_TL()
					&& celiangtubiao8.getAvgtest_point5() <= celiangtubiao8.getPoint5_TH()
					&& celiangtubiao8.getAvgtest_point5() >= celiangtubiao8.getPoint5_TL()
					&& celiangtubiao8.getAvgtest_point6() <= celiangtubiao8.getPoint6_TH()
					&& celiangtubiao8.getAvgtest_point6() >= celiangtubiao8.getPoint6_TL()
					&& celiangtubiao8.getAvgtest_point7() <= celiangtubiao8.getPoint7_TH()
					&& celiangtubiao8.getAvgtest_point7() >= celiangtubiao8.getPoint7_TL()
					&& celiangtubiao8.getAvgoil_point() <= celiangtubiao8.getOil_TH()
					&& celiangtubiao8.getAvgoil_point() >= celiangtubiao8.getOil_TL()) {
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian8", 3);
			}
		} else if (celiangtubiao8.getAvgtest_point1() != null && celiangtubiao8.getAvgtest_point2() != null
				&& celiangtubiao8.getAvgtest_point3() != null && celiangtubiao8.getAvgtest_point4() != null
				&& celiangtubiao8.getAvgtest_point5() != null && celiangtubiao8.getAvgtest_point6() != null
				&& celiangtubiao8.getAvgoil_point() != null) {
			if (celiangtubiao8.getAvgtest_point1() <= celiangtubiao8.getPoint1_TH()
					&& celiangtubiao8.getAvgtest_point1() >= celiangtubiao8.getPoint1_TL()
					&& celiangtubiao8.getAvgtest_point2() <= celiangtubiao8.getPoint2_TH()
					&& celiangtubiao8.getAvgtest_point2() >= celiangtubiao8.getPoint2_TL()
					&& celiangtubiao8.getAvgtest_point3() <= celiangtubiao8.getPoint3_TH()
					&& celiangtubiao8.getAvgtest_point3() >= celiangtubiao8.getPoint3_TL()
					&& celiangtubiao8.getAvgtest_point4() <= celiangtubiao8.getPoint4_TH()
					&& celiangtubiao8.getAvgtest_point4() >= celiangtubiao8.getPoint4_TL()
					&& celiangtubiao8.getAvgtest_point5() <= celiangtubiao8.getPoint5_TH()
					&& celiangtubiao8.getAvgtest_point5() >= celiangtubiao8.getPoint5_TL()
					&& celiangtubiao8.getAvgtest_point6() <= celiangtubiao8.getPoint6_TH()
					&& celiangtubiao8.getAvgtest_point6() >= celiangtubiao8.getPoint6_TL()
					&& celiangtubiao8.getAvgoil_point() <= celiangtubiao8.getOil_TH()
					&& celiangtubiao8.getAvgoil_point() >= celiangtubiao8.getOil_TL()) {
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian8", 3);
			}
		} else if (celiangtubiao8.getAvgtest_point1() != null && celiangtubiao8.getAvgtest_point2() != null
				&& celiangtubiao8.getAvgtest_point3() != null && celiangtubiao8.getAvgtest_point4() != null
				&& celiangtubiao8.getAvgtest_point5() != null && celiangtubiao8.getAvgoil_point() != null) {
			if (celiangtubiao8.getAvgtest_point1() <= celiangtubiao8.getPoint1_TH()
					&& celiangtubiao8.getAvgtest_point1() >= celiangtubiao8.getPoint1_TL()
					&& celiangtubiao8.getAvgtest_point2() <= celiangtubiao8.getPoint2_TH()
					&& celiangtubiao8.getAvgtest_point2() >= celiangtubiao8.getPoint2_TL()
					&& celiangtubiao8.getAvgtest_point3() <= celiangtubiao8.getPoint3_TH()
					&& celiangtubiao8.getAvgtest_point3() >= celiangtubiao8.getPoint3_TL()
					&& celiangtubiao8.getAvgtest_point4() <= celiangtubiao8.getPoint4_TH()
					&& celiangtubiao8.getAvgtest_point4() >= celiangtubiao8.getPoint4_TL()
					&& celiangtubiao8.getAvgtest_point5() <= celiangtubiao8.getPoint5_TH()
					&& celiangtubiao8.getAvgtest_point5() >= celiangtubiao8.getPoint5_TL()
					&& celiangtubiao8.getAvgoil_point() <= celiangtubiao8.getOil_TH()
					&& celiangtubiao8.getAvgoil_point() >= celiangtubiao8.getOil_TL()) {
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian8", 3);
			}
		} else if (celiangtubiao8.getAvgtest_point1() != null && celiangtubiao8.getAvgtest_point2() != null
				&& celiangtubiao8.getAvgtest_point3() != null && celiangtubiao8.getAvgtest_point4() != null
				&& celiangtubiao8.getAvgoil_point() != null) {
			if (celiangtubiao8.getAvgtest_point1() <= celiangtubiao8.getPoint1_TH()
					&& celiangtubiao8.getAvgtest_point1() >= celiangtubiao8.getPoint1_TL()
					&& celiangtubiao8.getAvgtest_point2() <= celiangtubiao8.getPoint2_TH()
					&& celiangtubiao8.getAvgtest_point2() >= celiangtubiao8.getPoint2_TL()
					&& celiangtubiao8.getAvgtest_point3() <= celiangtubiao8.getPoint3_TH()
					&& celiangtubiao8.getAvgtest_point3() >= celiangtubiao8.getPoint3_TL()
					&& celiangtubiao8.getAvgtest_point4() <= celiangtubiao8.getPoint4_TH()
					&& celiangtubiao8.getAvgtest_point4() >= celiangtubiao8.getPoint4_TL()
					&& celiangtubiao8.getAvgoil_point() <= celiangtubiao8.getOil_TH()
					&& celiangtubiao8.getAvgoil_point() >= celiangtubiao8.getOil_TL()) {
				request.getSession().setAttribute("dian8", 2);
			} else {
				request.getSession().setAttribute("dian8", 3);
			}
		} else {
			request.getSession().setAttribute("dian8", 3);
		}

		// 9
		if (celiangtubiao9 == null) {
			if (request.getSession().getAttribute("dian3") != null) {
				if (request.getSession().getAttribute("dian3").equals(2)) {
					request.getSession().setAttribute("dian9", 2);
				} else {
					if (request.getSession().getAttribute("dian6").equals(2)) {
						request.getSession().setAttribute("dian9", 2);
					} else {
						request.getSession().setAttribute("dian9", 1);
					}
				}

			} else {
				if (request.getSession().getAttribute("dian6").equals(2)) {
					request.getSession().setAttribute("dian9", 2);
				} else {
					request.getSession().setAttribute("dian9", 1);
				}
			}
		} else if (celiangtubiao9.getAvgtest_point1() != null && celiangtubiao9.getAvgtest_point2() != null
				&& celiangtubiao9.getAvgtest_point3() != null && celiangtubiao9.getAvgtest_point4() != null
				&& celiangtubiao9.getAvgtest_point5() != null && celiangtubiao9.getAvgtest_point6() != null
				&& celiangtubiao9.getAvgtest_point7() != null && celiangtubiao9.getAvgtest_point8() != null
				&& celiangtubiao9.getAvgoil_point() != null) {
			if (celiangtubiao9.getAvgtest_point1() <= celiangtubiao9.getPoint1_TH()
					&& celiangtubiao9.getAvgtest_point1() >= celiangtubiao9.getPoint1_TL()
					&& celiangtubiao9.getAvgtest_point2() <= celiangtubiao9.getPoint2_TH()
					&& celiangtubiao9.getAvgtest_point2() >= celiangtubiao9.getPoint2_TL()
					&& celiangtubiao9.getAvgtest_point3() <= celiangtubiao9.getPoint3_TH()
					&& celiangtubiao9.getAvgtest_point3() >= celiangtubiao9.getPoint3_TL()
					&& celiangtubiao9.getAvgtest_point4() <= celiangtubiao9.getPoint4_TH()
					&& celiangtubiao9.getAvgtest_point4() >= celiangtubiao9.getPoint4_TL()
					&& celiangtubiao9.getAvgtest_point5() <= celiangtubiao9.getPoint5_TH()
					&& celiangtubiao9.getAvgtest_point5() >= celiangtubiao9.getPoint5_TL()
					&& celiangtubiao9.getAvgtest_point6() <= celiangtubiao9.getPoint6_TH()
					&& celiangtubiao9.getAvgtest_point6() >= celiangtubiao9.getPoint6_TL()
					&& celiangtubiao9.getAvgtest_point7() <= celiangtubiao9.getPoint7_TH()
					&& celiangtubiao9.getAvgtest_point7() >= celiangtubiao9.getPoint7_TL()
					&& celiangtubiao9.getAvgtest_point8() <= celiangtubiao9.getPoint8_TH()
					&& celiangtubiao9.getAvgtest_point8() >= celiangtubiao9.getPoint8_TL()
					&& celiangtubiao9.getAvgoil_point() <= celiangtubiao9.getOil_TH()
					&& celiangtubiao9.getAvgoil_point() >= celiangtubiao9.getOil_TL()) {
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian9", 3);
			}
		} else if (celiangtubiao9.getAvgtest_point1() != null && celiangtubiao9.getAvgtest_point2() != null
				&& celiangtubiao9.getAvgtest_point3() != null && celiangtubiao9.getAvgtest_point4() != null
				&& celiangtubiao9.getAvgtest_point5() != null && celiangtubiao9.getAvgtest_point6() != null
				&& celiangtubiao9.getAvgtest_point7() != null && celiangtubiao9.getAvgoil_point() != null) {
			if (celiangtubiao9.getAvgtest_point1() <= celiangtubiao9.getPoint1_TH()
					&& celiangtubiao9.getAvgtest_point1() >= celiangtubiao9.getPoint1_TL()
					&& celiangtubiao9.getAvgtest_point2() <= celiangtubiao9.getPoint2_TH()
					&& celiangtubiao9.getAvgtest_point2() >= celiangtubiao9.getPoint2_TL()
					&& celiangtubiao9.getAvgtest_point3() <= celiangtubiao9.getPoint3_TH()
					&& celiangtubiao9.getAvgtest_point3() >= celiangtubiao9.getPoint3_TL()
					&& celiangtubiao9.getAvgtest_point4() <= celiangtubiao9.getPoint4_TH()
					&& celiangtubiao9.getAvgtest_point4() >= celiangtubiao9.getPoint4_TL()
					&& celiangtubiao9.getAvgtest_point5() <= celiangtubiao9.getPoint5_TH()
					&& celiangtubiao9.getAvgtest_point5() >= celiangtubiao9.getPoint5_TL()
					&& celiangtubiao9.getAvgtest_point6() <= celiangtubiao9.getPoint6_TH()
					&& celiangtubiao9.getAvgtest_point6() >= celiangtubiao9.getPoint6_TL()
					&& celiangtubiao9.getAvgtest_point7() <= celiangtubiao9.getPoint7_TH()
					&& celiangtubiao9.getAvgtest_point7() >= celiangtubiao9.getPoint7_TL()
					&& celiangtubiao9.getAvgoil_point() <= celiangtubiao9.getOil_TH()
					&& celiangtubiao9.getAvgoil_point() >= celiangtubiao9.getOil_TL()) {
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian9", 3);
			}
		} else if (celiangtubiao9.getAvgtest_point1() != null && celiangtubiao9.getAvgtest_point2() != null
				&& celiangtubiao9.getAvgtest_point3() != null && celiangtubiao9.getAvgtest_point4() != null
				&& celiangtubiao9.getAvgtest_point5() != null && celiangtubiao9.getAvgtest_point6() != null
				&& celiangtubiao9.getAvgoil_point() != null) {
			if (celiangtubiao9.getAvgtest_point1() <= celiangtubiao9.getPoint1_TH()
					&& celiangtubiao9.getAvgtest_point1() >= celiangtubiao9.getPoint1_TL()
					&& celiangtubiao9.getAvgtest_point2() <= celiangtubiao9.getPoint2_TH()
					&& celiangtubiao9.getAvgtest_point2() >= celiangtubiao9.getPoint2_TL()
					&& celiangtubiao9.getAvgtest_point3() <= celiangtubiao9.getPoint3_TH()
					&& celiangtubiao9.getAvgtest_point3() >= celiangtubiao9.getPoint3_TL()
					&& celiangtubiao9.getAvgtest_point4() <= celiangtubiao9.getPoint4_TH()
					&& celiangtubiao9.getAvgtest_point4() >= celiangtubiao9.getPoint4_TL()
					&& celiangtubiao9.getAvgtest_point5() <= celiangtubiao9.getPoint5_TH()
					&& celiangtubiao9.getAvgtest_point5() >= celiangtubiao9.getPoint5_TL()
					&& celiangtubiao9.getAvgtest_point6() <= celiangtubiao9.getPoint6_TH()
					&& celiangtubiao9.getAvgtest_point6() >= celiangtubiao9.getPoint6_TL()
					&& celiangtubiao9.getAvgoil_point() <= celiangtubiao9.getOil_TH()
					&& celiangtubiao9.getAvgoil_point() >= celiangtubiao9.getOil_TL()) {
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian9", 3);
			}
		} else if (celiangtubiao9.getAvgtest_point1() != null && celiangtubiao9.getAvgtest_point2() != null
				&& celiangtubiao9.getAvgtest_point3() != null && celiangtubiao9.getAvgtest_point4() != null
				&& celiangtubiao9.getAvgtest_point5() != null && celiangtubiao9.getAvgoil_point() != null) {
			if (celiangtubiao9.getAvgtest_point1() <= celiangtubiao9.getPoint1_TH()
					&& celiangtubiao9.getAvgtest_point1() >= celiangtubiao9.getPoint1_TL()
					&& celiangtubiao9.getAvgtest_point2() <= celiangtubiao9.getPoint2_TH()
					&& celiangtubiao9.getAvgtest_point2() >= celiangtubiao9.getPoint2_TL()
					&& celiangtubiao9.getAvgtest_point3() <= celiangtubiao9.getPoint3_TH()
					&& celiangtubiao9.getAvgtest_point3() >= celiangtubiao9.getPoint3_TL()
					&& celiangtubiao9.getAvgtest_point4() <= celiangtubiao9.getPoint4_TH()
					&& celiangtubiao9.getAvgtest_point4() >= celiangtubiao9.getPoint4_TL()
					&& celiangtubiao9.getAvgtest_point5() <= celiangtubiao9.getPoint5_TH()
					&& celiangtubiao9.getAvgtest_point5() >= celiangtubiao9.getPoint5_TL()
					&& celiangtubiao9.getAvgoil_point() <= celiangtubiao9.getOil_TH()
					&& celiangtubiao9.getAvgoil_point() >= celiangtubiao9.getOil_TL()) {
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian9", 3);
			}
		} else if (celiangtubiao9.getAvgtest_point1() != null && celiangtubiao9.getAvgtest_point2() != null
				&& celiangtubiao9.getAvgtest_point3() != null && celiangtubiao9.getAvgtest_point4() != null
				&& celiangtubiao9.getAvgoil_point() != null) {
			if (celiangtubiao9.getAvgtest_point1() <= celiangtubiao9.getPoint1_TH()
					&& celiangtubiao9.getAvgtest_point1() >= celiangtubiao9.getPoint1_TL()
					&& celiangtubiao9.getAvgtest_point2() <= celiangtubiao9.getPoint2_TH()
					&& celiangtubiao9.getAvgtest_point2() >= celiangtubiao9.getPoint2_TL()
					&& celiangtubiao9.getAvgtest_point3() <= celiangtubiao9.getPoint3_TH()
					&& celiangtubiao9.getAvgtest_point3() >= celiangtubiao9.getPoint3_TL()
					&& celiangtubiao9.getAvgtest_point4() <= celiangtubiao9.getPoint4_TH()
					&& celiangtubiao9.getAvgtest_point4() >= celiangtubiao9.getPoint4_TL()
					&& celiangtubiao9.getAvgoil_point() <= celiangtubiao9.getOil_TH()
					&& celiangtubiao9.getAvgoil_point() >= celiangtubiao9.getOil_TL()) {
				request.getSession().setAttribute("dian9", 2);
			} else {
				request.getSession().setAttribute("dian9", 3);
			}
		} else {
			request.getSession().setAttribute("dian9", 3);
		}

		// 10
		if (celiangtubiao10 == null) {
			request.getSession().setAttribute("dian10", 1);
		} else if (celiangtubiao10.getAvgtest_point1() != null && celiangtubiao10.getAvgtest_point2() != null
				&& celiangtubiao10.getAvgtest_point3() != null && celiangtubiao10.getAvgtest_point4() != null
				&& celiangtubiao10.getAvgtest_point5() != null && celiangtubiao10.getAvgtest_point6() != null
				&& celiangtubiao10.getAvgtest_point7() != null && celiangtubiao10.getAvgtest_point8() != null
				&& celiangtubiao10.getAvgoil_point() != null) {
			if (celiangtubiao10.getAvgtest_point1() <= celiangtubiao10.getPoint1_TH()
					&& celiangtubiao10.getAvgtest_point1() >= celiangtubiao10.getPoint1_TL()
					&& celiangtubiao10.getAvgtest_point2() <= celiangtubiao10.getPoint2_TH()
					&& celiangtubiao10.getAvgtest_point2() >= celiangtubiao10.getPoint2_TL()
					&& celiangtubiao10.getAvgtest_point3() <= celiangtubiao10.getPoint3_TH()
					&& celiangtubiao10.getAvgtest_point3() >= celiangtubiao10.getPoint3_TL()
					&& celiangtubiao10.getAvgtest_point4() <= celiangtubiao10.getPoint4_TH()
					&& celiangtubiao10.getAvgtest_point4() >= celiangtubiao10.getPoint4_TL()
					&& celiangtubiao10.getAvgtest_point5() <= celiangtubiao10.getPoint5_TH()
					&& celiangtubiao10.getAvgtest_point5() >= celiangtubiao10.getPoint5_TL()
					&& celiangtubiao10.getAvgtest_point6() <= celiangtubiao10.getPoint6_TH()
					&& celiangtubiao10.getAvgtest_point6() >= celiangtubiao10.getPoint6_TL()
					&& celiangtubiao10.getAvgtest_point7() <= celiangtubiao10.getPoint7_TH()
					&& celiangtubiao10.getAvgtest_point7() >= celiangtubiao10.getPoint7_TL()
					&& celiangtubiao10.getAvgtest_point8() <= celiangtubiao10.getPoint8_TH()
					&& celiangtubiao10.getAvgtest_point8() >= celiangtubiao10.getPoint8_TL()
					&& celiangtubiao10.getAvgoil_point() <= celiangtubiao10.getOil_TH()
					&& celiangtubiao10.getAvgoil_point() >= celiangtubiao10.getOil_TL()) {
				request.getSession().setAttribute("dian10", 2);
			}
		} else if (celiangtubiao10.getAvgtest_point1() != null && celiangtubiao10.getAvgtest_point2() != null
				&& celiangtubiao10.getAvgtest_point3() != null && celiangtubiao10.getAvgtest_point4() != null
				&& celiangtubiao10.getAvgtest_point5() != null && celiangtubiao10.getAvgtest_point6() != null
				&& celiangtubiao10.getAvgtest_point7() != null && celiangtubiao10.getAvgoil_point() != null) {
			if (celiangtubiao10.getAvgtest_point1() <= celiangtubiao10.getPoint1_TH()
					&& celiangtubiao10.getAvgtest_point1() >= celiangtubiao10.getPoint1_TL()
					&& celiangtubiao10.getAvgtest_point2() <= celiangtubiao10.getPoint2_TH()
					&& celiangtubiao10.getAvgtest_point2() >= celiangtubiao10.getPoint2_TL()
					&& celiangtubiao10.getAvgtest_point3() <= celiangtubiao10.getPoint3_TH()
					&& celiangtubiao10.getAvgtest_point3() >= celiangtubiao10.getPoint3_TL()
					&& celiangtubiao10.getAvgtest_point4() <= celiangtubiao10.getPoint4_TH()
					&& celiangtubiao10.getAvgtest_point4() >= celiangtubiao10.getPoint4_TL()
					&& celiangtubiao10.getAvgtest_point5() <= celiangtubiao10.getPoint5_TH()
					&& celiangtubiao10.getAvgtest_point5() >= celiangtubiao10.getPoint5_TL()
					&& celiangtubiao10.getAvgtest_point6() <= celiangtubiao10.getPoint6_TH()
					&& celiangtubiao10.getAvgtest_point6() >= celiangtubiao10.getPoint6_TL()
					&& celiangtubiao10.getAvgtest_point7() <= celiangtubiao10.getPoint7_TH()
					&& celiangtubiao10.getAvgtest_point7() >= celiangtubiao10.getPoint7_TL()
					&& celiangtubiao10.getAvgoil_point() <= celiangtubiao10.getOil_TH()
					&& celiangtubiao10.getAvgoil_point() >= celiangtubiao10.getOil_TL()) {
				request.getSession().setAttribute("dian10", 2);
			}
		} else if (celiangtubiao10.getAvgtest_point1() != null && celiangtubiao10.getAvgtest_point2() != null
				&& celiangtubiao10.getAvgtest_point3() != null && celiangtubiao10.getAvgtest_point4() != null
				&& celiangtubiao10.getAvgtest_point5() != null && celiangtubiao10.getAvgtest_point6() != null
				&& celiangtubiao10.getAvgoil_point() != null) {
			if (celiangtubiao10.getAvgtest_point1() <= celiangtubiao10.getPoint1_TH()
					&& celiangtubiao10.getAvgtest_point1() >= celiangtubiao10.getPoint1_TL()
					&& celiangtubiao10.getAvgtest_point2() <= celiangtubiao10.getPoint2_TH()
					&& celiangtubiao10.getAvgtest_point2() >= celiangtubiao10.getPoint2_TL()
					&& celiangtubiao10.getAvgtest_point3() <= celiangtubiao10.getPoint3_TH()
					&& celiangtubiao10.getAvgtest_point3() >= celiangtubiao10.getPoint3_TL()
					&& celiangtubiao10.getAvgtest_point4() <= celiangtubiao10.getPoint4_TH()
					&& celiangtubiao10.getAvgtest_point4() >= celiangtubiao10.getPoint4_TL()
					&& celiangtubiao10.getAvgtest_point5() <= celiangtubiao10.getPoint5_TH()
					&& celiangtubiao10.getAvgtest_point5() >= celiangtubiao10.getPoint5_TL()
					&& celiangtubiao10.getAvgtest_point6() <= celiangtubiao10.getPoint6_TH()
					&& celiangtubiao10.getAvgtest_point6() >= celiangtubiao10.getPoint6_TL()
					&& celiangtubiao10.getAvgoil_point() <= celiangtubiao10.getOil_TH()
					&& celiangtubiao10.getAvgoil_point() >= celiangtubiao10.getOil_TL()) {
				request.getSession().setAttribute("dian10", 2);
			}
		} else if (celiangtubiao10.getAvgtest_point1() != null && celiangtubiao10.getAvgtest_point2() != null
				&& celiangtubiao10.getAvgtest_point3() != null && celiangtubiao10.getAvgtest_point4() != null
				&& celiangtubiao10.getAvgtest_point5() != null && celiangtubiao10.getAvgoil_point() != null) {
			if (celiangtubiao10.getAvgtest_point1() <= celiangtubiao10.getPoint1_TH()
					&& celiangtubiao10.getAvgtest_point1() >= celiangtubiao10.getPoint1_TL()
					&& celiangtubiao10.getAvgtest_point2() <= celiangtubiao10.getPoint2_TH()
					&& celiangtubiao10.getAvgtest_point2() >= celiangtubiao10.getPoint2_TL()
					&& celiangtubiao10.getAvgtest_point3() <= celiangtubiao10.getPoint3_TH()
					&& celiangtubiao10.getAvgtest_point3() >= celiangtubiao10.getPoint3_TL()
					&& celiangtubiao10.getAvgtest_point4() <= celiangtubiao10.getPoint4_TH()
					&& celiangtubiao10.getAvgtest_point4() >= celiangtubiao10.getPoint4_TL()
					&& celiangtubiao10.getAvgtest_point5() <= celiangtubiao10.getPoint5_TH()
					&& celiangtubiao10.getAvgtest_point5() >= celiangtubiao10.getPoint5_TL()
					&& celiangtubiao10.getAvgoil_point() <= celiangtubiao10.getOil_TH()
					&& celiangtubiao10.getAvgoil_point() >= celiangtubiao10.getOil_TL()) {
				request.getSession().setAttribute("dian10", 2);
			}
		} else if (celiangtubiao10.getAvgtest_point1() != null && celiangtubiao10.getAvgtest_point2() != null
				&& celiangtubiao10.getAvgtest_point3() != null && celiangtubiao10.getAvgtest_point4() != null
				&& celiangtubiao10.getAvgoil_point() != null) {
			if (celiangtubiao10.getAvgtest_point1() <= celiangtubiao10.getPoint1_TH()
					&& celiangtubiao10.getAvgtest_point1() >= celiangtubiao10.getPoint1_TL()
					&& celiangtubiao10.getAvgtest_point2() <= celiangtubiao10.getPoint2_TH()
					&& celiangtubiao10.getAvgtest_point2() >= celiangtubiao10.getPoint2_TL()
					&& celiangtubiao10.getAvgtest_point3() <= celiangtubiao10.getPoint3_TH()
					&& celiangtubiao10.getAvgtest_point3() >= celiangtubiao10.getPoint3_TL()
					&& celiangtubiao10.getAvgtest_point4() <= celiangtubiao10.getPoint4_TH()
					&& celiangtubiao10.getAvgtest_point4() >= celiangtubiao10.getPoint4_TL()
					&& celiangtubiao10.getAvgoil_point() <= celiangtubiao10.getOil_TH()
					&& celiangtubiao10.getAvgoil_point() >= celiangtubiao10.getOil_TL()) {
				request.getSession().setAttribute("dian10", 2);
			}
		} else {
			request.getSession().setAttribute("dian10", 3);
		}

		// 11
		if (celiangtubiao11 == null) {
			request.getSession().setAttribute("dian11", 1);
		} else if (celiangtubiao11.getAvgtest_point1() != null && celiangtubiao11.getAvgtest_point2() != null
				&& celiangtubiao11.getAvgtest_point3() != null && celiangtubiao11.getAvgtest_point4() != null
				&& celiangtubiao11.getAvgtest_point5() != null && celiangtubiao11.getAvgtest_point6() != null
				&& celiangtubiao11.getAvgtest_point7() != null && celiangtubiao11.getAvgtest_point8() != null
				&& celiangtubiao11.getAvgoil_point() != null) {
			if (celiangtubiao11.getAvgtest_point1() <= celiangtubiao11.getPoint1_TH()
					&& celiangtubiao11.getAvgtest_point1() >= celiangtubiao11.getPoint1_TL()
					&& celiangtubiao11.getAvgtest_point2() <= celiangtubiao11.getPoint2_TH()
					&& celiangtubiao11.getAvgtest_point2() >= celiangtubiao11.getPoint2_TL()
					&& celiangtubiao11.getAvgtest_point3() <= celiangtubiao11.getPoint3_TH()
					&& celiangtubiao11.getAvgtest_point3() >= celiangtubiao11.getPoint3_TL()
					&& celiangtubiao11.getAvgtest_point4() <= celiangtubiao11.getPoint4_TH()
					&& celiangtubiao11.getAvgtest_point4() >= celiangtubiao11.getPoint4_TL()
					&& celiangtubiao11.getAvgtest_point5() <= celiangtubiao11.getPoint5_TH()
					&& celiangtubiao11.getAvgtest_point5() >= celiangtubiao11.getPoint5_TL()
					&& celiangtubiao11.getAvgtest_point6() <= celiangtubiao11.getPoint6_TH()
					&& celiangtubiao11.getAvgtest_point6() >= celiangtubiao11.getPoint6_TL()
					&& celiangtubiao11.getAvgtest_point7() <= celiangtubiao11.getPoint7_TH()
					&& celiangtubiao11.getAvgtest_point7() >= celiangtubiao11.getPoint7_TL()
					&& celiangtubiao11.getAvgtest_point8() <= celiangtubiao11.getPoint8_TH()
					&& celiangtubiao11.getAvgtest_point8() >= celiangtubiao11.getPoint8_TL()
					&& celiangtubiao11.getAvgoil_point() <= celiangtubiao11.getOil_TH()
					&& celiangtubiao11.getAvgoil_point() >= celiangtubiao11.getOil_TL()) {
				request.getSession().setAttribute("dian11", 2);
			}
		} else if (celiangtubiao11.getAvgtest_point1() != null && celiangtubiao11.getAvgtest_point2() != null
				&& celiangtubiao11.getAvgtest_point3() != null && celiangtubiao11.getAvgtest_point4() != null
				&& celiangtubiao11.getAvgtest_point5() != null && celiangtubiao11.getAvgtest_point6() != null
				&& celiangtubiao11.getAvgtest_point7() != null && celiangtubiao11.getAvgoil_point() != null) {
			if (celiangtubiao11.getAvgtest_point1() <= celiangtubiao11.getPoint1_TH()
					&& celiangtubiao11.getAvgtest_point1() >= celiangtubiao11.getPoint1_TL()
					&& celiangtubiao11.getAvgtest_point2() <= celiangtubiao11.getPoint2_TH()
					&& celiangtubiao11.getAvgtest_point2() >= celiangtubiao11.getPoint2_TL()
					&& celiangtubiao11.getAvgtest_point3() <= celiangtubiao11.getPoint3_TH()
					&& celiangtubiao11.getAvgtest_point3() >= celiangtubiao11.getPoint3_TL()
					&& celiangtubiao11.getAvgtest_point4() <= celiangtubiao11.getPoint4_TH()
					&& celiangtubiao11.getAvgtest_point4() >= celiangtubiao11.getPoint4_TL()
					&& celiangtubiao11.getAvgtest_point5() <= celiangtubiao11.getPoint5_TH()
					&& celiangtubiao11.getAvgtest_point5() >= celiangtubiao11.getPoint5_TL()
					&& celiangtubiao11.getAvgtest_point6() <= celiangtubiao11.getPoint6_TH()
					&& celiangtubiao11.getAvgtest_point6() >= celiangtubiao11.getPoint6_TL()
					&& celiangtubiao11.getAvgtest_point7() <= celiangtubiao11.getPoint7_TH()
					&& celiangtubiao11.getAvgtest_point7() >= celiangtubiao11.getPoint7_TL()
					&& celiangtubiao11.getAvgoil_point() <= celiangtubiao11.getOil_TH()
					&& celiangtubiao11.getAvgoil_point() >= celiangtubiao11.getOil_TL()) {
				request.getSession().setAttribute("dian11", 2);
			}
		} else if (celiangtubiao11.getAvgtest_point1() != null && celiangtubiao11.getAvgtest_point2() != null
				&& celiangtubiao11.getAvgtest_point3() != null && celiangtubiao11.getAvgtest_point4() != null
				&& celiangtubiao11.getAvgtest_point5() != null && celiangtubiao11.getAvgtest_point6() != null
				&& celiangtubiao11.getAvgoil_point() != null) {
			if (celiangtubiao11.getAvgtest_point1() <= celiangtubiao11.getPoint1_TH()
					&& celiangtubiao11.getAvgtest_point1() >= celiangtubiao11.getPoint1_TL()
					&& celiangtubiao11.getAvgtest_point2() <= celiangtubiao11.getPoint2_TH()
					&& celiangtubiao11.getAvgtest_point2() >= celiangtubiao11.getPoint2_TL()
					&& celiangtubiao11.getAvgtest_point3() <= celiangtubiao11.getPoint3_TH()
					&& celiangtubiao11.getAvgtest_point3() >= celiangtubiao11.getPoint3_TL()
					&& celiangtubiao11.getAvgtest_point4() <= celiangtubiao11.getPoint4_TH()
					&& celiangtubiao11.getAvgtest_point4() >= celiangtubiao11.getPoint4_TL()
					&& celiangtubiao11.getAvgtest_point5() <= celiangtubiao11.getPoint5_TH()
					&& celiangtubiao11.getAvgtest_point5() >= celiangtubiao11.getPoint5_TL()
					&& celiangtubiao11.getAvgtest_point6() <= celiangtubiao11.getPoint6_TH()
					&& celiangtubiao11.getAvgtest_point6() >= celiangtubiao11.getPoint6_TL()
					&& celiangtubiao11.getAvgoil_point() <= celiangtubiao11.getOil_TH()
					&& celiangtubiao11.getAvgoil_point() >= celiangtubiao11.getOil_TL()) {
				request.getSession().setAttribute("dian11", 2);
			}
		} else if (celiangtubiao11.getAvgtest_point1() != null && celiangtubiao11.getAvgtest_point2() != null
				&& celiangtubiao11.getAvgtest_point3() != null && celiangtubiao11.getAvgtest_point4() != null
				&& celiangtubiao11.getAvgtest_point5() != null && celiangtubiao11.getAvgoil_point() != null) {
			if (celiangtubiao11.getAvgtest_point1() <= celiangtubiao11.getPoint1_TH()
					&& celiangtubiao11.getAvgtest_point1() >= celiangtubiao11.getPoint1_TL()
					&& celiangtubiao11.getAvgtest_point2() <= celiangtubiao11.getPoint2_TH()
					&& celiangtubiao11.getAvgtest_point2() >= celiangtubiao11.getPoint2_TL()
					&& celiangtubiao11.getAvgtest_point3() <= celiangtubiao11.getPoint3_TH()
					&& celiangtubiao11.getAvgtest_point3() >= celiangtubiao11.getPoint3_TL()
					&& celiangtubiao11.getAvgtest_point4() <= celiangtubiao11.getPoint4_TH()
					&& celiangtubiao11.getAvgtest_point4() >= celiangtubiao11.getPoint4_TL()
					&& celiangtubiao11.getAvgtest_point5() <= celiangtubiao11.getPoint5_TH()
					&& celiangtubiao11.getAvgtest_point5() >= celiangtubiao11.getPoint5_TL()
					&& celiangtubiao11.getAvgoil_point() <= celiangtubiao11.getOil_TH()
					&& celiangtubiao11.getAvgoil_point() >= celiangtubiao11.getOil_TL()) {
				request.getSession().setAttribute("dian11", 2);
			}
		} else if (celiangtubiao11.getAvgtest_point1() != null && celiangtubiao11.getAvgtest_point2() != null
				&& celiangtubiao11.getAvgtest_point3() != null && celiangtubiao11.getAvgtest_point4() != null
				&& celiangtubiao11.getAvgoil_point() != null) {
			if (celiangtubiao11.getAvgtest_point1() <= celiangtubiao11.getPoint1_TH()
					&& celiangtubiao11.getAvgtest_point1() >= celiangtubiao11.getPoint1_TL()
					&& celiangtubiao11.getAvgtest_point2() <= celiangtubiao11.getPoint2_TH()
					&& celiangtubiao11.getAvgtest_point2() >= celiangtubiao11.getPoint2_TL()
					&& celiangtubiao11.getAvgtest_point3() <= celiangtubiao11.getPoint3_TH()
					&& celiangtubiao11.getAvgtest_point3() >= celiangtubiao11.getPoint3_TL()
					&& celiangtubiao11.getAvgtest_point4() <= celiangtubiao11.getPoint4_TH()
					&& celiangtubiao11.getAvgtest_point4() >= celiangtubiao11.getPoint4_TL()
					&& celiangtubiao11.getAvgoil_point() <= celiangtubiao11.getOil_TH()
					&& celiangtubiao11.getAvgoil_point() >= celiangtubiao11.getOil_TL()) {
				request.getSession().setAttribute("dian11", 2);
			}
		} else {
			request.getSession().setAttribute("dian11", 3);
		}

		// 12
		if (celiangtubiao12 == null) {
			request.getSession().setAttribute("dian12", 1);
		} else if (celiangtubiao12.getAvgtest_point1() != null && celiangtubiao12.getAvgtest_point2() != null
				&& celiangtubiao12.getAvgtest_point3() != null && celiangtubiao12.getAvgtest_point4() != null
				&& celiangtubiao12.getAvgtest_point5() != null && celiangtubiao12.getAvgtest_point6() != null
				&& celiangtubiao12.getAvgtest_point7() != null && celiangtubiao12.getAvgtest_point8() != null
				&& celiangtubiao12.getAvgoil_point() != null) {
			if (celiangtubiao12.getAvgtest_point1() <= celiangtubiao12.getPoint1_TH()
					&& celiangtubiao12.getAvgtest_point1() >= celiangtubiao12.getPoint1_TL()
					&& celiangtubiao12.getAvgtest_point2() <= celiangtubiao12.getPoint2_TH()
					&& celiangtubiao12.getAvgtest_point2() >= celiangtubiao12.getPoint2_TL()
					&& celiangtubiao12.getAvgtest_point3() <= celiangtubiao12.getPoint3_TH()
					&& celiangtubiao12.getAvgtest_point3() >= celiangtubiao12.getPoint3_TL()
					&& celiangtubiao12.getAvgtest_point4() <= celiangtubiao12.getPoint4_TH()
					&& celiangtubiao12.getAvgtest_point4() >= celiangtubiao12.getPoint4_TL()
					&& celiangtubiao12.getAvgtest_point5() <= celiangtubiao12.getPoint5_TH()
					&& celiangtubiao12.getAvgtest_point5() >= celiangtubiao12.getPoint5_TL()
					&& celiangtubiao12.getAvgtest_point6() <= celiangtubiao12.getPoint6_TH()
					&& celiangtubiao12.getAvgtest_point6() >= celiangtubiao12.getPoint6_TL()
					&& celiangtubiao12.getAvgtest_point7() <= celiangtubiao12.getPoint7_TH()
					&& celiangtubiao12.getAvgtest_point7() >= celiangtubiao12.getPoint7_TL()
					&& celiangtubiao12.getAvgtest_point8() <= celiangtubiao12.getPoint8_TH()
					&& celiangtubiao12.getAvgtest_point8() >= celiangtubiao12.getPoint8_TL()
					&& celiangtubiao12.getAvgoil_point() <= celiangtubiao12.getOil_TH()
					&& celiangtubiao12.getAvgoil_point() >= celiangtubiao12.getOil_TL()) {
				request.getSession().setAttribute("dian12", 2);
			}
		} else if (celiangtubiao12.getAvgtest_point1() != null && celiangtubiao12.getAvgtest_point2() != null
				&& celiangtubiao12.getAvgtest_point3() != null && celiangtubiao12.getAvgtest_point4() != null
				&& celiangtubiao12.getAvgtest_point5() != null && celiangtubiao12.getAvgtest_point6() != null
				&& celiangtubiao12.getAvgtest_point7() != null && celiangtubiao12.getAvgoil_point() != null) {
			if (celiangtubiao12.getAvgtest_point1() <= celiangtubiao12.getPoint1_TH()
					&& celiangtubiao12.getAvgtest_point1() >= celiangtubiao12.getPoint1_TL()
					&& celiangtubiao12.getAvgtest_point2() <= celiangtubiao12.getPoint2_TH()
					&& celiangtubiao12.getAvgtest_point2() >= celiangtubiao12.getPoint2_TL()
					&& celiangtubiao12.getAvgtest_point3() <= celiangtubiao12.getPoint3_TH()
					&& celiangtubiao12.getAvgtest_point3() >= celiangtubiao12.getPoint3_TL()
					&& celiangtubiao12.getAvgtest_point4() <= celiangtubiao12.getPoint4_TH()
					&& celiangtubiao12.getAvgtest_point4() >= celiangtubiao12.getPoint4_TL()
					&& celiangtubiao12.getAvgtest_point5() <= celiangtubiao12.getPoint5_TH()
					&& celiangtubiao12.getAvgtest_point5() >= celiangtubiao12.getPoint5_TL()
					&& celiangtubiao12.getAvgtest_point6() <= celiangtubiao12.getPoint6_TH()
					&& celiangtubiao12.getAvgtest_point6() >= celiangtubiao12.getPoint6_TL()
					&& celiangtubiao12.getAvgtest_point7() <= celiangtubiao12.getPoint7_TH()
					&& celiangtubiao12.getAvgtest_point7() >= celiangtubiao12.getPoint7_TL()
					&& celiangtubiao12.getAvgoil_point() <= celiangtubiao12.getOil_TH()
					&& celiangtubiao12.getAvgoil_point() >= celiangtubiao12.getOil_TL()) {
				request.getSession().setAttribute("dian12", 2);
			}
		} else if (celiangtubiao12.getAvgtest_point1() != null && celiangtubiao12.getAvgtest_point2() != null
				&& celiangtubiao12.getAvgtest_point3() != null && celiangtubiao12.getAvgtest_point4() != null
				&& celiangtubiao12.getAvgtest_point5() != null && celiangtubiao12.getAvgtest_point6() != null
				&& celiangtubiao12.getAvgoil_point() != null) {
			if (celiangtubiao12.getAvgtest_point1() <= celiangtubiao12.getPoint1_TH()
					&& celiangtubiao12.getAvgtest_point1() >= celiangtubiao12.getPoint1_TL()
					&& celiangtubiao12.getAvgtest_point2() <= celiangtubiao12.getPoint2_TH()
					&& celiangtubiao12.getAvgtest_point2() >= celiangtubiao12.getPoint2_TL()
					&& celiangtubiao12.getAvgtest_point3() <= celiangtubiao12.getPoint3_TH()
					&& celiangtubiao12.getAvgtest_point3() >= celiangtubiao12.getPoint3_TL()
					&& celiangtubiao12.getAvgtest_point4() <= celiangtubiao12.getPoint4_TH()
					&& celiangtubiao12.getAvgtest_point4() >= celiangtubiao12.getPoint4_TL()
					&& celiangtubiao12.getAvgtest_point5() <= celiangtubiao12.getPoint5_TH()
					&& celiangtubiao12.getAvgtest_point5() >= celiangtubiao12.getPoint5_TL()
					&& celiangtubiao12.getAvgtest_point6() <= celiangtubiao12.getPoint6_TH()
					&& celiangtubiao12.getAvgtest_point6() >= celiangtubiao12.getPoint6_TL()
					&& celiangtubiao12.getAvgoil_point() <= celiangtubiao12.getOil_TH()
					&& celiangtubiao12.getAvgoil_point() >= celiangtubiao12.getOil_TL()) {
				request.getSession().setAttribute("dian12", 2);
			}
		} else if (celiangtubiao12.getAvgtest_point1() != null && celiangtubiao12.getAvgtest_point2() != null
				&& celiangtubiao12.getAvgtest_point3() != null && celiangtubiao12.getAvgtest_point4() != null
				&& celiangtubiao12.getAvgtest_point5() != null && celiangtubiao12.getAvgoil_point() != null) {
			if (celiangtubiao12.getAvgtest_point1() <= celiangtubiao12.getPoint1_TH()
					&& celiangtubiao12.getAvgtest_point1() >= celiangtubiao12.getPoint1_TL()
					&& celiangtubiao12.getAvgtest_point2() <= celiangtubiao12.getPoint2_TH()
					&& celiangtubiao12.getAvgtest_point2() >= celiangtubiao12.getPoint2_TL()
					&& celiangtubiao12.getAvgtest_point3() <= celiangtubiao12.getPoint3_TH()
					&& celiangtubiao12.getAvgtest_point3() >= celiangtubiao12.getPoint3_TL()
					&& celiangtubiao12.getAvgtest_point4() <= celiangtubiao12.getPoint4_TH()
					&& celiangtubiao12.getAvgtest_point4() >= celiangtubiao12.getPoint4_TL()
					&& celiangtubiao12.getAvgtest_point5() <= celiangtubiao12.getPoint5_TH()
					&& celiangtubiao12.getAvgtest_point5() >= celiangtubiao12.getPoint5_TL()
					&& celiangtubiao12.getAvgoil_point() <= celiangtubiao12.getOil_TH()
					&& celiangtubiao12.getAvgoil_point() >= celiangtubiao12.getOil_TL()) {
				request.getSession().setAttribute("dian12", 2);
			}
		} else if (celiangtubiao12.getAvgtest_point1() != null && celiangtubiao12.getAvgtest_point2() != null
				&& celiangtubiao12.getAvgtest_point3() != null && celiangtubiao12.getAvgtest_point4() != null
				&& celiangtubiao12.getAvgoil_point() != null) {
			if (celiangtubiao12.getAvgtest_point1() <= celiangtubiao12.getPoint1_TH()
					&& celiangtubiao12.getAvgtest_point1() >= celiangtubiao12.getPoint1_TL()
					&& celiangtubiao12.getAvgtest_point2() <= celiangtubiao12.getPoint2_TH()
					&& celiangtubiao12.getAvgtest_point2() >= celiangtubiao12.getPoint2_TL()
					&& celiangtubiao12.getAvgtest_point3() <= celiangtubiao12.getPoint3_TH()
					&& celiangtubiao12.getAvgtest_point3() >= celiangtubiao12.getPoint3_TL()
					&& celiangtubiao12.getAvgtest_point4() <= celiangtubiao12.getPoint4_TH()
					&& celiangtubiao12.getAvgtest_point4() >= celiangtubiao12.getPoint4_TL()
					&& celiangtubiao12.getAvgoil_point() <= celiangtubiao12.getOil_TH()
					&& celiangtubiao12.getAvgoil_point() >= celiangtubiao12.getOil_TL()) {
				request.getSession().setAttribute("dian12", 2);
			}
		} else {
			request.getSession().setAttribute("dian12", 3);
		}

		// 13
		if (celiangtubiao13 == null) {
			request.getSession().setAttribute("dian13", 1);
		} else if (celiangtubiao13.getAvgtest_point1() != null && celiangtubiao13.getAvgtest_point2() != null
				&& celiangtubiao13.getAvgtest_point3() != null && celiangtubiao13.getAvgtest_point4() != null
				&& celiangtubiao13.getAvgtest_point5() != null && celiangtubiao13.getAvgtest_point6() != null
				&& celiangtubiao13.getAvgtest_point7() != null && celiangtubiao13.getAvgtest_point8() != null
				&& celiangtubiao13.getAvgoil_point() != null) {
			if (celiangtubiao13.getAvgtest_point1() <= celiangtubiao13.getPoint1_TH()
					&& celiangtubiao13.getAvgtest_point1() >= celiangtubiao13.getPoint1_TL()
					&& celiangtubiao13.getAvgtest_point2() <= celiangtubiao13.getPoint2_TH()
					&& celiangtubiao13.getAvgtest_point2() >= celiangtubiao13.getPoint2_TL()
					&& celiangtubiao13.getAvgtest_point3() <= celiangtubiao13.getPoint3_TH()
					&& celiangtubiao13.getAvgtest_point3() >= celiangtubiao13.getPoint3_TL()
					&& celiangtubiao13.getAvgtest_point4() <= celiangtubiao13.getPoint4_TH()
					&& celiangtubiao13.getAvgtest_point4() >= celiangtubiao13.getPoint4_TL()
					&& celiangtubiao13.getAvgtest_point5() <= celiangtubiao13.getPoint5_TH()
					&& celiangtubiao13.getAvgtest_point5() >= celiangtubiao13.getPoint5_TL()
					&& celiangtubiao13.getAvgtest_point6() <= celiangtubiao13.getPoint6_TH()
					&& celiangtubiao13.getAvgtest_point6() >= celiangtubiao13.getPoint6_TL()
					&& celiangtubiao13.getAvgtest_point7() <= celiangtubiao13.getPoint7_TH()
					&& celiangtubiao13.getAvgtest_point7() >= celiangtubiao13.getPoint7_TL()
					&& celiangtubiao13.getAvgtest_point8() <= celiangtubiao13.getPoint8_TH()
					&& celiangtubiao13.getAvgtest_point8() >= celiangtubiao13.getPoint8_TL()
					&& celiangtubiao13.getAvgoil_point() <= celiangtubiao13.getOil_TH()
					&& celiangtubiao13.getAvgoil_point() >= celiangtubiao13.getOil_TL()) {
				request.getSession().setAttribute("dian13", 2);
			}
		} else if (celiangtubiao13.getAvgtest_point1() != null && celiangtubiao13.getAvgtest_point2() != null
				&& celiangtubiao13.getAvgtest_point3() != null && celiangtubiao13.getAvgtest_point4() != null
				&& celiangtubiao13.getAvgtest_point5() != null && celiangtubiao13.getAvgtest_point6() != null
				&& celiangtubiao13.getAvgtest_point7() != null && celiangtubiao13.getAvgoil_point() != null) {
			if (celiangtubiao13.getAvgtest_point1() <= celiangtubiao13.getPoint1_TH()
					&& celiangtubiao13.getAvgtest_point1() >= celiangtubiao13.getPoint1_TL()
					&& celiangtubiao13.getAvgtest_point2() <= celiangtubiao13.getPoint2_TH()
					&& celiangtubiao13.getAvgtest_point2() >= celiangtubiao13.getPoint2_TL()
					&& celiangtubiao13.getAvgtest_point3() <= celiangtubiao13.getPoint3_TH()
					&& celiangtubiao13.getAvgtest_point3() >= celiangtubiao13.getPoint3_TL()
					&& celiangtubiao13.getAvgtest_point4() <= celiangtubiao13.getPoint4_TH()
					&& celiangtubiao13.getAvgtest_point4() >= celiangtubiao13.getPoint4_TL()
					&& celiangtubiao13.getAvgtest_point5() <= celiangtubiao13.getPoint5_TH()
					&& celiangtubiao13.getAvgtest_point5() >= celiangtubiao13.getPoint5_TL()
					&& celiangtubiao13.getAvgtest_point6() <= celiangtubiao13.getPoint6_TH()
					&& celiangtubiao13.getAvgtest_point6() >= celiangtubiao13.getPoint6_TL()
					&& celiangtubiao13.getAvgtest_point7() <= celiangtubiao13.getPoint7_TH()
					&& celiangtubiao13.getAvgtest_point7() >= celiangtubiao13.getPoint7_TL()
					&& celiangtubiao13.getAvgoil_point() <= celiangtubiao13.getOil_TH()
					&& celiangtubiao13.getAvgoil_point() >= celiangtubiao13.getOil_TL()) {
				request.getSession().setAttribute("dian13", 2);
			}
		} else if (celiangtubiao13.getAvgtest_point1() != null && celiangtubiao13.getAvgtest_point2() != null
				&& celiangtubiao13.getAvgtest_point3() != null && celiangtubiao13.getAvgtest_point4() != null
				&& celiangtubiao13.getAvgtest_point5() != null && celiangtubiao13.getAvgtest_point6() != null
				&& celiangtubiao13.getAvgoil_point() != null) {
			if (celiangtubiao13.getAvgtest_point1() <= celiangtubiao13.getPoint1_TH()
					&& celiangtubiao13.getAvgtest_point1() >= celiangtubiao13.getPoint1_TL()
					&& celiangtubiao13.getAvgtest_point2() <= celiangtubiao13.getPoint2_TH()
					&& celiangtubiao13.getAvgtest_point2() >= celiangtubiao13.getPoint2_TL()
					&& celiangtubiao13.getAvgtest_point3() <= celiangtubiao13.getPoint3_TH()
					&& celiangtubiao13.getAvgtest_point3() >= celiangtubiao13.getPoint3_TL()
					&& celiangtubiao13.getAvgtest_point4() <= celiangtubiao13.getPoint4_TH()
					&& celiangtubiao13.getAvgtest_point4() >= celiangtubiao13.getPoint4_TL()
					&& celiangtubiao13.getAvgtest_point5() <= celiangtubiao13.getPoint5_TH()
					&& celiangtubiao13.getAvgtest_point5() >= celiangtubiao13.getPoint5_TL()
					&& celiangtubiao13.getAvgtest_point6() <= celiangtubiao13.getPoint6_TH()
					&& celiangtubiao13.getAvgtest_point6() >= celiangtubiao13.getPoint6_TL()
					&& celiangtubiao13.getAvgoil_point() <= celiangtubiao13.getOil_TH()
					&& celiangtubiao13.getAvgoil_point() >= celiangtubiao13.getOil_TL()) {
				request.getSession().setAttribute("dian13", 2);
			}
		} else if (celiangtubiao13.getAvgtest_point1() != null && celiangtubiao13.getAvgtest_point2() != null
				&& celiangtubiao13.getAvgtest_point3() != null && celiangtubiao13.getAvgtest_point4() != null
				&& celiangtubiao13.getAvgtest_point5() != null && celiangtubiao13.getAvgoil_point() != null) {
			if (celiangtubiao13.getAvgtest_point1() <= celiangtubiao13.getPoint1_TH()
					&& celiangtubiao13.getAvgtest_point1() >= celiangtubiao13.getPoint1_TL()
					&& celiangtubiao13.getAvgtest_point2() <= celiangtubiao13.getPoint2_TH()
					&& celiangtubiao13.getAvgtest_point2() >= celiangtubiao13.getPoint2_TL()
					&& celiangtubiao13.getAvgtest_point3() <= celiangtubiao13.getPoint3_TH()
					&& celiangtubiao13.getAvgtest_point3() >= celiangtubiao13.getPoint3_TL()
					&& celiangtubiao13.getAvgtest_point4() <= celiangtubiao13.getPoint4_TH()
					&& celiangtubiao13.getAvgtest_point4() >= celiangtubiao13.getPoint4_TL()
					&& celiangtubiao13.getAvgtest_point5() <= celiangtubiao13.getPoint5_TH()
					&& celiangtubiao13.getAvgtest_point5() >= celiangtubiao13.getPoint5_TL()
					&& celiangtubiao13.getAvgoil_point() <= celiangtubiao13.getOil_TH()
					&& celiangtubiao13.getAvgoil_point() >= celiangtubiao13.getOil_TL()) {
				request.getSession().setAttribute("dian13", 2);
			}
		} else if (celiangtubiao13.getAvgtest_point1() != null && celiangtubiao13.getAvgtest_point2() != null
				&& celiangtubiao13.getAvgtest_point3() != null && celiangtubiao13.getAvgtest_point4() != null
				&& celiangtubiao13.getAvgoil_point() != null) {
			if (celiangtubiao13.getAvgtest_point1() <= celiangtubiao13.getPoint1_TH()
					&& celiangtubiao13.getAvgtest_point1() >= celiangtubiao13.getPoint1_TL()
					&& celiangtubiao13.getAvgtest_point2() <= celiangtubiao13.getPoint2_TH()
					&& celiangtubiao13.getAvgtest_point2() >= celiangtubiao13.getPoint2_TL()
					&& celiangtubiao13.getAvgtest_point3() <= celiangtubiao13.getPoint3_TH()
					&& celiangtubiao13.getAvgtest_point3() >= celiangtubiao13.getPoint3_TL()
					&& celiangtubiao13.getAvgtest_point4() <= celiangtubiao13.getPoint4_TH()
					&& celiangtubiao13.getAvgtest_point4() >= celiangtubiao13.getPoint4_TL()
					&& celiangtubiao13.getAvgoil_point() <= celiangtubiao13.getOil_TH()
					&& celiangtubiao13.getAvgoil_point() >= celiangtubiao13.getOil_TL()) {
				request.getSession().setAttribute("dian13", 2);
			}
		} else {
			request.getSession().setAttribute("dian13", 3);
		}

		// 14
		if (celiangtubiao14 == null) {
			request.getSession().setAttribute("dian14", 1);
		} else if (celiangtubiao14.getAvgtest_point1() != null && celiangtubiao14.getAvgtest_point2() != null
				&& celiangtubiao14.getAvgtest_point3() != null && celiangtubiao14.getAvgtest_point4() != null
				&& celiangtubiao14.getAvgtest_point5() != null && celiangtubiao14.getAvgtest_point6() != null
				&& celiangtubiao14.getAvgtest_point7() != null && celiangtubiao14.getAvgtest_point8() != null
				&& celiangtubiao14.getAvgoil_point() != null) {
			if (celiangtubiao14.getAvgtest_point1() <= celiangtubiao14.getPoint1_TH()
					&& celiangtubiao14.getAvgtest_point1() >= celiangtubiao14.getPoint1_TL()
					&& celiangtubiao14.getAvgtest_point2() <= celiangtubiao14.getPoint2_TH()
					&& celiangtubiao14.getAvgtest_point2() >= celiangtubiao14.getPoint2_TL()
					&& celiangtubiao14.getAvgtest_point3() <= celiangtubiao14.getPoint3_TH()
					&& celiangtubiao14.getAvgtest_point3() >= celiangtubiao14.getPoint3_TL()
					&& celiangtubiao14.getAvgtest_point4() <= celiangtubiao14.getPoint4_TH()
					&& celiangtubiao14.getAvgtest_point4() >= celiangtubiao14.getPoint4_TL()
					&& celiangtubiao14.getAvgtest_point5() <= celiangtubiao14.getPoint5_TH()
					&& celiangtubiao14.getAvgtest_point5() >= celiangtubiao14.getPoint5_TL()
					&& celiangtubiao14.getAvgtest_point6() <= celiangtubiao14.getPoint6_TH()
					&& celiangtubiao14.getAvgtest_point6() >= celiangtubiao14.getPoint6_TL()
					&& celiangtubiao14.getAvgtest_point7() <= celiangtubiao14.getPoint7_TH()
					&& celiangtubiao14.getAvgtest_point7() >= celiangtubiao14.getPoint7_TL()
					&& celiangtubiao14.getAvgtest_point8() <= celiangtubiao14.getPoint8_TH()
					&& celiangtubiao14.getAvgtest_point8() >= celiangtubiao14.getPoint8_TL()
					&& celiangtubiao14.getAvgoil_point() <= celiangtubiao14.getOil_TH()
					&& celiangtubiao14.getAvgoil_point() >= celiangtubiao14.getOil_TL()) {
				request.getSession().setAttribute("dian14", 2);
			}
		} else if (celiangtubiao14.getAvgtest_point1() != null && celiangtubiao14.getAvgtest_point2() != null
				&& celiangtubiao14.getAvgtest_point3() != null && celiangtubiao14.getAvgtest_point4() != null
				&& celiangtubiao14.getAvgtest_point5() != null && celiangtubiao14.getAvgtest_point6() != null
				&& celiangtubiao14.getAvgtest_point7() != null && celiangtubiao14.getAvgoil_point() != null) {
			if (celiangtubiao14.getAvgtest_point1() <= celiangtubiao14.getPoint1_TH()
					&& celiangtubiao14.getAvgtest_point1() >= celiangtubiao14.getPoint1_TL()
					&& celiangtubiao14.getAvgtest_point2() <= celiangtubiao14.getPoint2_TH()
					&& celiangtubiao14.getAvgtest_point2() >= celiangtubiao14.getPoint2_TL()
					&& celiangtubiao14.getAvgtest_point3() <= celiangtubiao14.getPoint3_TH()
					&& celiangtubiao14.getAvgtest_point3() >= celiangtubiao14.getPoint3_TL()
					&& celiangtubiao14.getAvgtest_point4() <= celiangtubiao14.getPoint4_TH()
					&& celiangtubiao14.getAvgtest_point4() >= celiangtubiao14.getPoint4_TL()
					&& celiangtubiao14.getAvgtest_point5() <= celiangtubiao14.getPoint5_TH()
					&& celiangtubiao14.getAvgtest_point5() >= celiangtubiao14.getPoint5_TL()
					&& celiangtubiao14.getAvgtest_point6() <= celiangtubiao14.getPoint6_TH()
					&& celiangtubiao14.getAvgtest_point6() >= celiangtubiao14.getPoint6_TL()
					&& celiangtubiao14.getAvgtest_point7() <= celiangtubiao14.getPoint7_TH()
					&& celiangtubiao14.getAvgtest_point7() >= celiangtubiao14.getPoint7_TL()
					&& celiangtubiao14.getAvgoil_point() <= celiangtubiao14.getOil_TH()
					&& celiangtubiao14.getAvgoil_point() >= celiangtubiao14.getOil_TL()) {
				request.getSession().setAttribute("dian14", 2);
			}
		} else if (celiangtubiao14.getAvgtest_point1() != null && celiangtubiao14.getAvgtest_point2() != null
				&& celiangtubiao14.getAvgtest_point3() != null && celiangtubiao14.getAvgtest_point4() != null
				&& celiangtubiao14.getAvgtest_point5() != null && celiangtubiao14.getAvgtest_point6() != null
				&& celiangtubiao14.getAvgoil_point() != null) {
			if (celiangtubiao14.getAvgtest_point1() <= celiangtubiao14.getPoint1_TH()
					&& celiangtubiao14.getAvgtest_point1() >= celiangtubiao14.getPoint1_TL()
					&& celiangtubiao14.getAvgtest_point2() <= celiangtubiao14.getPoint2_TH()
					&& celiangtubiao14.getAvgtest_point2() >= celiangtubiao14.getPoint2_TL()
					&& celiangtubiao14.getAvgtest_point3() <= celiangtubiao14.getPoint3_TH()
					&& celiangtubiao14.getAvgtest_point3() >= celiangtubiao14.getPoint3_TL()
					&& celiangtubiao14.getAvgtest_point4() <= celiangtubiao14.getPoint4_TH()
					&& celiangtubiao14.getAvgtest_point4() >= celiangtubiao14.getPoint4_TL()
					&& celiangtubiao14.getAvgtest_point5() <= celiangtubiao14.getPoint5_TH()
					&& celiangtubiao14.getAvgtest_point5() >= celiangtubiao14.getPoint5_TL()
					&& celiangtubiao14.getAvgtest_point6() <= celiangtubiao14.getPoint6_TH()
					&& celiangtubiao14.getAvgtest_point6() >= celiangtubiao14.getPoint6_TL()
					&& celiangtubiao14.getAvgoil_point() <= celiangtubiao14.getOil_TH()
					&& celiangtubiao14.getAvgoil_point() >= celiangtubiao14.getOil_TL()) {
				request.getSession().setAttribute("dian14", 2);
			}
		} else if (celiangtubiao14.getAvgtest_point1() != null && celiangtubiao14.getAvgtest_point2() != null
				&& celiangtubiao14.getAvgtest_point3() != null && celiangtubiao14.getAvgtest_point4() != null
				&& celiangtubiao14.getAvgtest_point5() != null && celiangtubiao14.getAvgoil_point() != null) {
			if (celiangtubiao14.getAvgtest_point1() <= celiangtubiao14.getPoint1_TH()
					&& celiangtubiao14.getAvgtest_point1() >= celiangtubiao14.getPoint1_TL()
					&& celiangtubiao14.getAvgtest_point2() <= celiangtubiao14.getPoint2_TH()
					&& celiangtubiao14.getAvgtest_point2() >= celiangtubiao14.getPoint2_TL()
					&& celiangtubiao14.getAvgtest_point3() <= celiangtubiao14.getPoint3_TH()
					&& celiangtubiao14.getAvgtest_point3() >= celiangtubiao14.getPoint3_TL()
					&& celiangtubiao14.getAvgtest_point4() <= celiangtubiao14.getPoint4_TH()
					&& celiangtubiao14.getAvgtest_point4() >= celiangtubiao14.getPoint4_TL()
					&& celiangtubiao14.getAvgtest_point5() <= celiangtubiao14.getPoint5_TH()
					&& celiangtubiao14.getAvgtest_point5() >= celiangtubiao14.getPoint5_TL()
					&& celiangtubiao14.getAvgoil_point() <= celiangtubiao14.getOil_TH()
					&& celiangtubiao14.getAvgoil_point() >= celiangtubiao14.getOil_TL()) {
				request.getSession().setAttribute("dian14", 2);
			}
		} else if (celiangtubiao14.getAvgtest_point1() != null && celiangtubiao14.getAvgtest_point2() != null
				&& celiangtubiao14.getAvgtest_point3() != null && celiangtubiao14.getAvgtest_point4() != null
				&& celiangtubiao14.getAvgoil_point() != null) {
			if (celiangtubiao14.getAvgtest_point1() <= celiangtubiao14.getPoint1_TH()
					&& celiangtubiao14.getAvgtest_point1() >= celiangtubiao14.getPoint1_TL()
					&& celiangtubiao14.getAvgtest_point2() <= celiangtubiao14.getPoint2_TH()
					&& celiangtubiao14.getAvgtest_point2() >= celiangtubiao14.getPoint2_TL()
					&& celiangtubiao14.getAvgtest_point3() <= celiangtubiao14.getPoint3_TH()
					&& celiangtubiao14.getAvgtest_point3() >= celiangtubiao14.getPoint3_TL()
					&& celiangtubiao14.getAvgtest_point4() <= celiangtubiao14.getPoint4_TH()
					&& celiangtubiao14.getAvgtest_point4() >= celiangtubiao14.getPoint4_TL()
					&& celiangtubiao14.getAvgoil_point() <= celiangtubiao14.getOil_TH()
					&& celiangtubiao14.getAvgoil_point() >= celiangtubiao14.getOil_TL()) {
				request.getSession().setAttribute("dian14", 2);
			}
		} else {
			request.getSession().setAttribute("dian14", 3);
		}

		// 15
		if (celiangtubiao15 == null) {
			request.getSession().setAttribute("dian15", 1);
		} else if (celiangtubiao15.getAvgtest_point1() != null && celiangtubiao15.getAvgtest_point2() != null
				&& celiangtubiao15.getAvgtest_point3() != null && celiangtubiao15.getAvgtest_point4() != null
				&& celiangtubiao15.getAvgtest_point5() != null && celiangtubiao15.getAvgtest_point6() != null
				&& celiangtubiao15.getAvgtest_point7() != null && celiangtubiao15.getAvgtest_point8() != null
				&& celiangtubiao15.getAvgoil_point() != null) {
			if (celiangtubiao15.getAvgtest_point1() <= celiangtubiao15.getPoint1_TH()
					&& celiangtubiao15.getAvgtest_point1() >= celiangtubiao15.getPoint1_TL()
					&& celiangtubiao15.getAvgtest_point2() <= celiangtubiao15.getPoint2_TH()
					&& celiangtubiao15.getAvgtest_point2() >= celiangtubiao15.getPoint2_TL()
					&& celiangtubiao15.getAvgtest_point3() <= celiangtubiao15.getPoint3_TH()
					&& celiangtubiao15.getAvgtest_point3() >= celiangtubiao15.getPoint3_TL()
					&& celiangtubiao15.getAvgtest_point4() <= celiangtubiao15.getPoint4_TH()
					&& celiangtubiao15.getAvgtest_point4() >= celiangtubiao15.getPoint4_TL()
					&& celiangtubiao15.getAvgtest_point5() <= celiangtubiao15.getPoint5_TH()
					&& celiangtubiao15.getAvgtest_point5() >= celiangtubiao15.getPoint5_TL()
					&& celiangtubiao15.getAvgtest_point6() <= celiangtubiao15.getPoint6_TH()
					&& celiangtubiao15.getAvgtest_point6() >= celiangtubiao15.getPoint6_TL()
					&& celiangtubiao15.getAvgtest_point7() <= celiangtubiao15.getPoint7_TH()
					&& celiangtubiao15.getAvgtest_point7() >= celiangtubiao15.getPoint7_TL()
					&& celiangtubiao15.getAvgtest_point8() <= celiangtubiao15.getPoint8_TH()
					&& celiangtubiao15.getAvgtest_point8() >= celiangtubiao15.getPoint8_TL()
					&& celiangtubiao15.getAvgoil_point() <= celiangtubiao15.getOil_TH()
					&& celiangtubiao15.getAvgoil_point() >= celiangtubiao15.getOil_TL()) {
				request.getSession().setAttribute("dian15", 2);
			}
		} else if (celiangtubiao15.getAvgtest_point1() != null && celiangtubiao15.getAvgtest_point2() != null
				&& celiangtubiao15.getAvgtest_point3() != null && celiangtubiao15.getAvgtest_point4() != null
				&& celiangtubiao15.getAvgtest_point5() != null && celiangtubiao15.getAvgtest_point6() != null
				&& celiangtubiao15.getAvgtest_point7() != null && celiangtubiao15.getAvgoil_point() != null) {
			if (celiangtubiao15.getAvgtest_point1() <= celiangtubiao15.getPoint1_TH()
					&& celiangtubiao15.getAvgtest_point1() >= celiangtubiao15.getPoint1_TL()
					&& celiangtubiao15.getAvgtest_point2() <= celiangtubiao15.getPoint2_TH()
					&& celiangtubiao15.getAvgtest_point2() >= celiangtubiao15.getPoint2_TL()
					&& celiangtubiao15.getAvgtest_point3() <= celiangtubiao15.getPoint3_TH()
					&& celiangtubiao15.getAvgtest_point3() >= celiangtubiao15.getPoint3_TL()
					&& celiangtubiao15.getAvgtest_point4() <= celiangtubiao15.getPoint4_TH()
					&& celiangtubiao15.getAvgtest_point4() >= celiangtubiao15.getPoint4_TL()
					&& celiangtubiao15.getAvgtest_point5() <= celiangtubiao15.getPoint5_TH()
					&& celiangtubiao15.getAvgtest_point5() >= celiangtubiao15.getPoint5_TL()
					&& celiangtubiao15.getAvgtest_point6() <= celiangtubiao15.getPoint6_TH()
					&& celiangtubiao15.getAvgtest_point6() >= celiangtubiao15.getPoint6_TL()
					&& celiangtubiao15.getAvgtest_point7() <= celiangtubiao15.getPoint7_TH()
					&& celiangtubiao15.getAvgtest_point7() >= celiangtubiao15.getPoint7_TL()
					&& celiangtubiao15.getAvgoil_point() <= celiangtubiao15.getOil_TH()
					&& celiangtubiao15.getAvgoil_point() >= celiangtubiao15.getOil_TL()) {
				request.getSession().setAttribute("dian15", 2);
			}
		} else if (celiangtubiao15.getAvgtest_point1() != null && celiangtubiao15.getAvgtest_point2() != null
				&& celiangtubiao15.getAvgtest_point3() != null && celiangtubiao15.getAvgtest_point4() != null
				&& celiangtubiao15.getAvgtest_point5() != null && celiangtubiao15.getAvgtest_point6() != null
				&& celiangtubiao15.getAvgoil_point() != null) {
			if (celiangtubiao15.getAvgtest_point1() <= celiangtubiao15.getPoint1_TH()
					&& celiangtubiao15.getAvgtest_point1() >= celiangtubiao15.getPoint1_TL()
					&& celiangtubiao15.getAvgtest_point2() <= celiangtubiao15.getPoint2_TH()
					&& celiangtubiao15.getAvgtest_point2() >= celiangtubiao15.getPoint2_TL()
					&& celiangtubiao15.getAvgtest_point3() <= celiangtubiao15.getPoint3_TH()
					&& celiangtubiao15.getAvgtest_point3() >= celiangtubiao15.getPoint3_TL()
					&& celiangtubiao15.getAvgtest_point4() <= celiangtubiao15.getPoint4_TH()
					&& celiangtubiao15.getAvgtest_point4() >= celiangtubiao15.getPoint4_TL()
					&& celiangtubiao15.getAvgtest_point5() <= celiangtubiao15.getPoint5_TH()
					&& celiangtubiao15.getAvgtest_point5() >= celiangtubiao15.getPoint5_TL()
					&& celiangtubiao15.getAvgtest_point6() <= celiangtubiao15.getPoint6_TH()
					&& celiangtubiao15.getAvgtest_point6() >= celiangtubiao15.getPoint6_TL()
					&& celiangtubiao15.getAvgoil_point() <= celiangtubiao15.getOil_TH()
					&& celiangtubiao15.getAvgoil_point() >= celiangtubiao15.getOil_TL()) {
				request.getSession().setAttribute("dian15", 2);
			}
		} else if (celiangtubiao15.getAvgtest_point1() != null && celiangtubiao15.getAvgtest_point2() != null
				&& celiangtubiao15.getAvgtest_point3() != null && celiangtubiao15.getAvgtest_point4() != null
				&& celiangtubiao15.getAvgtest_point5() != null && celiangtubiao15.getAvgoil_point() != null) {
			if (celiangtubiao15.getAvgtest_point1() <= celiangtubiao15.getPoint1_TH()
					&& celiangtubiao15.getAvgtest_point1() >= celiangtubiao15.getPoint1_TL()
					&& celiangtubiao15.getAvgtest_point2() <= celiangtubiao15.getPoint2_TH()
					&& celiangtubiao15.getAvgtest_point2() >= celiangtubiao15.getPoint2_TL()
					&& celiangtubiao15.getAvgtest_point3() <= celiangtubiao15.getPoint3_TH()
					&& celiangtubiao15.getAvgtest_point3() >= celiangtubiao15.getPoint3_TL()
					&& celiangtubiao15.getAvgtest_point4() <= celiangtubiao15.getPoint4_TH()
					&& celiangtubiao15.getAvgtest_point4() >= celiangtubiao15.getPoint4_TL()
					&& celiangtubiao15.getAvgtest_point5() <= celiangtubiao15.getPoint5_TH()
					&& celiangtubiao15.getAvgtest_point5() >= celiangtubiao15.getPoint5_TL()
					&& celiangtubiao15.getAvgoil_point() <= celiangtubiao15.getOil_TH()
					&& celiangtubiao15.getAvgoil_point() >= celiangtubiao15.getOil_TL()) {
				request.getSession().setAttribute("dian15", 2);
			}
		} else if (celiangtubiao15.getAvgtest_point1() != null && celiangtubiao15.getAvgtest_point2() != null
				&& celiangtubiao15.getAvgtest_point3() != null && celiangtubiao15.getAvgtest_point4() != null
				&& celiangtubiao15.getAvgoil_point() != null) {
			if (celiangtubiao15.getAvgtest_point1() <= celiangtubiao15.getPoint1_TH()
					&& celiangtubiao15.getAvgtest_point1() >= celiangtubiao15.getPoint1_TL()
					&& celiangtubiao15.getAvgtest_point2() <= celiangtubiao15.getPoint2_TH()
					&& celiangtubiao15.getAvgtest_point2() >= celiangtubiao15.getPoint2_TL()
					&& celiangtubiao15.getAvgtest_point3() <= celiangtubiao15.getPoint3_TH()
					&& celiangtubiao15.getAvgtest_point3() >= celiangtubiao15.getPoint3_TL()
					&& celiangtubiao15.getAvgtest_point4() <= celiangtubiao15.getPoint4_TH()
					&& celiangtubiao15.getAvgtest_point4() >= celiangtubiao15.getPoint4_TL()
					&& celiangtubiao15.getAvgoil_point() <= celiangtubiao15.getOil_TH()
					&& celiangtubiao15.getAvgoil_point() >= celiangtubiao15.getOil_TL()) {
				request.getSession().setAttribute("dian15", 2);
			}
		} else {
			request.getSession().setAttribute("dian15", 3);
		}

		// 16
		if (celiangtubiao16 == null) {
			request.getSession().setAttribute("dian16", 1);
		} else if (celiangtubiao16.getAvgtest_point1() != null && celiangtubiao16.getAvgtest_point2() != null
				&& celiangtubiao16.getAvgtest_point3() != null && celiangtubiao16.getAvgtest_point4() != null
				&& celiangtubiao16.getAvgtest_point5() != null && celiangtubiao16.getAvgtest_point6() != null
				&& celiangtubiao16.getAvgtest_point7() != null && celiangtubiao16.getAvgtest_point8() != null
				&& celiangtubiao16.getAvgoil_point() != null) {
			if (celiangtubiao16.getAvgtest_point1() <= celiangtubiao16.getPoint1_TH()
					&& celiangtubiao16.getAvgtest_point1() >= celiangtubiao16.getPoint1_TL()
					&& celiangtubiao16.getAvgtest_point2() <= celiangtubiao16.getPoint2_TH()
					&& celiangtubiao16.getAvgtest_point2() >= celiangtubiao16.getPoint2_TL()
					&& celiangtubiao16.getAvgtest_point3() <= celiangtubiao16.getPoint3_TH()
					&& celiangtubiao16.getAvgtest_point3() >= celiangtubiao16.getPoint3_TL()
					&& celiangtubiao16.getAvgtest_point4() <= celiangtubiao16.getPoint4_TH()
					&& celiangtubiao16.getAvgtest_point4() >= celiangtubiao16.getPoint4_TL()
					&& celiangtubiao16.getAvgtest_point5() <= celiangtubiao16.getPoint5_TH()
					&& celiangtubiao16.getAvgtest_point5() >= celiangtubiao16.getPoint5_TL()
					&& celiangtubiao16.getAvgtest_point6() <= celiangtubiao16.getPoint6_TH()
					&& celiangtubiao16.getAvgtest_point6() >= celiangtubiao16.getPoint6_TL()
					&& celiangtubiao16.getAvgtest_point7() <= celiangtubiao16.getPoint7_TH()
					&& celiangtubiao16.getAvgtest_point7() >= celiangtubiao16.getPoint7_TL()
					&& celiangtubiao16.getAvgtest_point8() <= celiangtubiao16.getPoint8_TH()
					&& celiangtubiao16.getAvgtest_point8() >= celiangtubiao16.getPoint8_TL()
					&& celiangtubiao16.getAvgoil_point() <= celiangtubiao16.getOil_TH()
					&& celiangtubiao16.getAvgoil_point() >= celiangtubiao16.getOil_TL()) {
				request.getSession().setAttribute("dian16", 2);
			}
		} else if (celiangtubiao16.getAvgtest_point1() != null && celiangtubiao16.getAvgtest_point2() != null
				&& celiangtubiao16.getAvgtest_point3() != null && celiangtubiao16.getAvgtest_point4() != null
				&& celiangtubiao16.getAvgtest_point5() != null && celiangtubiao16.getAvgtest_point6() != null
				&& celiangtubiao16.getAvgtest_point7() != null && celiangtubiao16.getAvgoil_point() != null) {
			if (celiangtubiao16.getAvgtest_point1() <= celiangtubiao16.getPoint1_TH()
					&& celiangtubiao16.getAvgtest_point1() >= celiangtubiao16.getPoint1_TL()
					&& celiangtubiao16.getAvgtest_point2() <= celiangtubiao16.getPoint2_TH()
					&& celiangtubiao16.getAvgtest_point2() >= celiangtubiao16.getPoint2_TL()
					&& celiangtubiao16.getAvgtest_point3() <= celiangtubiao16.getPoint3_TH()
					&& celiangtubiao16.getAvgtest_point3() >= celiangtubiao16.getPoint3_TL()
					&& celiangtubiao16.getAvgtest_point4() <= celiangtubiao16.getPoint4_TH()
					&& celiangtubiao16.getAvgtest_point4() >= celiangtubiao16.getPoint4_TL()
					&& celiangtubiao16.getAvgtest_point5() <= celiangtubiao16.getPoint5_TH()
					&& celiangtubiao16.getAvgtest_point5() >= celiangtubiao16.getPoint5_TL()
					&& celiangtubiao16.getAvgtest_point6() <= celiangtubiao16.getPoint6_TH()
					&& celiangtubiao16.getAvgtest_point6() >= celiangtubiao16.getPoint6_TL()
					&& celiangtubiao16.getAvgtest_point7() <= celiangtubiao16.getPoint7_TH()
					&& celiangtubiao16.getAvgtest_point7() >= celiangtubiao16.getPoint7_TL()
					&& celiangtubiao16.getAvgoil_point() <= celiangtubiao16.getOil_TH()
					&& celiangtubiao16.getAvgoil_point() >= celiangtubiao16.getOil_TL()) {
				request.getSession().setAttribute("dian16", 2);
			}
		} else if (celiangtubiao16.getAvgtest_point1() != null && celiangtubiao16.getAvgtest_point2() != null
				&& celiangtubiao16.getAvgtest_point3() != null && celiangtubiao16.getAvgtest_point4() != null
				&& celiangtubiao16.getAvgtest_point5() != null && celiangtubiao16.getAvgtest_point6() != null
				&& celiangtubiao16.getAvgoil_point() != null) {
			if (celiangtubiao16.getAvgtest_point1() <= celiangtubiao16.getPoint1_TH()
					&& celiangtubiao16.getAvgtest_point1() >= celiangtubiao16.getPoint1_TL()
					&& celiangtubiao16.getAvgtest_point2() <= celiangtubiao16.getPoint2_TH()
					&& celiangtubiao16.getAvgtest_point2() >= celiangtubiao16.getPoint2_TL()
					&& celiangtubiao16.getAvgtest_point3() <= celiangtubiao16.getPoint3_TH()
					&& celiangtubiao16.getAvgtest_point3() >= celiangtubiao16.getPoint3_TL()
					&& celiangtubiao16.getAvgtest_point4() <= celiangtubiao16.getPoint4_TH()
					&& celiangtubiao16.getAvgtest_point4() >= celiangtubiao16.getPoint4_TL()
					&& celiangtubiao16.getAvgtest_point5() <= celiangtubiao16.getPoint5_TH()
					&& celiangtubiao16.getAvgtest_point5() >= celiangtubiao16.getPoint5_TL()
					&& celiangtubiao16.getAvgtest_point6() <= celiangtubiao16.getPoint6_TH()
					&& celiangtubiao16.getAvgtest_point6() >= celiangtubiao16.getPoint6_TL()
					&& celiangtubiao16.getAvgoil_point() <= celiangtubiao16.getOil_TH()
					&& celiangtubiao16.getAvgoil_point() >= celiangtubiao16.getOil_TL()) {
				request.getSession().setAttribute("dian16", 2);
			}
		} else if (celiangtubiao16.getAvgtest_point1() != null && celiangtubiao16.getAvgtest_point2() != null
				&& celiangtubiao16.getAvgtest_point3() != null && celiangtubiao16.getAvgtest_point4() != null
				&& celiangtubiao16.getAvgtest_point5() != null && celiangtubiao16.getAvgoil_point() != null) {
			if (celiangtubiao16.getAvgtest_point1() <= celiangtubiao16.getPoint1_TH()
					&& celiangtubiao16.getAvgtest_point1() >= celiangtubiao16.getPoint1_TL()
					&& celiangtubiao16.getAvgtest_point2() <= celiangtubiao16.getPoint2_TH()
					&& celiangtubiao16.getAvgtest_point2() >= celiangtubiao16.getPoint2_TL()
					&& celiangtubiao16.getAvgtest_point3() <= celiangtubiao16.getPoint3_TH()
					&& celiangtubiao16.getAvgtest_point3() >= celiangtubiao16.getPoint3_TL()
					&& celiangtubiao16.getAvgtest_point4() <= celiangtubiao16.getPoint4_TH()
					&& celiangtubiao16.getAvgtest_point4() >= celiangtubiao16.getPoint4_TL()
					&& celiangtubiao16.getAvgtest_point5() <= celiangtubiao16.getPoint5_TH()
					&& celiangtubiao16.getAvgtest_point5() >= celiangtubiao16.getPoint5_TL()
					&& celiangtubiao16.getAvgoil_point() <= celiangtubiao16.getOil_TH()
					&& celiangtubiao16.getAvgoil_point() >= celiangtubiao16.getOil_TL()) {
				request.getSession().setAttribute("dian16", 2);
			}
		} else if (celiangtubiao16.getAvgtest_point1() != null && celiangtubiao16.getAvgtest_point2() != null
				&& celiangtubiao16.getAvgtest_point3() != null && celiangtubiao16.getAvgtest_point4() != null
				&& celiangtubiao16.getAvgoil_point() != null) {
			if (celiangtubiao16.getAvgtest_point1() <= celiangtubiao16.getPoint1_TH()
					&& celiangtubiao16.getAvgtest_point1() >= celiangtubiao16.getPoint1_TL()
					&& celiangtubiao16.getAvgtest_point2() <= celiangtubiao16.getPoint2_TH()
					&& celiangtubiao16.getAvgtest_point2() >= celiangtubiao16.getPoint2_TL()
					&& celiangtubiao16.getAvgtest_point3() <= celiangtubiao16.getPoint3_TH()
					&& celiangtubiao16.getAvgtest_point3() >= celiangtubiao16.getPoint3_TL()
					&& celiangtubiao16.getAvgtest_point4() <= celiangtubiao16.getPoint4_TH()
					&& celiangtubiao16.getAvgtest_point4() >= celiangtubiao16.getPoint4_TL()
					&& celiangtubiao16.getAvgoil_point() <= celiangtubiao16.getOil_TH()
					&& celiangtubiao16.getAvgoil_point() >= celiangtubiao16.getOil_TL()) {
				request.getSession().setAttribute("dian16", 2);
			}
		} else {
			request.getSession().setAttribute("dian16", 3);
		}

		// 17
		if (celiangtubiao17 == null) {
			request.getSession().setAttribute("dian17", 1);
		} else if (celiangtubiao17.getAvgtest_point1() != null && celiangtubiao17.getAvgtest_point2() != null
				&& celiangtubiao17.getAvgtest_point3() != null && celiangtubiao17.getAvgtest_point4() != null
				&& celiangtubiao17.getAvgtest_point5() != null && celiangtubiao17.getAvgtest_point6() != null
				&& celiangtubiao17.getAvgtest_point7() != null && celiangtubiao17.getAvgtest_point8() != null
				&& celiangtubiao17.getAvgoil_point() != null) {
			if (celiangtubiao17.getAvgtest_point1() <= celiangtubiao17.getPoint1_TH()
					&& celiangtubiao17.getAvgtest_point1() >= celiangtubiao17.getPoint1_TL()
					&& celiangtubiao17.getAvgtest_point2() <= celiangtubiao17.getPoint2_TH()
					&& celiangtubiao17.getAvgtest_point2() >= celiangtubiao17.getPoint2_TL()
					&& celiangtubiao17.getAvgtest_point3() <= celiangtubiao17.getPoint3_TH()
					&& celiangtubiao17.getAvgtest_point3() >= celiangtubiao17.getPoint3_TL()
					&& celiangtubiao17.getAvgtest_point4() <= celiangtubiao17.getPoint4_TH()
					&& celiangtubiao17.getAvgtest_point4() >= celiangtubiao17.getPoint4_TL()
					&& celiangtubiao17.getAvgtest_point5() <= celiangtubiao17.getPoint5_TH()
					&& celiangtubiao17.getAvgtest_point5() >= celiangtubiao17.getPoint5_TL()
					&& celiangtubiao17.getAvgtest_point6() <= celiangtubiao17.getPoint6_TH()
					&& celiangtubiao17.getAvgtest_point6() >= celiangtubiao17.getPoint6_TL()
					&& celiangtubiao17.getAvgtest_point7() <= celiangtubiao17.getPoint7_TH()
					&& celiangtubiao17.getAvgtest_point7() >= celiangtubiao17.getPoint7_TL()
					&& celiangtubiao17.getAvgtest_point8() <= celiangtubiao17.getPoint8_TH()
					&& celiangtubiao17.getAvgtest_point8() >= celiangtubiao17.getPoint8_TL()
					&& celiangtubiao17.getAvgoil_point() <= celiangtubiao17.getOil_TH()
					&& celiangtubiao17.getAvgoil_point() >= celiangtubiao17.getOil_TL()) {
				request.getSession().setAttribute("dian17", 2);
			}
		} else if (celiangtubiao17.getAvgtest_point1() != null && celiangtubiao17.getAvgtest_point2() != null
				&& celiangtubiao17.getAvgtest_point3() != null && celiangtubiao17.getAvgtest_point4() != null
				&& celiangtubiao17.getAvgtest_point5() != null && celiangtubiao17.getAvgtest_point6() != null
				&& celiangtubiao17.getAvgtest_point7() != null && celiangtubiao17.getAvgoil_point() != null) {
			if (celiangtubiao17.getAvgtest_point1() <= celiangtubiao17.getPoint1_TH()
					&& celiangtubiao17.getAvgtest_point1() >= celiangtubiao17.getPoint1_TL()
					&& celiangtubiao17.getAvgtest_point2() <= celiangtubiao17.getPoint2_TH()
					&& celiangtubiao17.getAvgtest_point2() >= celiangtubiao17.getPoint2_TL()
					&& celiangtubiao17.getAvgtest_point3() <= celiangtubiao17.getPoint3_TH()
					&& celiangtubiao17.getAvgtest_point3() >= celiangtubiao17.getPoint3_TL()
					&& celiangtubiao17.getAvgtest_point4() <= celiangtubiao17.getPoint4_TH()
					&& celiangtubiao17.getAvgtest_point4() >= celiangtubiao17.getPoint4_TL()
					&& celiangtubiao17.getAvgtest_point5() <= celiangtubiao17.getPoint5_TH()
					&& celiangtubiao17.getAvgtest_point5() >= celiangtubiao17.getPoint5_TL()
					&& celiangtubiao17.getAvgtest_point6() <= celiangtubiao17.getPoint6_TH()
					&& celiangtubiao17.getAvgtest_point6() >= celiangtubiao17.getPoint6_TL()
					&& celiangtubiao17.getAvgtest_point7() <= celiangtubiao17.getPoint7_TH()
					&& celiangtubiao17.getAvgtest_point7() >= celiangtubiao17.getPoint7_TL()
					&& celiangtubiao17.getAvgoil_point() <= celiangtubiao17.getOil_TH()
					&& celiangtubiao17.getAvgoil_point() >= celiangtubiao17.getOil_TL()) {
				request.getSession().setAttribute("dian17", 2);
			}
		} else if (celiangtubiao17.getAvgtest_point1() != null && celiangtubiao17.getAvgtest_point2() != null
				&& celiangtubiao17.getAvgtest_point3() != null && celiangtubiao17.getAvgtest_point4() != null
				&& celiangtubiao17.getAvgtest_point5() != null && celiangtubiao17.getAvgtest_point6() != null
				&& celiangtubiao17.getAvgoil_point() != null) {
			if (celiangtubiao17.getAvgtest_point1() <= celiangtubiao17.getPoint1_TH()
					&& celiangtubiao17.getAvgtest_point1() >= celiangtubiao17.getPoint1_TL()
					&& celiangtubiao17.getAvgtest_point2() <= celiangtubiao17.getPoint2_TH()
					&& celiangtubiao17.getAvgtest_point2() >= celiangtubiao17.getPoint2_TL()
					&& celiangtubiao17.getAvgtest_point3() <= celiangtubiao17.getPoint3_TH()
					&& celiangtubiao17.getAvgtest_point3() >= celiangtubiao17.getPoint3_TL()
					&& celiangtubiao17.getAvgtest_point4() <= celiangtubiao17.getPoint4_TH()
					&& celiangtubiao17.getAvgtest_point4() >= celiangtubiao17.getPoint4_TL()
					&& celiangtubiao17.getAvgtest_point5() <= celiangtubiao17.getPoint5_TH()
					&& celiangtubiao17.getAvgtest_point5() >= celiangtubiao17.getPoint5_TL()
					&& celiangtubiao17.getAvgtest_point6() <= celiangtubiao17.getPoint6_TH()
					&& celiangtubiao17.getAvgtest_point6() >= celiangtubiao17.getPoint6_TL()
					&& celiangtubiao17.getAvgoil_point() <= celiangtubiao17.getOil_TH()
					&& celiangtubiao17.getAvgoil_point() >= celiangtubiao17.getOil_TL()) {
				request.getSession().setAttribute("dian17", 2);
			}
		} else if (celiangtubiao17.getAvgtest_point1() != null && celiangtubiao17.getAvgtest_point2() != null
				&& celiangtubiao17.getAvgtest_point3() != null && celiangtubiao17.getAvgtest_point4() != null
				&& celiangtubiao17.getAvgtest_point5() != null && celiangtubiao17.getAvgoil_point() != null) {
			if (celiangtubiao17.getAvgtest_point1() <= celiangtubiao17.getPoint1_TH()
					&& celiangtubiao17.getAvgtest_point1() >= celiangtubiao17.getPoint1_TL()
					&& celiangtubiao17.getAvgtest_point2() <= celiangtubiao17.getPoint2_TH()
					&& celiangtubiao17.getAvgtest_point2() >= celiangtubiao17.getPoint2_TL()
					&& celiangtubiao17.getAvgtest_point3() <= celiangtubiao17.getPoint3_TH()
					&& celiangtubiao17.getAvgtest_point3() >= celiangtubiao17.getPoint3_TL()
					&& celiangtubiao17.getAvgtest_point4() <= celiangtubiao17.getPoint4_TH()
					&& celiangtubiao17.getAvgtest_point4() >= celiangtubiao17.getPoint4_TL()
					&& celiangtubiao17.getAvgtest_point5() <= celiangtubiao17.getPoint5_TH()
					&& celiangtubiao17.getAvgtest_point5() >= celiangtubiao17.getPoint5_TL()
					&& celiangtubiao17.getAvgoil_point() <= celiangtubiao17.getOil_TH()
					&& celiangtubiao17.getAvgoil_point() >= celiangtubiao17.getOil_TL()) {
				request.getSession().setAttribute("dian17", 2);
			}
		} else if (celiangtubiao17.getAvgtest_point1() != null && celiangtubiao17.getAvgtest_point2() != null
				&& celiangtubiao17.getAvgtest_point3() != null && celiangtubiao17.getAvgtest_point4() != null
				&& celiangtubiao17.getAvgoil_point() != null) {
			if (celiangtubiao17.getAvgtest_point1() <= celiangtubiao17.getPoint1_TH()
					&& celiangtubiao17.getAvgtest_point1() >= celiangtubiao17.getPoint1_TL()
					&& celiangtubiao17.getAvgtest_point2() <= celiangtubiao17.getPoint2_TH()
					&& celiangtubiao17.getAvgtest_point2() >= celiangtubiao17.getPoint2_TL()
					&& celiangtubiao17.getAvgtest_point3() <= celiangtubiao17.getPoint3_TH()
					&& celiangtubiao17.getAvgtest_point3() >= celiangtubiao17.getPoint3_TL()
					&& celiangtubiao17.getAvgtest_point4() <= celiangtubiao17.getPoint4_TH()
					&& celiangtubiao17.getAvgtest_point4() >= celiangtubiao17.getPoint4_TL()
					&& celiangtubiao17.getAvgoil_point() <= celiangtubiao17.getOil_TH()
					&& celiangtubiao17.getAvgoil_point() >= celiangtubiao17.getOil_TL()) {
				request.getSession().setAttribute("dian17", 2);
			}
		} else {
			request.getSession().setAttribute("dian17", 3);
		}

		// 18
		if (celiangtubiao18 == null) {
			request.getSession().setAttribute("dian18", 1);
		} else if (celiangtubiao18.getAvgtest_point1() != null && celiangtubiao18.getAvgtest_point2() != null
				&& celiangtubiao18.getAvgtest_point3() != null && celiangtubiao18.getAvgtest_point4() != null
				&& celiangtubiao18.getAvgtest_point5() != null && celiangtubiao18.getAvgtest_point6() != null
				&& celiangtubiao18.getAvgtest_point7() != null && celiangtubiao18.getAvgtest_point8() != null
				&& celiangtubiao18.getAvgoil_point() != null) {
			if (celiangtubiao18.getAvgtest_point1() <= celiangtubiao18.getPoint1_TH()
					&& celiangtubiao18.getAvgtest_point1() >= celiangtubiao18.getPoint1_TL()
					&& celiangtubiao18.getAvgtest_point2() <= celiangtubiao18.getPoint2_TH()
					&& celiangtubiao18.getAvgtest_point2() >= celiangtubiao18.getPoint2_TL()
					&& celiangtubiao18.getAvgtest_point3() <= celiangtubiao18.getPoint3_TH()
					&& celiangtubiao18.getAvgtest_point3() >= celiangtubiao18.getPoint3_TL()
					&& celiangtubiao18.getAvgtest_point4() <= celiangtubiao18.getPoint4_TH()
					&& celiangtubiao18.getAvgtest_point4() >= celiangtubiao18.getPoint4_TL()
					&& celiangtubiao18.getAvgtest_point5() <= celiangtubiao18.getPoint5_TH()
					&& celiangtubiao18.getAvgtest_point5() >= celiangtubiao18.getPoint5_TL()
					&& celiangtubiao18.getAvgtest_point6() <= celiangtubiao18.getPoint6_TH()
					&& celiangtubiao18.getAvgtest_point6() >= celiangtubiao18.getPoint6_TL()
					&& celiangtubiao18.getAvgtest_point7() <= celiangtubiao18.getPoint7_TH()
					&& celiangtubiao18.getAvgtest_point7() >= celiangtubiao18.getPoint7_TL()
					&& celiangtubiao18.getAvgtest_point8() <= celiangtubiao18.getPoint8_TH()
					&& celiangtubiao18.getAvgtest_point8() >= celiangtubiao18.getPoint8_TL()
					&& celiangtubiao18.getAvgoil_point() <= celiangtubiao18.getOil_TH()
					&& celiangtubiao18.getAvgoil_point() >= celiangtubiao18.getOil_TL()) {
				request.getSession().setAttribute("dian18", 2);
				request.getSession().setAttribute("dian13", 2);
			}
		} else if (celiangtubiao18.getAvgtest_point1() != null && celiangtubiao18.getAvgtest_point2() != null
				&& celiangtubiao18.getAvgtest_point3() != null && celiangtubiao18.getAvgtest_point4() != null
				&& celiangtubiao18.getAvgtest_point5() != null && celiangtubiao18.getAvgtest_point6() != null
				&& celiangtubiao18.getAvgtest_point7() != null && celiangtubiao18.getAvgoil_point() != null) {
			if (celiangtubiao18.getAvgtest_point1() <= celiangtubiao18.getPoint1_TH()
					&& celiangtubiao18.getAvgtest_point1() >= celiangtubiao18.getPoint1_TL()
					&& celiangtubiao18.getAvgtest_point2() <= celiangtubiao18.getPoint2_TH()
					&& celiangtubiao18.getAvgtest_point2() >= celiangtubiao18.getPoint2_TL()
					&& celiangtubiao18.getAvgtest_point3() <= celiangtubiao18.getPoint3_TH()
					&& celiangtubiao18.getAvgtest_point3() >= celiangtubiao18.getPoint3_TL()
					&& celiangtubiao18.getAvgtest_point4() <= celiangtubiao18.getPoint4_TH()
					&& celiangtubiao18.getAvgtest_point4() >= celiangtubiao18.getPoint4_TL()
					&& celiangtubiao18.getAvgtest_point5() <= celiangtubiao18.getPoint5_TH()
					&& celiangtubiao18.getAvgtest_point5() >= celiangtubiao18.getPoint5_TL()
					&& celiangtubiao18.getAvgtest_point6() <= celiangtubiao18.getPoint6_TH()
					&& celiangtubiao18.getAvgtest_point6() >= celiangtubiao18.getPoint6_TL()
					&& celiangtubiao18.getAvgtest_point7() <= celiangtubiao18.getPoint7_TH()
					&& celiangtubiao18.getAvgtest_point7() >= celiangtubiao18.getPoint7_TL()
					&& celiangtubiao18.getAvgoil_point() <= celiangtubiao18.getOil_TH()
					&& celiangtubiao18.getAvgoil_point() >= celiangtubiao18.getOil_TL()) {
				request.getSession().setAttribute("dian18", 2);
				request.getSession().setAttribute("dian13", 2);
			}
		} else if (celiangtubiao18.getAvgtest_point1() != null && celiangtubiao18.getAvgtest_point2() != null
				&& celiangtubiao18.getAvgtest_point3() != null && celiangtubiao18.getAvgtest_point4() != null
				&& celiangtubiao18.getAvgtest_point5() != null && celiangtubiao18.getAvgtest_point6() != null
				&& celiangtubiao18.getAvgoil_point() != null) {
			if (celiangtubiao18.getAvgtest_point1() <= celiangtubiao18.getPoint1_TH()
					&& celiangtubiao18.getAvgtest_point1() >= celiangtubiao18.getPoint1_TL()
					&& celiangtubiao18.getAvgtest_point2() <= celiangtubiao18.getPoint2_TH()
					&& celiangtubiao18.getAvgtest_point2() >= celiangtubiao18.getPoint2_TL()
					&& celiangtubiao18.getAvgtest_point3() <= celiangtubiao18.getPoint3_TH()
					&& celiangtubiao18.getAvgtest_point3() >= celiangtubiao18.getPoint3_TL()
					&& celiangtubiao18.getAvgtest_point4() <= celiangtubiao18.getPoint4_TH()
					&& celiangtubiao18.getAvgtest_point4() >= celiangtubiao18.getPoint4_TL()
					&& celiangtubiao18.getAvgtest_point5() <= celiangtubiao18.getPoint5_TH()
					&& celiangtubiao18.getAvgtest_point5() >= celiangtubiao18.getPoint5_TL()
					&& celiangtubiao18.getAvgtest_point6() <= celiangtubiao18.getPoint6_TH()
					&& celiangtubiao18.getAvgtest_point6() >= celiangtubiao18.getPoint6_TL()
					&& celiangtubiao18.getAvgoil_point() <= celiangtubiao18.getOil_TH()
					&& celiangtubiao18.getAvgoil_point() >= celiangtubiao18.getOil_TL()) {
				request.getSession().setAttribute("dian18", 2);
				request.getSession().setAttribute("dian13", 2);
			}
		} else if (celiangtubiao18.getAvgtest_point1() != null && celiangtubiao18.getAvgtest_point2() != null
				&& celiangtubiao18.getAvgtest_point3() != null && celiangtubiao18.getAvgtest_point4() != null
				&& celiangtubiao18.getAvgtest_point5() != null && celiangtubiao18.getAvgoil_point() != null) {
			if (celiangtubiao18.getAvgtest_point1() <= celiangtubiao18.getPoint1_TH()
					&& celiangtubiao18.getAvgtest_point1() >= celiangtubiao18.getPoint1_TL()
					&& celiangtubiao18.getAvgtest_point2() <= celiangtubiao18.getPoint2_TH()
					&& celiangtubiao18.getAvgtest_point2() >= celiangtubiao18.getPoint2_TL()
					&& celiangtubiao18.getAvgtest_point3() <= celiangtubiao18.getPoint3_TH()
					&& celiangtubiao18.getAvgtest_point3() >= celiangtubiao18.getPoint3_TL()
					&& celiangtubiao18.getAvgtest_point4() <= celiangtubiao18.getPoint4_TH()
					&& celiangtubiao18.getAvgtest_point4() >= celiangtubiao18.getPoint4_TL()
					&& celiangtubiao18.getAvgtest_point5() <= celiangtubiao18.getPoint5_TH()
					&& celiangtubiao18.getAvgtest_point5() >= celiangtubiao18.getPoint5_TL()
					&& celiangtubiao18.getAvgoil_point() <= celiangtubiao18.getOil_TH()
					&& celiangtubiao18.getAvgoil_point() >= celiangtubiao18.getOil_TL()) {
				request.getSession().setAttribute("dian18", 2);
				request.getSession().setAttribute("dian13", 2);
			}
		} else if (celiangtubiao18.getAvgtest_point1() != null && celiangtubiao18.getAvgtest_point2() != null
				&& celiangtubiao18.getAvgtest_point3() != null && celiangtubiao18.getAvgtest_point4() != null
				&& celiangtubiao18.getAvgoil_point() != null) {
			if (celiangtubiao18.getAvgtest_point1() <= celiangtubiao18.getPoint1_TH()
					&& celiangtubiao18.getAvgtest_point1() >= celiangtubiao18.getPoint1_TL()
					&& celiangtubiao18.getAvgtest_point2() <= celiangtubiao18.getPoint2_TH()
					&& celiangtubiao18.getAvgtest_point2() >= celiangtubiao18.getPoint2_TL()
					&& celiangtubiao18.getAvgtest_point3() <= celiangtubiao18.getPoint3_TH()
					&& celiangtubiao18.getAvgtest_point3() >= celiangtubiao18.getPoint3_TL()
					&& celiangtubiao18.getAvgtest_point4() <= celiangtubiao18.getPoint4_TH()
					&& celiangtubiao18.getAvgtest_point4() >= celiangtubiao18.getPoint4_TL()
					&& celiangtubiao18.getAvgoil_point() <= celiangtubiao18.getOil_TH()
					&& celiangtubiao18.getAvgoil_point() >= celiangtubiao18.getOil_TL()) {
				request.getSession().setAttribute("dian18", 2);
				request.getSession().setAttribute("dian13", 2);
			}
		} else {
			request.getSession().setAttribute("dian18", 3);
		}
		// 19
		if (celiangtubiao19 == null) {
			request.getSession().setAttribute("dian19", 1);
		} else if (celiangtubiao19.getAvgtest_point1() != null && celiangtubiao19.getAvgtest_point2() != null
				&& celiangtubiao19.getAvgtest_point3() != null && celiangtubiao19.getAvgtest_point4() != null
				&& celiangtubiao19.getAvgtest_point5() != null && celiangtubiao19.getAvgtest_point6() != null
				&& celiangtubiao19.getAvgtest_point7() != null && celiangtubiao19.getAvgtest_point8() != null
				&& celiangtubiao19.getAvgoil_point() != null) {
			if (celiangtubiao19.getAvgtest_point1() <= celiangtubiao19.getPoint1_TH()
					&& celiangtubiao19.getAvgtest_point1() >= celiangtubiao19.getPoint1_TL()
					&& celiangtubiao19.getAvgtest_point2() <= celiangtubiao19.getPoint2_TH()
					&& celiangtubiao19.getAvgtest_point2() >= celiangtubiao19.getPoint2_TL()
					&& celiangtubiao19.getAvgtest_point3() <= celiangtubiao19.getPoint3_TH()
					&& celiangtubiao19.getAvgtest_point3() >= celiangtubiao19.getPoint3_TL()
					&& celiangtubiao19.getAvgtest_point4() <= celiangtubiao19.getPoint4_TH()
					&& celiangtubiao19.getAvgtest_point4() >= celiangtubiao19.getPoint4_TL()
					&& celiangtubiao19.getAvgtest_point5() <= celiangtubiao19.getPoint5_TH()
					&& celiangtubiao19.getAvgtest_point5() >= celiangtubiao19.getPoint5_TL()
					&& celiangtubiao19.getAvgtest_point6() <= celiangtubiao19.getPoint6_TH()
					&& celiangtubiao19.getAvgtest_point6() >= celiangtubiao19.getPoint6_TL()
					&& celiangtubiao19.getAvgtest_point7() <= celiangtubiao19.getPoint7_TH()
					&& celiangtubiao19.getAvgtest_point7() >= celiangtubiao19.getPoint7_TL()
					&& celiangtubiao19.getAvgtest_point8() <= celiangtubiao19.getPoint8_TH()
					&& celiangtubiao19.getAvgtest_point8() >= celiangtubiao19.getPoint8_TL()
					&& celiangtubiao19.getAvgoil_point() <= celiangtubiao19.getOil_TH()
					&& celiangtubiao19.getAvgoil_point() >= celiangtubiao19.getOil_TL()) {
				request.getSession().setAttribute("dian19", 2);
				request.getSession().setAttribute("dian14", 2);
			}
		} else if (celiangtubiao19.getAvgtest_point1() != null && celiangtubiao19.getAvgtest_point2() != null
				&& celiangtubiao19.getAvgtest_point3() != null && celiangtubiao19.getAvgtest_point4() != null
				&& celiangtubiao19.getAvgtest_point5() != null && celiangtubiao19.getAvgtest_point6() != null
				&& celiangtubiao19.getAvgtest_point7() != null && celiangtubiao19.getAvgoil_point() != null) {
			if (celiangtubiao19.getAvgtest_point1() <= celiangtubiao19.getPoint1_TH()
					&& celiangtubiao19.getAvgtest_point1() >= celiangtubiao19.getPoint1_TL()
					&& celiangtubiao19.getAvgtest_point2() <= celiangtubiao19.getPoint2_TH()
					&& celiangtubiao19.getAvgtest_point2() >= celiangtubiao19.getPoint2_TL()
					&& celiangtubiao19.getAvgtest_point3() <= celiangtubiao19.getPoint3_TH()
					&& celiangtubiao19.getAvgtest_point3() >= celiangtubiao19.getPoint3_TL()
					&& celiangtubiao19.getAvgtest_point4() <= celiangtubiao19.getPoint4_TH()
					&& celiangtubiao19.getAvgtest_point4() >= celiangtubiao19.getPoint4_TL()
					&& celiangtubiao19.getAvgtest_point5() <= celiangtubiao19.getPoint5_TH()
					&& celiangtubiao19.getAvgtest_point5() >= celiangtubiao19.getPoint5_TL()
					&& celiangtubiao19.getAvgtest_point6() <= celiangtubiao19.getPoint6_TH()
					&& celiangtubiao19.getAvgtest_point6() >= celiangtubiao19.getPoint6_TL()
					&& celiangtubiao19.getAvgtest_point7() <= celiangtubiao19.getPoint7_TH()
					&& celiangtubiao19.getAvgtest_point7() >= celiangtubiao19.getPoint7_TL()
					&& celiangtubiao19.getAvgoil_point() <= celiangtubiao19.getOil_TH()
					&& celiangtubiao19.getAvgoil_point() >= celiangtubiao19.getOil_TL()) {
				request.getSession().setAttribute("dian19", 2);
				request.getSession().setAttribute("dian14", 2);
			}
		} else if (celiangtubiao19.getAvgtest_point1() != null && celiangtubiao19.getAvgtest_point2() != null
				&& celiangtubiao19.getAvgtest_point3() != null && celiangtubiao19.getAvgtest_point4() != null
				&& celiangtubiao19.getAvgtest_point5() != null && celiangtubiao19.getAvgtest_point6() != null
				&& celiangtubiao19.getAvgoil_point() != null) {
			if (celiangtubiao19.getAvgtest_point1() <= celiangtubiao19.getPoint1_TH()
					&& celiangtubiao19.getAvgtest_point1() >= celiangtubiao19.getPoint1_TL()
					&& celiangtubiao19.getAvgtest_point2() <= celiangtubiao19.getPoint2_TH()
					&& celiangtubiao19.getAvgtest_point2() >= celiangtubiao19.getPoint2_TL()
					&& celiangtubiao19.getAvgtest_point3() <= celiangtubiao19.getPoint3_TH()
					&& celiangtubiao19.getAvgtest_point3() >= celiangtubiao19.getPoint3_TL()
					&& celiangtubiao19.getAvgtest_point4() <= celiangtubiao19.getPoint4_TH()
					&& celiangtubiao19.getAvgtest_point4() >= celiangtubiao19.getPoint4_TL()
					&& celiangtubiao19.getAvgtest_point5() <= celiangtubiao19.getPoint5_TH()
					&& celiangtubiao19.getAvgtest_point5() >= celiangtubiao19.getPoint5_TL()
					&& celiangtubiao19.getAvgtest_point6() <= celiangtubiao19.getPoint6_TH()
					&& celiangtubiao19.getAvgtest_point6() >= celiangtubiao19.getPoint6_TL()
					&& celiangtubiao19.getAvgoil_point() <= celiangtubiao19.getOil_TH()
					&& celiangtubiao19.getAvgoil_point() >= celiangtubiao19.getOil_TL()) {
				request.getSession().setAttribute("dian19", 2);
				request.getSession().setAttribute("dian14", 2);
			}
		} else if (celiangtubiao19.getAvgtest_point1() != null && celiangtubiao19.getAvgtest_point2() != null
				&& celiangtubiao19.getAvgtest_point3() != null && celiangtubiao19.getAvgtest_point4() != null
				&& celiangtubiao19.getAvgtest_point5() != null && celiangtubiao19.getAvgoil_point() != null) {
			if (celiangtubiao19.getAvgtest_point1() <= celiangtubiao19.getPoint1_TH()
					&& celiangtubiao19.getAvgtest_point1() >= celiangtubiao19.getPoint1_TL()
					&& celiangtubiao19.getAvgtest_point2() <= celiangtubiao19.getPoint2_TH()
					&& celiangtubiao19.getAvgtest_point2() >= celiangtubiao19.getPoint2_TL()
					&& celiangtubiao19.getAvgtest_point3() <= celiangtubiao19.getPoint3_TH()
					&& celiangtubiao19.getAvgtest_point3() >= celiangtubiao19.getPoint3_TL()
					&& celiangtubiao19.getAvgtest_point4() <= celiangtubiao19.getPoint4_TH()
					&& celiangtubiao19.getAvgtest_point4() >= celiangtubiao19.getPoint4_TL()
					&& celiangtubiao19.getAvgtest_point5() <= celiangtubiao19.getPoint5_TH()
					&& celiangtubiao19.getAvgtest_point5() >= celiangtubiao19.getPoint5_TL()
					&& celiangtubiao19.getAvgoil_point() <= celiangtubiao19.getOil_TH()
					&& celiangtubiao19.getAvgoil_point() >= celiangtubiao19.getOil_TL()) {
				request.getSession().setAttribute("dian19", 2);
				request.getSession().setAttribute("dian14", 2);
			}
		} else if (celiangtubiao19.getAvgtest_point1() != null && celiangtubiao19.getAvgtest_point2() != null
				&& celiangtubiao19.getAvgtest_point3() != null && celiangtubiao19.getAvgtest_point4() != null
				&& celiangtubiao19.getAvgoil_point() != null) {
			if (celiangtubiao19.getAvgtest_point1() <= celiangtubiao19.getPoint1_TH()
					&& celiangtubiao19.getAvgtest_point1() >= celiangtubiao19.getPoint1_TL()
					&& celiangtubiao19.getAvgtest_point2() <= celiangtubiao19.getPoint2_TH()
					&& celiangtubiao19.getAvgtest_point2() >= celiangtubiao19.getPoint2_TL()
					&& celiangtubiao19.getAvgtest_point3() <= celiangtubiao19.getPoint3_TH()
					&& celiangtubiao19.getAvgtest_point3() >= celiangtubiao19.getPoint3_TL()
					&& celiangtubiao19.getAvgtest_point4() <= celiangtubiao19.getPoint4_TH()
					&& celiangtubiao19.getAvgtest_point4() >= celiangtubiao19.getPoint4_TL()
					&& celiangtubiao19.getAvgoil_point() <= celiangtubiao19.getOil_TH()
					&& celiangtubiao19.getAvgoil_point() >= celiangtubiao19.getOil_TL()) {
				request.getSession().setAttribute("dian19", 2);
				request.getSession().setAttribute("dian14", 2);
			}
		} else {
			request.getSession().setAttribute("dian19", 3);
		}

		// 20
		if (celiangtubiao20 == null) {
			request.getSession().setAttribute("dian20", 1);
		} else if (celiangtubiao20.getAvgtest_point1() != null && celiangtubiao20.getAvgtest_point2() != null
				&& celiangtubiao20.getAvgtest_point3() != null && celiangtubiao20.getAvgtest_point4() != null
				&& celiangtubiao20.getAvgtest_point5() != null && celiangtubiao20.getAvgtest_point6() != null
				&& celiangtubiao20.getAvgtest_point7() != null && celiangtubiao20.getAvgtest_point8() != null
				&& celiangtubiao20.getAvgoil_point() != null) {
			if (celiangtubiao20.getAvgtest_point1() <= celiangtubiao20.getPoint1_TH()
					&& celiangtubiao20.getAvgtest_point1() >= celiangtubiao20.getPoint1_TL()
					&& celiangtubiao20.getAvgtest_point2() <= celiangtubiao20.getPoint2_TH()
					&& celiangtubiao20.getAvgtest_point2() >= celiangtubiao20.getPoint2_TL()
					&& celiangtubiao20.getAvgtest_point3() <= celiangtubiao20.getPoint3_TH()
					&& celiangtubiao20.getAvgtest_point3() >= celiangtubiao20.getPoint3_TL()
					&& celiangtubiao20.getAvgtest_point4() <= celiangtubiao20.getPoint4_TH()
					&& celiangtubiao20.getAvgtest_point4() >= celiangtubiao20.getPoint4_TL()
					&& celiangtubiao20.getAvgtest_point5() <= celiangtubiao20.getPoint5_TH()
					&& celiangtubiao20.getAvgtest_point5() >= celiangtubiao20.getPoint5_TL()
					&& celiangtubiao20.getAvgtest_point6() <= celiangtubiao20.getPoint6_TH()
					&& celiangtubiao20.getAvgtest_point6() >= celiangtubiao20.getPoint6_TL()
					&& celiangtubiao20.getAvgtest_point7() <= celiangtubiao20.getPoint7_TH()
					&& celiangtubiao20.getAvgtest_point7() >= celiangtubiao20.getPoint7_TL()
					&& celiangtubiao20.getAvgtest_point8() <= celiangtubiao20.getPoint8_TH()
					&& celiangtubiao20.getAvgtest_point8() >= celiangtubiao20.getPoint8_TL()
					&& celiangtubiao20.getAvgoil_point() <= celiangtubiao20.getOil_TH()
					&& celiangtubiao20.getAvgoil_point() >= celiangtubiao20.getOil_TL()) {
				request.getSession().setAttribute("dian20", 2);
				request.getSession().setAttribute("dian15", 2);
			}
		} else if (celiangtubiao20.getAvgtest_point1() != null && celiangtubiao20.getAvgtest_point2() != null
				&& celiangtubiao20.getAvgtest_point3() != null && celiangtubiao20.getAvgtest_point4() != null
				&& celiangtubiao20.getAvgtest_point5() != null && celiangtubiao20.getAvgtest_point6() != null
				&& celiangtubiao20.getAvgtest_point7() != null && celiangtubiao20.getAvgoil_point() != null) {
			if (celiangtubiao20.getAvgtest_point1() <= celiangtubiao20.getPoint1_TH()
					&& celiangtubiao20.getAvgtest_point1() >= celiangtubiao20.getPoint1_TL()
					&& celiangtubiao20.getAvgtest_point2() <= celiangtubiao20.getPoint2_TH()
					&& celiangtubiao20.getAvgtest_point2() >= celiangtubiao20.getPoint2_TL()
					&& celiangtubiao20.getAvgtest_point3() <= celiangtubiao20.getPoint3_TH()
					&& celiangtubiao20.getAvgtest_point3() >= celiangtubiao20.getPoint3_TL()
					&& celiangtubiao20.getAvgtest_point4() <= celiangtubiao20.getPoint4_TH()
					&& celiangtubiao20.getAvgtest_point4() >= celiangtubiao20.getPoint4_TL()
					&& celiangtubiao20.getAvgtest_point5() <= celiangtubiao20.getPoint5_TH()
					&& celiangtubiao20.getAvgtest_point5() >= celiangtubiao20.getPoint5_TL()
					&& celiangtubiao20.getAvgtest_point6() <= celiangtubiao20.getPoint6_TH()
					&& celiangtubiao20.getAvgtest_point6() >= celiangtubiao20.getPoint6_TL()
					&& celiangtubiao20.getAvgtest_point7() <= celiangtubiao20.getPoint7_TH()
					&& celiangtubiao20.getAvgtest_point7() >= celiangtubiao20.getPoint7_TL()
					&& celiangtubiao20.getAvgoil_point() <= celiangtubiao20.getOil_TH()
					&& celiangtubiao20.getAvgoil_point() >= celiangtubiao20.getOil_TL()) {
				request.getSession().setAttribute("dian20", 2);
				request.getSession().setAttribute("dian15", 2);
			}
		} else if (celiangtubiao20.getAvgtest_point1() != null && celiangtubiao20.getAvgtest_point2() != null
				&& celiangtubiao20.getAvgtest_point3() != null && celiangtubiao20.getAvgtest_point4() != null
				&& celiangtubiao20.getAvgtest_point5() != null && celiangtubiao20.getAvgtest_point6() != null
				&& celiangtubiao20.getAvgoil_point() != null) {
			if (celiangtubiao20.getAvgtest_point1() <= celiangtubiao20.getPoint1_TH()
					&& celiangtubiao20.getAvgtest_point1() >= celiangtubiao20.getPoint1_TL()
					&& celiangtubiao20.getAvgtest_point2() <= celiangtubiao20.getPoint2_TH()
					&& celiangtubiao20.getAvgtest_point2() >= celiangtubiao20.getPoint2_TL()
					&& celiangtubiao20.getAvgtest_point3() <= celiangtubiao20.getPoint3_TH()
					&& celiangtubiao20.getAvgtest_point3() >= celiangtubiao20.getPoint3_TL()
					&& celiangtubiao20.getAvgtest_point4() <= celiangtubiao20.getPoint4_TH()
					&& celiangtubiao20.getAvgtest_point4() >= celiangtubiao20.getPoint4_TL()
					&& celiangtubiao20.getAvgtest_point5() <= celiangtubiao20.getPoint5_TH()
					&& celiangtubiao20.getAvgtest_point5() >= celiangtubiao20.getPoint5_TL()
					&& celiangtubiao20.getAvgtest_point6() <= celiangtubiao20.getPoint6_TH()
					&& celiangtubiao20.getAvgtest_point6() >= celiangtubiao20.getPoint6_TL()
					&& celiangtubiao20.getAvgoil_point() <= celiangtubiao20.getOil_TH()
					&& celiangtubiao20.getAvgoil_point() >= celiangtubiao20.getOil_TL()) {
				request.getSession().setAttribute("dian20", 2);
				request.getSession().setAttribute("dian15", 2);
			}
		} else if (celiangtubiao20.getAvgtest_point1() != null && celiangtubiao20.getAvgtest_point2() != null
				&& celiangtubiao20.getAvgtest_point3() != null && celiangtubiao20.getAvgtest_point4() != null
				&& celiangtubiao20.getAvgtest_point5() != null && celiangtubiao20.getAvgoil_point() != null) {
			if (celiangtubiao20.getAvgtest_point1() <= celiangtubiao20.getPoint1_TH()
					&& celiangtubiao20.getAvgtest_point1() >= celiangtubiao20.getPoint1_TL()
					&& celiangtubiao20.getAvgtest_point2() <= celiangtubiao20.getPoint2_TH()
					&& celiangtubiao20.getAvgtest_point2() >= celiangtubiao20.getPoint2_TL()
					&& celiangtubiao20.getAvgtest_point3() <= celiangtubiao20.getPoint3_TH()
					&& celiangtubiao20.getAvgtest_point3() >= celiangtubiao20.getPoint3_TL()
					&& celiangtubiao20.getAvgtest_point4() <= celiangtubiao20.getPoint4_TH()
					&& celiangtubiao20.getAvgtest_point4() >= celiangtubiao20.getPoint4_TL()
					&& celiangtubiao20.getAvgtest_point5() <= celiangtubiao20.getPoint5_TH()
					&& celiangtubiao20.getAvgtest_point5() >= celiangtubiao20.getPoint5_TL()
					&& celiangtubiao20.getAvgoil_point() <= celiangtubiao20.getOil_TH()
					&& celiangtubiao20.getAvgoil_point() >= celiangtubiao20.getOil_TL()) {
				request.getSession().setAttribute("dian20", 2);
				request.getSession().setAttribute("dian15", 2);
			}
		} else if (celiangtubiao20.getAvgtest_point1() != null && celiangtubiao20.getAvgtest_point2() != null
				&& celiangtubiao20.getAvgtest_point3() != null && celiangtubiao20.getAvgtest_point4() != null
				&& celiangtubiao20.getAvgoil_point() != null) {
			if (celiangtubiao20.getAvgtest_point1() <= celiangtubiao20.getPoint1_TH()
					&& celiangtubiao20.getAvgtest_point1() >= celiangtubiao20.getPoint1_TL()
					&& celiangtubiao20.getAvgtest_point2() <= celiangtubiao20.getPoint2_TH()
					&& celiangtubiao20.getAvgtest_point2() >= celiangtubiao20.getPoint2_TL()
					&& celiangtubiao20.getAvgtest_point3() <= celiangtubiao20.getPoint3_TH()
					&& celiangtubiao20.getAvgtest_point3() >= celiangtubiao20.getPoint3_TL()
					&& celiangtubiao20.getAvgtest_point4() <= celiangtubiao20.getPoint4_TH()
					&& celiangtubiao20.getAvgtest_point4() >= celiangtubiao20.getPoint4_TL()
					&& celiangtubiao20.getAvgoil_point() <= celiangtubiao20.getOil_TH()
					&& celiangtubiao20.getAvgoil_point() >= celiangtubiao20.getOil_TL()) {
				request.getSession().setAttribute("dian20", 2);
				request.getSession().setAttribute("dian15", 2);
			}
		} else {
			request.getSession().setAttribute("dian20", 3);
		}

		// 21
		if (celiangtubiao21 == null) {
			request.getSession().setAttribute("dian21", 1);
		} else if (celiangtubiao21.getAvgtest_point1() != null && celiangtubiao21.getAvgtest_point2() != null
				&& celiangtubiao21.getAvgtest_point3() != null && celiangtubiao21.getAvgtest_point4() != null
				&& celiangtubiao21.getAvgtest_point5() != null && celiangtubiao21.getAvgtest_point6() != null
				&& celiangtubiao21.getAvgtest_point7() != null && celiangtubiao21.getAvgtest_point8() != null
				&& celiangtubiao21.getAvgoil_point() != null) {
			if (celiangtubiao21.getAvgtest_point1() <= celiangtubiao21.getPoint1_TH()
					&& celiangtubiao21.getAvgtest_point1() >= celiangtubiao21.getPoint1_TL()
					&& celiangtubiao21.getAvgtest_point2() <= celiangtubiao21.getPoint2_TH()
					&& celiangtubiao21.getAvgtest_point2() >= celiangtubiao21.getPoint2_TL()
					&& celiangtubiao21.getAvgtest_point3() <= celiangtubiao21.getPoint3_TH()
					&& celiangtubiao21.getAvgtest_point3() >= celiangtubiao21.getPoint3_TL()
					&& celiangtubiao21.getAvgtest_point4() <= celiangtubiao21.getPoint4_TH()
					&& celiangtubiao21.getAvgtest_point4() >= celiangtubiao21.getPoint4_TL()
					&& celiangtubiao21.getAvgtest_point5() <= celiangtubiao21.getPoint5_TH()
					&& celiangtubiao21.getAvgtest_point5() >= celiangtubiao21.getPoint5_TL()
					&& celiangtubiao21.getAvgtest_point6() <= celiangtubiao21.getPoint6_TH()
					&& celiangtubiao21.getAvgtest_point6() >= celiangtubiao21.getPoint6_TL()
					&& celiangtubiao21.getAvgtest_point7() <= celiangtubiao21.getPoint7_TH()
					&& celiangtubiao21.getAvgtest_point7() >= celiangtubiao21.getPoint7_TL()
					&& celiangtubiao21.getAvgtest_point8() <= celiangtubiao21.getPoint8_TH()
					&& celiangtubiao21.getAvgtest_point8() >= celiangtubiao21.getPoint8_TL()
					&& celiangtubiao21.getAvgoil_point() <= celiangtubiao21.getOil_TH()
					&& celiangtubiao21.getAvgoil_point() >= celiangtubiao21.getOil_TL()) {
				request.getSession().setAttribute("dian21", 2);
				request.getSession().setAttribute("dian16", 2);
			}
		} else if (celiangtubiao21.getAvgtest_point1() != null && celiangtubiao21.getAvgtest_point2() != null
				&& celiangtubiao21.getAvgtest_point3() != null && celiangtubiao21.getAvgtest_point4() != null
				&& celiangtubiao21.getAvgtest_point5() != null && celiangtubiao21.getAvgtest_point6() != null
				&& celiangtubiao21.getAvgtest_point7() != null && celiangtubiao21.getAvgoil_point() != null) {
			if (celiangtubiao21.getAvgtest_point1() <= celiangtubiao21.getPoint1_TH()
					&& celiangtubiao21.getAvgtest_point1() >= celiangtubiao21.getPoint1_TL()
					&& celiangtubiao21.getAvgtest_point2() <= celiangtubiao21.getPoint2_TH()
					&& celiangtubiao21.getAvgtest_point2() >= celiangtubiao21.getPoint2_TL()
					&& celiangtubiao21.getAvgtest_point3() <= celiangtubiao21.getPoint3_TH()
					&& celiangtubiao21.getAvgtest_point3() >= celiangtubiao21.getPoint3_TL()
					&& celiangtubiao21.getAvgtest_point4() <= celiangtubiao21.getPoint4_TH()
					&& celiangtubiao21.getAvgtest_point4() >= celiangtubiao21.getPoint4_TL()
					&& celiangtubiao21.getAvgtest_point5() <= celiangtubiao21.getPoint5_TH()
					&& celiangtubiao21.getAvgtest_point5() >= celiangtubiao21.getPoint5_TL()
					&& celiangtubiao21.getAvgtest_point6() <= celiangtubiao21.getPoint6_TH()
					&& celiangtubiao21.getAvgtest_point6() >= celiangtubiao21.getPoint6_TL()
					&& celiangtubiao21.getAvgtest_point7() <= celiangtubiao21.getPoint7_TH()
					&& celiangtubiao21.getAvgtest_point7() >= celiangtubiao21.getPoint7_TL()
					&& celiangtubiao21.getAvgoil_point() <= celiangtubiao21.getOil_TH()
					&& celiangtubiao21.getAvgoil_point() >= celiangtubiao21.getOil_TL()) {
				request.getSession().setAttribute("dian21", 2);
				request.getSession().setAttribute("dian16", 2);
			}
		} else if (celiangtubiao21.getAvgtest_point1() != null && celiangtubiao21.getAvgtest_point2() != null
				&& celiangtubiao21.getAvgtest_point3() != null && celiangtubiao21.getAvgtest_point4() != null
				&& celiangtubiao21.getAvgtest_point5() != null && celiangtubiao21.getAvgtest_point6() != null
				&& celiangtubiao21.getAvgoil_point() != null) {
			if (celiangtubiao21.getAvgtest_point1() <= celiangtubiao21.getPoint1_TH()
					&& celiangtubiao21.getAvgtest_point1() >= celiangtubiao21.getPoint1_TL()
					&& celiangtubiao21.getAvgtest_point2() <= celiangtubiao21.getPoint2_TH()
					&& celiangtubiao21.getAvgtest_point2() >= celiangtubiao21.getPoint2_TL()
					&& celiangtubiao21.getAvgtest_point3() <= celiangtubiao21.getPoint3_TH()
					&& celiangtubiao21.getAvgtest_point3() >= celiangtubiao21.getPoint3_TL()
					&& celiangtubiao21.getAvgtest_point4() <= celiangtubiao21.getPoint4_TH()
					&& celiangtubiao21.getAvgtest_point4() >= celiangtubiao21.getPoint4_TL()
					&& celiangtubiao21.getAvgtest_point5() <= celiangtubiao21.getPoint5_TH()
					&& celiangtubiao21.getAvgtest_point5() >= celiangtubiao21.getPoint5_TL()
					&& celiangtubiao21.getAvgtest_point6() <= celiangtubiao21.getPoint6_TH()
					&& celiangtubiao21.getAvgtest_point6() >= celiangtubiao21.getPoint6_TL()
					&& celiangtubiao21.getAvgoil_point() <= celiangtubiao21.getOil_TH()
					&& celiangtubiao21.getAvgoil_point() >= celiangtubiao21.getOil_TL()) {
				request.getSession().setAttribute("dian21", 2);
				request.getSession().setAttribute("dian16", 2);
			}
		} else if (celiangtubiao21.getAvgtest_point1() != null && celiangtubiao21.getAvgtest_point2() != null
				&& celiangtubiao21.getAvgtest_point3() != null && celiangtubiao21.getAvgtest_point4() != null
				&& celiangtubiao21.getAvgtest_point5() != null && celiangtubiao21.getAvgoil_point() != null) {
			if (celiangtubiao21.getAvgtest_point1() <= celiangtubiao21.getPoint1_TH()
					&& celiangtubiao21.getAvgtest_point1() >= celiangtubiao21.getPoint1_TL()
					&& celiangtubiao21.getAvgtest_point2() <= celiangtubiao21.getPoint2_TH()
					&& celiangtubiao21.getAvgtest_point2() >= celiangtubiao21.getPoint2_TL()
					&& celiangtubiao21.getAvgtest_point3() <= celiangtubiao21.getPoint3_TH()
					&& celiangtubiao21.getAvgtest_point3() >= celiangtubiao21.getPoint3_TL()
					&& celiangtubiao21.getAvgtest_point4() <= celiangtubiao21.getPoint4_TH()
					&& celiangtubiao21.getAvgtest_point4() >= celiangtubiao21.getPoint4_TL()
					&& celiangtubiao21.getAvgtest_point5() <= celiangtubiao21.getPoint5_TH()
					&& celiangtubiao21.getAvgtest_point5() >= celiangtubiao21.getPoint5_TL()
					&& celiangtubiao21.getAvgoil_point() <= celiangtubiao21.getOil_TH()
					&& celiangtubiao21.getAvgoil_point() >= celiangtubiao21.getOil_TL()) {
				request.getSession().setAttribute("dian21", 2);
				request.getSession().setAttribute("dian16", 2);
			}
		} else if (celiangtubiao21.getAvgtest_point1() != null && celiangtubiao21.getAvgtest_point2() != null
				&& celiangtubiao21.getAvgtest_point3() != null && celiangtubiao21.getAvgtest_point4() != null
				&& celiangtubiao21.getAvgoil_point() != null) {
			if (celiangtubiao21.getAvgtest_point1() <= celiangtubiao21.getPoint1_TH()
					&& celiangtubiao21.getAvgtest_point1() >= celiangtubiao21.getPoint1_TL()
					&& celiangtubiao21.getAvgtest_point2() <= celiangtubiao21.getPoint2_TH()
					&& celiangtubiao21.getAvgtest_point2() >= celiangtubiao21.getPoint2_TL()
					&& celiangtubiao21.getAvgtest_point3() <= celiangtubiao21.getPoint3_TH()
					&& celiangtubiao21.getAvgtest_point3() >= celiangtubiao21.getPoint3_TL()
					&& celiangtubiao21.getAvgtest_point4() <= celiangtubiao21.getPoint4_TH()
					&& celiangtubiao21.getAvgtest_point4() >= celiangtubiao21.getPoint4_TL()
					&& celiangtubiao21.getAvgoil_point() <= celiangtubiao21.getOil_TH()
					&& celiangtubiao21.getAvgoil_point() >= celiangtubiao21.getOil_TL()) {
				request.getSession().setAttribute("dian21", 2);
				request.getSession().setAttribute("dian16", 2);
			}
		} else {
			request.getSession().setAttribute("dian21", 3);
		}

		// 22
		if (celiangtubiao22 == null) {
			request.getSession().setAttribute("dian22", 1);
		} else if (celiangtubiao22.getAvgtest_point1() != null && celiangtubiao22.getAvgtest_point2() != null
				&& celiangtubiao22.getAvgtest_point3() != null && celiangtubiao22.getAvgtest_point4() != null
				&& celiangtubiao22.getAvgtest_point5() != null && celiangtubiao22.getAvgtest_point6() != null
				&& celiangtubiao22.getAvgtest_point7() != null && celiangtubiao22.getAvgtest_point8() != null
				&& celiangtubiao22.getAvgoil_point() != null) {
			if (celiangtubiao22.getAvgtest_point1() <= celiangtubiao22.getPoint1_TH()
					&& celiangtubiao22.getAvgtest_point1() >= celiangtubiao22.getPoint1_TL()
					&& celiangtubiao22.getAvgtest_point2() <= celiangtubiao22.getPoint2_TH()
					&& celiangtubiao22.getAvgtest_point2() >= celiangtubiao22.getPoint2_TL()
					&& celiangtubiao22.getAvgtest_point3() <= celiangtubiao22.getPoint3_TH()
					&& celiangtubiao22.getAvgtest_point3() >= celiangtubiao22.getPoint3_TL()
					&& celiangtubiao22.getAvgtest_point4() <= celiangtubiao22.getPoint4_TH()
					&& celiangtubiao22.getAvgtest_point4() >= celiangtubiao22.getPoint4_TL()
					&& celiangtubiao22.getAvgtest_point5() <= celiangtubiao22.getPoint5_TH()
					&& celiangtubiao22.getAvgtest_point5() >= celiangtubiao22.getPoint5_TL()
					&& celiangtubiao22.getAvgtest_point6() <= celiangtubiao22.getPoint6_TH()
					&& celiangtubiao22.getAvgtest_point6() >= celiangtubiao22.getPoint6_TL()
					&& celiangtubiao22.getAvgtest_point7() <= celiangtubiao22.getPoint7_TH()
					&& celiangtubiao22.getAvgtest_point7() >= celiangtubiao22.getPoint7_TL()
					&& celiangtubiao22.getAvgtest_point8() <= celiangtubiao22.getPoint8_TH()
					&& celiangtubiao22.getAvgtest_point8() >= celiangtubiao22.getPoint8_TL()
					&& celiangtubiao22.getAvgoil_point() <= celiangtubiao22.getOil_TH()
					&& celiangtubiao22.getAvgoil_point() >= celiangtubiao22.getOil_TL()) {
				request.getSession().setAttribute("dian22", 2);
				request.getSession().setAttribute("dian17", 2);
			}
		} else if (celiangtubiao22.getAvgtest_point1() != null && celiangtubiao22.getAvgtest_point2() != null
				&& celiangtubiao22.getAvgtest_point3() != null && celiangtubiao22.getAvgtest_point4() != null
				&& celiangtubiao22.getAvgtest_point5() != null && celiangtubiao22.getAvgtest_point6() != null
				&& celiangtubiao22.getAvgtest_point7() != null && celiangtubiao22.getAvgoil_point() != null) {
			if (celiangtubiao22.getAvgtest_point1() <= celiangtubiao22.getPoint1_TH()
					&& celiangtubiao22.getAvgtest_point1() >= celiangtubiao22.getPoint1_TL()
					&& celiangtubiao22.getAvgtest_point2() <= celiangtubiao22.getPoint2_TH()
					&& celiangtubiao22.getAvgtest_point2() >= celiangtubiao22.getPoint2_TL()
					&& celiangtubiao22.getAvgtest_point3() <= celiangtubiao22.getPoint3_TH()
					&& celiangtubiao22.getAvgtest_point3() >= celiangtubiao22.getPoint3_TL()
					&& celiangtubiao22.getAvgtest_point4() <= celiangtubiao22.getPoint4_TH()
					&& celiangtubiao22.getAvgtest_point4() >= celiangtubiao22.getPoint4_TL()
					&& celiangtubiao22.getAvgtest_point5() <= celiangtubiao22.getPoint5_TH()
					&& celiangtubiao22.getAvgtest_point5() >= celiangtubiao22.getPoint5_TL()
					&& celiangtubiao22.getAvgtest_point6() <= celiangtubiao22.getPoint6_TH()
					&& celiangtubiao22.getAvgtest_point6() >= celiangtubiao22.getPoint6_TL()
					&& celiangtubiao22.getAvgtest_point7() <= celiangtubiao22.getPoint7_TH()
					&& celiangtubiao22.getAvgtest_point7() >= celiangtubiao22.getPoint7_TL()
					&& celiangtubiao22.getAvgoil_point() <= celiangtubiao22.getOil_TH()
					&& celiangtubiao22.getAvgoil_point() >= celiangtubiao22.getOil_TL()) {
				request.getSession().setAttribute("dian22", 2);
				request.getSession().setAttribute("dian17", 2);
			}
		} else if (celiangtubiao22.getAvgtest_point1() != null && celiangtubiao22.getAvgtest_point2() != null
				&& celiangtubiao22.getAvgtest_point3() != null && celiangtubiao22.getAvgtest_point4() != null
				&& celiangtubiao22.getAvgtest_point5() != null && celiangtubiao22.getAvgtest_point6() != null
				&& celiangtubiao22.getAvgoil_point() != null) {
			if (celiangtubiao22.getAvgtest_point1() <= celiangtubiao22.getPoint1_TH()
					&& celiangtubiao22.getAvgtest_point1() >= celiangtubiao22.getPoint1_TL()
					&& celiangtubiao22.getAvgtest_point2() <= celiangtubiao22.getPoint2_TH()
					&& celiangtubiao22.getAvgtest_point2() >= celiangtubiao22.getPoint2_TL()
					&& celiangtubiao22.getAvgtest_point3() <= celiangtubiao22.getPoint3_TH()
					&& celiangtubiao22.getAvgtest_point3() >= celiangtubiao22.getPoint3_TL()
					&& celiangtubiao22.getAvgtest_point4() <= celiangtubiao22.getPoint4_TH()
					&& celiangtubiao22.getAvgtest_point4() >= celiangtubiao22.getPoint4_TL()
					&& celiangtubiao22.getAvgtest_point5() <= celiangtubiao22.getPoint5_TH()
					&& celiangtubiao22.getAvgtest_point5() >= celiangtubiao22.getPoint5_TL()
					&& celiangtubiao22.getAvgtest_point6() <= celiangtubiao22.getPoint6_TH()
					&& celiangtubiao22.getAvgtest_point6() >= celiangtubiao22.getPoint6_TL()
					&& celiangtubiao22.getAvgoil_point() <= celiangtubiao22.getOil_TH()
					&& celiangtubiao22.getAvgoil_point() >= celiangtubiao22.getOil_TL()) {
				request.getSession().setAttribute("dian22", 2);
				request.getSession().setAttribute("dian17", 2);
			}
		} else if (celiangtubiao22.getAvgtest_point1() != null && celiangtubiao22.getAvgtest_point2() != null
				&& celiangtubiao22.getAvgtest_point3() != null && celiangtubiao22.getAvgtest_point4() != null
				&& celiangtubiao22.getAvgtest_point5() != null && celiangtubiao22.getAvgoil_point() != null) {
			if (celiangtubiao22.getAvgtest_point1() <= celiangtubiao22.getPoint1_TH()
					&& celiangtubiao22.getAvgtest_point1() >= celiangtubiao22.getPoint1_TL()
					&& celiangtubiao22.getAvgtest_point2() <= celiangtubiao22.getPoint2_TH()
					&& celiangtubiao22.getAvgtest_point2() >= celiangtubiao22.getPoint2_TL()
					&& celiangtubiao22.getAvgtest_point3() <= celiangtubiao22.getPoint3_TH()
					&& celiangtubiao22.getAvgtest_point3() >= celiangtubiao22.getPoint3_TL()
					&& celiangtubiao22.getAvgtest_point4() <= celiangtubiao22.getPoint4_TH()
					&& celiangtubiao22.getAvgtest_point4() >= celiangtubiao22.getPoint4_TL()
					&& celiangtubiao22.getAvgtest_point5() <= celiangtubiao22.getPoint5_TH()
					&& celiangtubiao22.getAvgtest_point5() >= celiangtubiao22.getPoint5_TL()
					&& celiangtubiao22.getAvgoil_point() <= celiangtubiao22.getOil_TH()
					&& celiangtubiao22.getAvgoil_point() >= celiangtubiao22.getOil_TL()) {
				request.getSession().setAttribute("dian22", 2);
				request.getSession().setAttribute("dian17", 2);
			}
		} else if (celiangtubiao22.getAvgtest_point1() != null && celiangtubiao22.getAvgtest_point2() != null
				&& celiangtubiao22.getAvgtest_point3() != null && celiangtubiao22.getAvgtest_point4() != null
				&& celiangtubiao22.getAvgoil_point() != null) {
			if (celiangtubiao22.getAvgtest_point1() <= celiangtubiao22.getPoint1_TH()
					&& celiangtubiao22.getAvgtest_point1() >= celiangtubiao22.getPoint1_TL()
					&& celiangtubiao22.getAvgtest_point2() <= celiangtubiao22.getPoint2_TH()
					&& celiangtubiao22.getAvgtest_point2() >= celiangtubiao22.getPoint2_TL()
					&& celiangtubiao22.getAvgtest_point3() <= celiangtubiao22.getPoint3_TH()
					&& celiangtubiao22.getAvgtest_point3() >= celiangtubiao22.getPoint3_TL()
					&& celiangtubiao22.getAvgtest_point4() <= celiangtubiao22.getPoint4_TH()
					&& celiangtubiao22.getAvgtest_point4() >= celiangtubiao22.getPoint4_TL()
					&& celiangtubiao22.getAvgoil_point() <= celiangtubiao22.getOil_TH()
					&& celiangtubiao22.getAvgoil_point() >= celiangtubiao22.getOil_TL()) {
				request.getSession().setAttribute("dian22", 2);
				request.getSession().setAttribute("dian17", 2);
			}
		} else {
			request.getSession().setAttribute("dian22", 3);
		}
		System.out.println("******************************");
		System.out.println(request.getSession().getAttribute("dian3"));
		System.out.println(request.getSession().getAttribute("dian6"));
		System.out.println(request.getSession().getAttribute("dian9"));

		return "dian";
	}
}
