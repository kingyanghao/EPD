package com.hanxi.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.flash;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.scripting.xmltags.ForEachSqlNode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.hanxi.entity.Weixiu;
import com.hanxi.entity.calendarOptions;
import com.hanxi.entity.scheduling_record;
import com.hanxi.service.LiyonglueService;

@Controller
@RequestMapping("/liyong")
public class LiyonglueController {
	@Resource
	private LiyonglueService liyonglueService;

	@RequestMapping("/tol")
	public String tol(HttpServletRequest request) throws ParseException {
		/*
		 * List<Weixiu> weixius1 = liyonglueService.finddown1();
		 * List<scheduling_record> scheduling_records1 =
		 * liyonglueService.findrun1(); List<Weixiu> weixius2 =
		 * liyonglueService.finddown2(); List<scheduling_record>
		 * scheduling_records2 = liyonglueService.findrun2(); List<Weixiu>
		 * weixius3 = liyonglueService.finddown3(); List<scheduling_record>
		 * scheduling_records3 = liyonglueService.findrun3(); List<Weixiu>
		 * weixius4 = liyonglueService.finddown4(); List<scheduling_record>
		 * scheduling_records4 = liyonglueService.findrun4(); List<Weixiu>
		 * weixius5 = liyonglueService.finddown5(); List<scheduling_record>
		 * scheduling_records5 = liyonglueService.findrun5(); List<Weixiu>
		 * weixius6 = liyonglueService.finddown6(); List<scheduling_record>
		 * scheduling_records6 = liyonglueService.findrun6(); List<Weixiu>
		 * weixius7 = liyonglueService.finddown7(); List<scheduling_record>
		 * scheduling_records7 = liyonglueService.findrun7(); List<Weixiu>
		 * weixius8 = liyonglueService.finddown8(); List<scheduling_record>
		 * scheduling_records8 = liyonglueService.findrun8(); List<Weixiu>
		 * weixius9 = liyonglueService.finddown9(); List<scheduling_record>
		 * scheduling_records9 = liyonglueService.findrun9(); double run1 = 0;
		 * double down1 = 0; double stand1 = 0; double run2 = 0; double down2 =
		 * 0; double stand2 = 0; double run3 = 0; double down3 = 0; double
		 * stand3 = 0; double run4 = 0; double down4 = 0; double stand4 = 0;
		 * double run5 = 0; double down5 = 0; double stand5 = 0; double run6 =
		 * 0; double down6 = 0; double stand6 = 0; double run7 = 0; double down7
		 * = 0; double stand7 = 0; double run8 = 0; double down8 = 0; double
		 * stand8 = 0; double run9 = 0; double down9 = 0; double stand9 = 0;
		 * 
		 * for (scheduling_record scheduling_record : scheduling_records1) {
		 * run1 += Double.parseDouble(scheduling_record.getScheduling_hours());
		 * } for (Weixiu weixiu : weixius1) { down1+=weixiu.getShijian(); } for
		 * (scheduling_record scheduling_record : scheduling_records2) { run2 +=
		 * Double.parseDouble(scheduling_record.getScheduling_hours()); } for
		 * (Weixiu weixiu : weixius2) { down2+=weixiu.getShijian(); } for
		 * (scheduling_record scheduling_record : scheduling_records3) { run3 +=
		 * Double.parseDouble(scheduling_record.getScheduling_hours()); } for
		 * (Weixiu weixiu : weixius3) { down3+=weixiu.getShijian(); } for
		 * (scheduling_record scheduling_record : scheduling_records4) { run4 +=
		 * Double.parseDouble(scheduling_record.getScheduling_hours()); } for
		 * (Weixiu weixiu : weixius4) { down4+=weixiu.getShijian(); } for
		 * (scheduling_record scheduling_record : scheduling_records5) { run5 +=
		 * Double.parseDouble(scheduling_record.getScheduling_hours()); } for
		 * (Weixiu weixiu : weixius5) { down5+=weixiu.getShijian(); } for
		 * (scheduling_record scheduling_record : scheduling_records6) { run6 +=
		 * Double.parseDouble(scheduling_record.getScheduling_hours()); } for
		 * (Weixiu weixiu : weixius6) { down6+=weixiu.getShijian(); } for
		 * (scheduling_record scheduling_record : scheduling_records7) { run7 +=
		 * Double.parseDouble(scheduling_record.getScheduling_hours()); } for
		 * (Weixiu weixiu : weixius7) { down7+=weixiu.getShijian(); } for
		 * (scheduling_record scheduling_record : scheduling_records8) { run8 +=
		 * Double.parseDouble(scheduling_record.getScheduling_hours()); } for
		 * (Weixiu weixiu : weixius8) { down8+=weixiu.getShijian(); } for
		 * (scheduling_record scheduling_record : scheduling_records9) { run9 +=
		 * Double.parseDouble(scheduling_record.getScheduling_hours()); } for
		 * (Weixiu weixiu : weixius9) { down9+=weixiu.getShijian(); } String
		 * date1 = "2019-04-01 00-00-00"; SimpleDateFormat simpleDateFormat =
		 * new SimpleDateFormat("yyyy-MM-dd");//24小时制 long time =
		 * simpleDateFormat.parse(date1).getTime(); Date d = new Date();
		 * System.out.println("tiem:"+simpleDateFormat.parse(date1)+";now:"+d);
		 * long n = d.getTime(); System.out.println("time:"+time+"now:"+n);
		 * //stand1 stand1 = n/3600000-time/3600000-run1-down1; stand2 =
		 * n/3600000-time/3600000-run2-down2; stand3 =
		 * n/3600000-time/3600000-run3-down3; stand4 =
		 * n/3600000-time/3600000-run4-down4; stand5 =
		 * n/3600000-time/3600000-run5-down5; stand6 =
		 * n/3600000-time/3600000-run6-down6; stand7 =
		 * n/3600000-time/3600000-run7-down7; stand8 =
		 * n/3600000-time/3600000-run8-down8; stand9 =
		 * n/3600000-time/3600000-run9-down9;
		 * System.out.println("stand1:"+stand1+"down1:"+down1+"run1:"+run1);
		 * String liyong1 =
		 * String.format("%.2f",run1/(stand1+run1+down1)*100)+"%"; String
		 * liyong2 = String.format("%.2f",run2/(stand2+run2+down2)*100)+"%";
		 * String liyong3 =
		 * String.format("%.2f",run3/(stand3+run3+down3)*100)+"%"; String
		 * liyong4 = String.format("%.2f",run4/(stand4+run4+down4)*100)+"%";
		 * String liyong5 =
		 * String.format("%.2f",run5/(stand5+run5+down5)*100)+"%"; String
		 * liyong6 = String.format("%.2f",run6/(stand6+run6+down6)*100)+"%";
		 * String liyong7 =
		 * String.format("%.2f",run7/(stand7+run7+down7)*100)+"%"; String
		 * liyong8 = String.format("%.2f",run8/(stand8+run8+down8)*100)+"%";
		 * String liyong9 =
		 * String.format("%.2f",run9/(stand9+run9+down9)*100)+"%";
		 * request.getSession().setAttribute("li1", liyong1);
		 * request.getSession().setAttribute("li2", liyong2);
		 * request.getSession().setAttribute("li3", liyong3);
		 * request.getSession().setAttribute("li4", liyong4);
		 * request.getSession().setAttribute("li5", liyong5);
		 * request.getSession().setAttribute("li6", liyong6);
		 * request.getSession().setAttribute("li7", liyong7);
		 * request.getSession().setAttribute("li8", liyong8);
		 * request.getSession().setAttribute("li9", liyong9);
		 */
		return "liyong";
	}
	@RequestMapping("/tolnian")
	public String tolnian(HttpServletRequest request) throws ParseException {
		return "liyong2";
	}

	@RequestMapping("/liyong")
	@ResponseBody
	public Map<String, Object> liyong(HttpServletRequest request/*,@RequestBody Map<String,String> tai*/) throws ParseException {
		//System.out.println("tai:"+tai.length);
        System.out.println("围栏名："+request.getParameter("test1"));
		System.out.println("tai:"+request.getParameter("tai"));
		List<String> taijiaList = new ArrayList<String>();
		for(int i=0;i<request.getParameter("tai").split(";").length;i++){
			System.out.println(i+"="+request.getParameter("tai").split(";")[i]);
			taijiaList.add(request.getParameter("tai").split(";")[i]);
		}
		String test1 = request.getParameter("test1");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");// 24小时制
		Date nowDate = new Date();
		String nowString = simpleDateFormat.format(nowDate).split("-")[1];
		System.out.println(nowString + "*655465465465465456456464654646546546");
		boolean benyue = false;
		if (nowString.equals(test1.split("-")[1])) {
			benyue = true;
		} else {
			benyue = false;
		}
		System.out.println(benyue + "*655465465465465456456464654646546546");
		System.out.println("获取到的时间：" + test1);
		String year = test1.split("-")[0];
		String month = test1.split("-")[1];
		System.out.println(year + "---" + month);
		scheduling_record scheduling_record = new scheduling_record();
		Weixiu weixiuu = new Weixiu();
		// 获取当月工作日
		calendarOptions calendarOptions = new calendarOptions();
		int UnWeek;
		String lastDay = "1";
		String lastDayOfMonth = "";
		if (benyue == false) {
			calendarOptions.setYear(year);
			calendarOptions.setMonth(month);
			List<Date> dates = new ArrayList<Date>();
			Calendar cal = Calendar.getInstance();
			cal.set(Calendar.YEAR, Integer.valueOf(year));
			cal.set(Calendar.MONTH, Integer.valueOf(month) - 1);
			lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH) + "";
			cal.set(Calendar.DAY_OF_MONTH, Integer.valueOf(lastDay));
			lastDayOfMonth = simpleDateFormat.format(cal.getTime());
			cal.set(Calendar.DATE, 1);
			while (cal.get(Calendar.YEAR) == Integer.valueOf(year)
					&& cal.get(Calendar.MONTH) < Integer.valueOf(month)) {
				int day = cal.get(Calendar.DAY_OF_WEEK);

				if (!(day == Calendar.SUNDAY || day == Calendar.SATURDAY)) {
					dates.add((Date) cal.getTime().clone());
				}
				cal.add(Calendar.DATE, 1);
			}
			System.out.println(month + "月的工作日为" + dates.size());

			calendarOptions.setDay(lastDay);
			UnWeek = dates.size();
			System.out.println("最后一天为" + lastDay + UnWeek + lastDayOfMonth);
		} else {
			int count = 0;

			Date date = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String NowDate = df.format(date);

			String Days = NowDate.substring(8, 10);

			String item = Days.substring(0, 1);
			if (item.equals("0")) {
				Days = Days.substring(1, 2);
			}

			DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
			String strDate = NowDate.substring(0, 10);
			// String strDate = "2016-10-10"; //test by Jiro.Chen

			String item1 = strDate.substring(0, 8);
			String item2 = strDate.substring(8, 10);

			for (int i = 1; i <= Integer.parseInt(item2); i++) {
				strDate = item1 + String.valueOf(i);

				Date dDate = format1.parse(strDate);
				Calendar cal = Calendar.getInstance();
				cal.setTime(dDate);
				if (cal.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY
						|| cal.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY) {
					// System.out.println("YES");
					count++;
				} else {
					// System.out.println("NO");
					continue;
				}
			}
			UnWeek = Integer.parseInt(item2) - count;
			System.out.println(UnWeek);
			lastDay = simpleDateFormat.format(nowDate).split("-")[2];
			lastDayOfMonth = simpleDateFormat.format(nowDate);
			calendarOptions.setDay(lastDay);
			calendarOptions.setMonth(simpleDateFormat.format(nowDate).split("-")[1]);
			calendarOptions.setYear(simpleDateFormat.format(nowDate).split("-")[0]);
			calendarOptions.setDay(lastDay);
			scheduling_record.setScheduling_date(simpleDateFormat.format(nowDate));
			System.out.println("最后一天为" + lastDay + UnWeek + simpleDateFormat.format(nowDate));

			// 工作时间
		}
		// 本月工作时间
		int tiaoxiu = liyonglueService.findTiaoxiu(calendarOptions);
		int jiaban = liyonglueService.findJiaban(calendarOptions);
		double wordtime = (UnWeek - tiaoxiu + jiaban) * 8;
		System.out.println("本月工作的总时间" + wordtime);
		// 维修时间和工作时间

		scheduling_record.setYear(year);
		scheduling_record.setMonth(month);
		scheduling_record.setScheduling_date(lastDayOfMonth);
		;
		weixiuu.setYear(year);
		weixiuu.setMonth(month);
		weixiuu.setDay(lastDay);
		List<Weixiu> weixius1 = liyonglueService.finddown1(weixiuu);
		List<scheduling_record> scheduling_records1 = liyonglueService.findrun1(scheduling_record);
		List<Weixiu> weixius2 = liyonglueService.finddown2(weixiuu);
		List<scheduling_record> scheduling_records2 = liyonglueService.findrun2((scheduling_record));
		List<Weixiu> weixius3 = liyonglueService.finddown3(weixiuu);
		List<scheduling_record> scheduling_records3 = liyonglueService.findrun3(scheduling_record);
		List<Weixiu> weixius4 = liyonglueService.finddown4(weixiuu);
		List<scheduling_record> scheduling_records4 = liyonglueService.findrun4(scheduling_record);
		List<Weixiu> weixius5 = liyonglueService.finddown5(weixiuu);
		List<scheduling_record> scheduling_records5 = liyonglueService.findrun5(scheduling_record);
		List<Weixiu> weixius6 = liyonglueService.finddown6(weixiuu);
		List<scheduling_record> scheduling_records6 = liyonglueService.findrun6(scheduling_record);
		List<Weixiu> weixius7 = liyonglueService.finddown7(weixiuu);
		List<scheduling_record> scheduling_records7 = liyonglueService.findrun7(scheduling_record);
		List<Weixiu> weixius8 = liyonglueService.finddown8(weixiuu);
		List<scheduling_record> scheduling_records8 = liyonglueService.findrun8(scheduling_record);
		List<Weixiu> weixius9 = liyonglueService.finddown9(weixiuu);
		List<scheduling_record> scheduling_records9 = liyonglueService.findrun9(scheduling_record);
		List<Weixiu> weixius10 = liyonglueService.finddown10(weixiuu);
		List<scheduling_record> scheduling_records10 = liyonglueService.findrun10(scheduling_record);
		
		List<scheduling_record> sscheduling_records1 = liyonglueService.fffindrun1(scheduling_record);
		List<scheduling_record> sscheduling_records2 = liyonglueService.fffindrun2((scheduling_record));
		List<scheduling_record> sscheduling_records3 = liyonglueService.fffindrun3(scheduling_record);
		List<scheduling_record> sscheduling_records4 = liyonglueService.fffindrun4(scheduling_record);
		List<scheduling_record> sscheduling_records5 = liyonglueService.fffindrun5(scheduling_record);
		List<scheduling_record> sscheduling_records6 = liyonglueService.fffindrun6(scheduling_record);
		List<scheduling_record> sscheduling_records7 = liyonglueService.fffindrun7(scheduling_record);
		List<scheduling_record> sscheduling_records8 = liyonglueService.fffindrun8(scheduling_record);
		List<scheduling_record> sscheduling_records9 = liyonglueService.fffindrun9(scheduling_record);
		List<scheduling_record> sscheduling_records10 = liyonglueService.fffindrun10(scheduling_record);
		double run1 = 0;
		double down1 = 0;
		double stand1 = 0;
		double run2 = 0;
		double down2 = 0;
		double stand2 = 0;
		double run3 = 0;
		double down3 = 0;
		double stand3 = 0;
		double run4 = 0;
		double down4 = 0;
		double stand4 = 0;
		double run5 = 0;
		double down5 = 0;
		double stand5 = 0;
		double run6 = 0;
		double down6 = 0;
		double stand6 = 0;
		double run7 = 0;
		double down7 = 0;
		double stand7 = 0;
		double run8 = 0;
		double down8 = 0;
		double stand8 = 0;
		double run9 = 0;
		double down9 = 0;
		double stand9 = 0;
		double run10 = 0;
		double down10 = 0;
		double stand10 = 0;
		double rrun1 =0;
		double rrun2 =0;
		double rrun3 =0;
		double rrun4 =0;
		double rrun5 =0;
		double rrun6 =0;
		double rrun7 =0;
		double rrun8 =0;
		double rrun9 =0;
		double rrun10 =0;
		
		
		List<Weixiu> weixius11 = liyonglueService.findyiyang1(scheduling_record);
		List<Weixiu> weixius12 = liyonglueService.findyiyang2(scheduling_record);
		List<Weixiu> weixius13 = liyonglueService.findyiyang3(scheduling_record);
		List<Weixiu> weixius14 = liyonglueService.findyiyang4(scheduling_record);
		List<Weixiu> weixius15 = liyonglueService.findyiyang5(scheduling_record);
		List<Weixiu> weixius16 = liyonglueService.findyiyang6(scheduling_record);
		List<Weixiu> weixius17 = liyonglueService.findyiyang7(scheduling_record);
		List<Weixiu> weixius18 = liyonglueService.findyiyang8(scheduling_record);
		List<Weixiu> weixius19 = liyonglueService.findyiyang9(scheduling_record);
		List<Weixiu> weixius20 = liyonglueService.findyiyang10(scheduling_record);

		for (scheduling_record scheduling_record1 : scheduling_records1) {
			run1 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius1) {
			down1 += weixiu.getGuzhangshichang();

		}
		for (scheduling_record scheduling_record1 : scheduling_records2) {
			run2 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius2) {
			down2 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records3) {
			run3 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius3) {
			down3 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records4) {
			run4 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius4) {
			down4 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records5) {
			run5 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius5) {
			down5 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records6) {
			run6 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius6) {
			down6 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records7) {
			run7 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius7) {
			down7 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records8) {
			run8 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius8) {
			down8 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records9) {
			run9 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius9) {
			down9 += weixiu.getGuzhangshichang();
		}

		for (scheduling_record scheduling_record1 : scheduling_records10) {
			run10 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius10) {
			down10 += weixiu.getGuzhangshichang();
		}
		// 维修减去加班调休时间
		for (Weixiu weixiu : weixius11) {
			if (weixiu.getWorkorrest() == 1) {
				down1 += weixiu.getGuzhangshichang();
			} else {
				down1 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius12) {
			if (weixiu.getWorkorrest() == 1) {
				down2 += weixiu.getGuzhangshichang();
			} else {
				down2 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius13) {
			if (weixiu.getWorkorrest() == 1) {
				down3 += weixiu.getGuzhangshichang();
			} else {
				down3 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius14) {
			if (weixiu.getWorkorrest() == 1) {
				down4 += weixiu.getGuzhangshichang();
			} else {
				down4 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius15) {
			if (weixiu.getWorkorrest() == 1) {
				down5 += weixiu.getGuzhangshichang();
			} else {
				down5 -= weixiu.getGuzhangshichang();
			}
		}

		for (Weixiu weixiu : weixius16) {
			if (weixiu.getWorkorrest() == 1) {
				down6 += weixiu.getGuzhangshichang();
			} else {
				down6 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius17) {
			if (weixiu.getWorkorrest() == 1) {
				down7 += weixiu.getGuzhangshichang();
			} else {
				down7 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius18) {
			if (weixiu.getWorkorrest() == 1) {
				down8 += weixiu.getGuzhangshichang();
			} else {
				down8 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius19) {
			if (weixiu.getWorkorrest() == 1) {
				down9 += weixiu.getGuzhangshichang();
			} else {
				down9 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius20) {
			if (weixiu.getWorkorrest() == 1) {
				down10 += weixiu.getGuzhangshichang();
			} else {
				down10 -= weixiu.getGuzhangshichang();
			}
		}
		//不算加班的台架运行时长
		for (scheduling_record scheduling_record1 : sscheduling_records1) {
			rrun1 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records2) {
			rrun2 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records3) {
			rrun3 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records4) {
			rrun4 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records5) {
			rrun5 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records6) {
			rrun6 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records7) {
			rrun7 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records8) {
			rrun8 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records9) {
			rrun9 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records10) {
			rrun10 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		// stand1
		stand1 = wordtime - rrun1 - down1;
		stand2 = wordtime - rrun2 - down2;
		stand3 = wordtime - rrun3 - down3;
		stand4 = wordtime - rrun4 - down4;
		stand5 = wordtime - rrun5 - down5;
		stand6 = wordtime - rrun6 - down6;
		stand7 = wordtime - rrun7 - down7;
		stand8 = wordtime - rrun8 - down8;
		stand9 = wordtime - rrun9 - down9;
		stand10 = wordtime - rrun10 - down10;
		System.out.println("stand2:" + stand3 + "down2:" + down3 + "run2:" + run3+"ruun2"+rrun3);
		System.out.println("stand7:" + stand7 + "down7:" + down7 + "run7:" + run7);
		List<Double> runList = new ArrayList<Double>();
		List<Double> standList = new ArrayList<Double>();
		List<Double> downList = new ArrayList<Double>();
		for (int i = 0; i < taijiaList.size(); i++) {
            // 如果字符串参数作为一个子字符串在此对象中出现，则返回第一个这种子字符串的第一个字符的索引；如果它不作为一个子字符串出现，则返回
            // -1。
            if (taijiaList.get(i).indexOf("CI4000 F1") != -1) {
                System.out.println("集合中存在CI4000 F1这个字符串");
                runList.add(LiyonglueController.division(run1,wordtime));
                standList.add(LiyonglueController.division(stand1,wordtime));
                downList.add(LiyonglueController.division(down1,wordtime));
                System.out.println(run1+"/"+wordtime+"="+LiyonglueController.division(run1,wordtime));
                System.out.println(stand1+"/"+wordtime+"="+LiyonglueController.division(stand1,wordtime));
                System.out.println(down1+"/"+wordtime+"="+LiyonglueController.division(down1,wordtime));
            }
            if (taijiaList.get(i).indexOf("CI4000 F2") != -1) {
                System.out.println("集合中存在CI4000 F2这个字符串");
                runList.add(LiyonglueController.division(run2,wordtime));
                standList.add(LiyonglueController.division(stand2,wordtime));
                downList.add(LiyonglueController.division(down2,wordtime));
            }
            if (taijiaList.get(i).indexOf("CI4000 F3") != -1) {
                System.out.println("集合中存在CI4000 F3这个字符串");
                runList.add(LiyonglueController.division(run3,wordtime));
                standList.add(LiyonglueController.division(stand3,wordtime));
                downList.add(LiyonglueController.division(down3,wordtime));
                System.out.println(run3+"/"+wordtime+"="+LiyonglueController.division(run3,wordtime));
                System.out.println(stand3+"/"+wordtime+"="+LiyonglueController.division(stand3,wordtime));
                System.out.println(down3+"/"+wordtime+"="+LiyonglueController.division(down3,wordtime));
            }
            if (taijiaList.get(i).indexOf("CI4000 F4") != -1) {
                System.out.println("集合中存在CI4000 F4这个字符串");
                runList.add(LiyonglueController.division(run4,wordtime));
                standList.add(LiyonglueController.division(stand4,wordtime));
                downList.add(LiyonglueController.division(down4,wordtime));
            }
            if (taijiaList.get(i).indexOf("CI4000-RAK F7") != -1) {
                System.out.println("集合中存在CI4000-RAK F7这个字符串");
                runList.add(LiyonglueController.division(run5,wordtime));
                standList.add(LiyonglueController.division(stand5,wordtime));
                downList.add(LiyonglueController.division(down5,wordtime));
            }
            if (taijiaList.get(i).indexOf("ESS F6") != -1) {
                System.out.println("集合中存在ESS F6这个字符串");
                runList.add(LiyonglueController.division(run6,wordtime));
                standList.add(LiyonglueController.division(stand6,wordtime));
                downList.add(LiyonglueController.division(down6,wordtime));
            }
            if (taijiaList.get(i).indexOf("ESS F8(NEW)") != -1) {
                System.out.println("集合中存在ESS F8(NEW)这个字符串");
                runList.add(LiyonglueController.division(run7,wordtime));
                standList.add(LiyonglueController.division(stand7,wordtime));
                downList.add(LiyonglueController.division(down7,wordtime));
            }
            if (taijiaList.get(i).indexOf("Nozzle flow rate") != -1) {
                System.out.println("集合中存在Nozzle flow rate这个字符串");
                runList.add(LiyonglueController.division(run8,wordtime));
                standList.add(LiyonglueController.division(stand8,wordtime));
                downList.add(LiyonglueController.division(down8,wordtime));
            }
            if (taijiaList.get(i).indexOf("Nozzle Pdoe") != -1) {
                System.out.println("集合中存在Nozzle Pdoe这个字符串");
                runList.add(LiyonglueController.division(run9,wordtime));
                standList.add(LiyonglueController.division(stand9,wordtime));
                downList.add(LiyonglueController.division(down9,wordtime));
            }
            if (taijiaList.get(i).indexOf("HSM") != -1) {
                System.out.println("集合中存在HSM F1这个字符串");
                runList.add(LiyonglueController.division(run10,wordtime));
                standList.add(LiyonglueController.division(stand10,wordtime));
                downList.add(LiyonglueController.division(down10,wordtime));
            }
            
        }
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("stand", standList);
		map.put("down", downList);
		map.put("run", runList);
		map.put("taijia", taijiaList);
		/*map.put("stand2", stand2);
		map.put("down2", down2);
		map.put("run2", run2);
		map.put("stand3", stand3);
		map.put("down3", down3);
		map.put("run3", run3);
		map.put("stand4", stand4);
		map.put("down4", down4);
		map.put("run4", run4);
		map.put("stand5", stand5);
		map.put("down5", down5);
		map.put("run5", run5);
		map.put("stand6", stand6);
		map.put("down6", down6);
		map.put("run6", run6);
		map.put("stand7", stand7);
		map.put("down7", down7);
		map.put("run7", run7);
		map.put("stand8", stand8);
		map.put("down8", down8);
		map.put("run8", run8);
		map.put("stand9", stand9);
		map.put("down9", down9);
		map.put("run9", run9);
		map.put("stand10", stand10);
		map.put("down10", down10);
		map.put("run10", run10);
		map.put("wordtime", wordtime);*/
		return map;
	}

	@RequestMapping("/liyongnian")
	@ResponseBody
	public Map<String, Object> liyongnian(HttpServletRequest request/*, String test2*/) throws ParseException {
		 System.out.println("围栏名："+request.getParameter("test1"));
			System.out.println("tai:"+request.getParameter("tai"));
			List<String> taijiaList = new ArrayList<String>();
			for(int i=0;i<request.getParameter("tai").split(";").length;i++){
				System.out.println(i+"="+request.getParameter("tai").split(";")[i]);
				taijiaList.add(request.getParameter("tai").split(";")[i]);
			}
			String test2 = request.getParameter("test1");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");// 24小时制
		Date nowDate = new Date();
		// nian
		String nowString = simpleDateFormat.format(nowDate).split("-")[0];
		System.out.println(nowString + "*655465465465465456456464654646546546");
		boolean benyue = false;
		if (nowString.equals(test2)) {
			benyue = true;
		} else {
			benyue = false;
		}
		System.out.println(benyue + "*655465465465465456456464654646546546");
		System.out.println("获取到的时间：" + test2);
		String year = test2;
		System.out.println(year + "---");
		scheduling_record scheduling_record = new scheduling_record();
		Weixiu weixiuu = new Weixiu();
		calendarOptions calendarOptions = new calendarOptions();
		// 获取当月工作日
		int UnWeek;
		if (benyue == false) {
			UnWeek = niantian1(Integer.valueOf(test2));
			calendarOptions.setYear(test2);
			calendarOptions.setMonth("12");
			calendarOptions.setDay("31");
			calendarOptions.setCalendar_time(test2+"-"+"12"+"-"+"31");
			weixiuu.setYear(test2);
			weixiuu.setYmd(test2+"-"+"12"+"-"+"31");
			scheduling_record.setScheduling_date(test2+"-"+"12"+"-"+"31");
			scheduling_record.setYear(test2);
		} else {
			UnWeek = niantian(Integer.valueOf(test2));
			Date date = new Date();
			String n = simpleDateFormat.format(date);
			calendarOptions.setYear(n.split("-")[0]);
			calendarOptions.setMonth(n.split("-")[1]);
			calendarOptions.setDay(n.split("-")[2]);
			calendarOptions.setCalendar_time(n);
			weixiuu.setYear(year);
			weixiuu.setYmd(n);
			scheduling_record.setScheduling_date(n);
			scheduling_record.setYear(year);
			// 工作时间
		}
		// 本月工作时间
		int tiaoxiu = liyonglueService.ffindTiaoxiu(calendarOptions);
		int jiaban = liyonglueService.ffindJiaban(calendarOptions);
		System.out.println(UnWeek);
		double wordtime = (UnWeek - tiaoxiu + jiaban) * 8;
		System.out.println("本月工作的总时间" + wordtime);
		// 维修时间和工作时间
		
		
		List<Weixiu> weixius1 = liyonglueService.ffinddown1(weixiuu);
		List<scheduling_record> scheduling_records1 = liyonglueService.ffindrun1(scheduling_record);
		List<Weixiu> weixius2 = liyonglueService.ffinddown2(weixiuu);
		List<scheduling_record> scheduling_records2 = liyonglueService.ffindrun2((scheduling_record));
		List<Weixiu> weixius3 = liyonglueService.ffinddown3(weixiuu);
		List<scheduling_record> scheduling_records3 = liyonglueService.ffindrun3(scheduling_record);
		List<Weixiu> weixius4 = liyonglueService.ffinddown4(weixiuu);
		List<scheduling_record> scheduling_records4 = liyonglueService.ffindrun4(scheduling_record);
		List<Weixiu> weixius5 = liyonglueService.ffinddown5(weixiuu);
		List<scheduling_record> scheduling_records5 = liyonglueService.ffindrun5(scheduling_record);
		List<Weixiu> weixius6 = liyonglueService.ffinddown6(weixiuu);
		List<scheduling_record> scheduling_records6 = liyonglueService.ffindrun6(scheduling_record);
		List<Weixiu> weixius7 = liyonglueService.ffinddown7(weixiuu);
		List<scheduling_record> scheduling_records7 = liyonglueService.ffindrun7(scheduling_record);
		List<Weixiu> weixius8 = liyonglueService.ffinddown8(weixiuu);
		List<scheduling_record> scheduling_records8 = liyonglueService.ffindrun8(scheduling_record);
		List<Weixiu> weixius9 = liyonglueService.ffinddown9(weixiuu);
		List<scheduling_record> scheduling_records9 = liyonglueService.ffindrun9(scheduling_record);
		List<Weixiu> weixius10 = liyonglueService.ffinddown10(weixiuu);
		List<scheduling_record> scheduling_records10 = liyonglueService.ffindrun10(scheduling_record);
		
		//正常工作时间
		List<scheduling_record> sscheduling_records1 = liyonglueService.ffffindrun1(scheduling_record);
		List<scheduling_record> sscheduling_records2 = liyonglueService.ffffindrun2((scheduling_record));
		List<scheduling_record> sscheduling_records3 = liyonglueService.fffindrun3(scheduling_record);
		List<scheduling_record> sscheduling_records4 = liyonglueService.ffffindrun4(scheduling_record);
		List<scheduling_record> sscheduling_records5 = liyonglueService.ffffindrun5(scheduling_record);
		List<scheduling_record> sscheduling_records6 = liyonglueService.ffffindrun6(scheduling_record);
		List<scheduling_record> sscheduling_records7 = liyonglueService.ffffindrun7(scheduling_record);
		List<scheduling_record> sscheduling_records8 = liyonglueService.ffffindrun8(scheduling_record);
		List<scheduling_record> sscheduling_records9 = liyonglueService.ffffindrun9(scheduling_record);
		List<scheduling_record> sscheduling_records10 = liyonglueService.ffffindrun10(scheduling_record);
		double run1 = 0;
		double down1 = 0;
		double stand1 = 0;
		double run2 = 0;
		double down2 = 0;
		double stand2 = 0;
		double run3 = 0;
		double down3 = 0;
		double stand3 = 0;
		double run4 = 0;
		double down4 = 0;
		double stand4 = 0;
		double run5 = 0;
		double down5 = 0;
		double stand5 = 0;
		double run6 = 0;
		double down6 = 0;
		double stand6 = 0;
		double run7 = 0;
		double down7 = 0;
		double stand7 = 0;
		double run8 = 0;
		double down8 = 0;
		double stand8 = 0;
		double run9 = 0;
		double down9 = 0;
		double stand9 = 0;
		double run10 = 0;
		double down10 = 0;
		double stand10 = 0;
		double rrun1 =0;
		double rrun2 =0;
		double rrun3 =0;
		double rrun4 =0;
		double rrun5 =0;
		double rrun6 =0;
		double rrun7 =0;
		double rrun8 =0;
		double rrun9 =0;
		double rrun10 =0;

		List<Weixiu> weixius11 = liyonglueService.ffindyiyang1(scheduling_record);
		List<Weixiu> weixius12 = liyonglueService.ffindyiyang2(scheduling_record);
		List<Weixiu> weixius13 = liyonglueService.ffindyiyang3(scheduling_record);
		List<Weixiu> weixius14 = liyonglueService.ffindyiyang4(scheduling_record);
		List<Weixiu> weixius15 = liyonglueService.ffindyiyang5(scheduling_record);
		List<Weixiu> weixius16 = liyonglueService.ffindyiyang6(scheduling_record);
		List<Weixiu> weixius17 = liyonglueService.ffindyiyang7(scheduling_record);
		List<Weixiu> weixius18 = liyonglueService.ffindyiyang8(scheduling_record);
		List<Weixiu> weixius19 = liyonglueService.ffindyiyang9(scheduling_record);
		List<Weixiu> weixius20 = liyonglueService.ffindyiyang10(scheduling_record);

		for (scheduling_record scheduling_record1 : scheduling_records1) {
			run1 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius1) {
			down1 += weixiu.getGuzhangshichang();

		}
		for (scheduling_record scheduling_record1 : scheduling_records2) {
			run2 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius2) {
			down2 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records3) {
			run3 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius3) {
			down3 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records4) {
			run4 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius4) {
			down4 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records5) {
			run5 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius5) {
			down5 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records6) {
			run6 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius6) {
			down6 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records7) {
			run7 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius7) {
			down7 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records8) {
			run8 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius8) {
			down8 += weixiu.getGuzhangshichang();
		}
		for (scheduling_record scheduling_record1 : scheduling_records9) {
			run9 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius9) {
			down9 += weixiu.getGuzhangshichang();
		}

		for (scheduling_record scheduling_record1 : scheduling_records10) {
			run10 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (Weixiu weixiu : weixius10) {
			down10 += weixiu.getGuzhangshichang();
		}
		System.out.println("1"+down1);
		// 维修减去加班调休时间
		for (Weixiu weixiu : weixius11) {
			if (weixiu.getWorkorrest() == 1) {
				down1 += weixiu.getGuzhangshichang();
			} else {
				down1 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius12) {
			if (weixiu.getWorkorrest() == 1) {
				down2 += weixiu.getGuzhangshichang();
			} else {
				down2 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius13) {
			if (weixiu.getWorkorrest() == 1) {
				down3 += weixiu.getGuzhangshichang();
			} else {
				down3 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius14) {
			if (weixiu.getWorkorrest() == 1) {
				down4 += weixiu.getGuzhangshichang();
			} else {
				down4 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius15) {
			if (weixiu.getWorkorrest() == 1) {
				down5 += weixiu.getGuzhangshichang();
			} else {
				down5 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius16) {
			if (weixiu.getWorkorrest() == 1) {
				down6 += weixiu.getGuzhangshichang();
			} else {
				down6 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius17) {
			if (weixiu.getWorkorrest() == 1) {
				down7 += weixiu.getGuzhangshichang();
			} else {
				down7 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius18) {
			if (weixiu.getWorkorrest() == 1) {
				down8 += weixiu.getGuzhangshichang();
			} else {
				down8 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius19) {
			if (weixiu.getWorkorrest() == 1) {
				down9 += weixiu.getGuzhangshichang();
			} else {
				down9 -= weixiu.getGuzhangshichang();
			}
		}
		for (Weixiu weixiu : weixius20) {
			if (weixiu.getWorkorrest() == 1) {
				down10 += weixiu.getGuzhangshichang();
			} else {
				down10 -= weixiu.getGuzhangshichang();
			}
		}
		System.out.println("1"+down1);
		//不算加班的台架运行时长
		for (scheduling_record scheduling_record1 : sscheduling_records1) {
			rrun1 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records2) {
			rrun2 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records3) {
			rrun3 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records4) {
			rrun4 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records5) {
			rrun5 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records6) {
			rrun6 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records7) {
			rrun7 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records8) {
			rrun8 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records9) {
			rrun9 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		for (scheduling_record scheduling_record1 : sscheduling_records10) {
			rrun10 += Double.parseDouble(scheduling_record1.getScheduling_hours());
		}
		// stand1
		stand1 = wordtime - rrun1 - down1;
		stand2 = wordtime - rrun2 - down2;
		stand3 = wordtime - rrun3 - down3;
		stand4 = wordtime - rrun4 - down4;
		stand5 = wordtime - rrun5 - down5;
		stand6 = wordtime - rrun6 - down6;
		stand7 = wordtime - rrun7 - down7;
		stand8 = wordtime - rrun8 - down8;
		stand9 = wordtime - rrun9 - down9;
		stand10 = wordtime - run10 - down10;
		System.out.println("stand1:" + stand2 + "down1:" + down2 + "run1:" + run2+"rrun2"+rrun2+"worketime:"+wordtime);
		System.out.println("stand7:" + stand7 + "down7:" + down7 + "run7:" + run7);
		List<Double> runList = new ArrayList<Double>();
		List<Double> standList = new ArrayList<Double>();
		List<Double> downList = new ArrayList<Double>();
		for (int i = 0; i < taijiaList.size(); i++) {
            // 如果字符串参数作为一个子字符串在此对象中出现，则返回第一个这种子字符串的第一个字符的索引；如果它不作为一个子字符串出现，则返回
            // -1。
            if (taijiaList.get(i).indexOf("CI4000 F1") != -1) {
                System.out.println("集合中存在CI4000 F1这个字符串");
                runList.add(LiyonglueController.division(run1,wordtime));
                standList.add(LiyonglueController.division(stand1,wordtime));
                downList.add(LiyonglueController.division(down1,wordtime));
                System.out.println(run1+"/"+wordtime+"="+LiyonglueController.division(run1,wordtime));
                System.out.println(stand1+"/"+wordtime+"="+LiyonglueController.division(stand1,wordtime));
                System.out.println(down1+"/"+wordtime+"="+LiyonglueController.division(down1,wordtime));
            }
            if (taijiaList.get(i).indexOf("CI4000 F2") != -1) {
                System.out.println("集合中存在CI4000 F2这个字符串");
                runList.add(LiyonglueController.division(run2,wordtime));
                standList.add(LiyonglueController.division(stand2,wordtime));
                downList.add(LiyonglueController.division(down2,wordtime));
            }
            if (taijiaList.get(i).indexOf("CI4000 F3") != -1) {
                System.out.println("集合中存在CI4000 F3这个字符串");
                runList.add(LiyonglueController.division(run3,wordtime));
                standList.add(LiyonglueController.division(stand3,wordtime));
                downList.add(LiyonglueController.division(down3,wordtime));
                System.out.println(run3+"/"+wordtime+"="+LiyonglueController.division(run3,wordtime));
                System.out.println(stand3+"/"+wordtime+"="+LiyonglueController.division(stand3,wordtime));
                System.out.println(down3+"/"+wordtime+"="+LiyonglueController.division(down3,wordtime));
            }
            if (taijiaList.get(i).indexOf("CI4000 F4") != -1) {
                System.out.println("集合中存在CI4000 F4这个字符串");
                runList.add(LiyonglueController.division(run4,wordtime));
                standList.add(LiyonglueController.division(stand4,wordtime));
                downList.add(LiyonglueController.division(down4,wordtime));
            }
            if (taijiaList.get(i).indexOf("CI4000-RAK F7") != -1) {
                System.out.println("集合中存在CI4000-RAK F7这个字符串");
                runList.add(LiyonglueController.division(run5,wordtime));
                standList.add(LiyonglueController.division(stand5,wordtime));
                downList.add(LiyonglueController.division(down5,wordtime));
            }
            if (taijiaList.get(i).indexOf("ESS F6") != -1) {
                System.out.println("集合中存在ESS F6这个字符串");
                runList.add(LiyonglueController.division(run6,wordtime));
                standList.add(LiyonglueController.division(stand6,wordtime));
                downList.add(LiyonglueController.division(down6,wordtime));
            }
            if (taijiaList.get(i).indexOf("ESS F8(NEW)") != -1) {
                System.out.println("集合中存在ESS F8(NEW)这个字符串");
                runList.add(LiyonglueController.division(run7,wordtime));
                standList.add(LiyonglueController.division(stand7,wordtime));
                downList.add(LiyonglueController.division(down7,wordtime));
            }
            if (taijiaList.get(i).indexOf("Nozzle flow rate") != -1) {
                System.out.println("集合中存在Nozzle flow rate这个字符串");
                runList.add(LiyonglueController.division(run8,wordtime));
                standList.add(LiyonglueController.division(stand8,wordtime));
                downList.add(LiyonglueController.division(down8,wordtime));
            }
            if (taijiaList.get(i).indexOf("Nozzle Pdoe") != -1) {
                System.out.println("集合中存在Nozzle Pdoe这个字符串");
                runList.add(LiyonglueController.division(run9,wordtime));
                standList.add(LiyonglueController.division(stand9,wordtime));
                downList.add(LiyonglueController.division(down9,wordtime));
            }
            if (taijiaList.get(i).indexOf("HSM") != -1) {
                System.out.println("集合中存在HSM这个字符串");
                runList.add(LiyonglueController.division(run10,wordtime));
                standList.add(LiyonglueController.division(stand10,wordtime));
                downList.add(LiyonglueController.division(down10,wordtime));
            }
            
        }
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("stand", standList);
		map.put("down", downList);
		map.put("run", runList);
		map.put("taijia", taijiaList);
		
		/*
		Map<String, Double> map = new HashMap<String, Double>();
		map.put("stand1", stand1);
		map.put("down1", down1);
		map.put("run1", run1);
		map.put("stand2", stand2);
		map.put("down2", down2);
		map.put("run2", run2);
		map.put("stand3", stand3);
		map.put("down3", down3);
		map.put("run3", run3);
		map.put("stand4", stand4);
		map.put("down4", down4);
		map.put("run4", run4);
		map.put("stand5", stand5);
		map.put("down5", down5);
		map.put("run5", run5);
		map.put("stand6", stand6);
		map.put("down6", down6);
		map.put("run6", run6);
		map.put("stand7", stand7);
		map.put("down7", down7);
		map.put("run7", run7);
		map.put("stand8", stand8);
		map.put("down8", down8);
		map.put("run8", run8);
		map.put("stand9", stand9);
		map.put("down9", down9);
		map.put("run9", run9);
		map.put("stand10", stand10);
		map.put("down10", down10);
		map.put("run10", run10);
		map.put("wordtime", wordtime);
		*/
		return map;
	}

	public int niantian(int year) {
		Calendar cal = Calendar.getInstance();
		int day = cal.get(Calendar.DAY_OF_YEAR);
		System.out.println(day);
		List<String> dateList = new ArrayList<String>();
		SimpleDateFormat simdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar = new GregorianCalendar(year, 0, 1);
		int i = 1;
		while (calendar.get(Calendar.YEAR) < year + 1) {
			calendar.set(Calendar.WEEK_OF_YEAR, i++);
			calendar.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
			if (calendar.get(Calendar.YEAR) == year) {
				if (calendar.getTime().getTime() < new Date().getTime()) {
					System.out.println("周日：" + simdf.format(calendar.getTime()));
					dateList.add(simdf.format(calendar.getTime()));
				}

			}
			calendar.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
			if (calendar.get(Calendar.YEAR) == year) {
				if (calendar.getTime().getTime() < new Date().getTime()) {
					System.out.println("周六：" + simdf.format(calendar.getTime()));
					dateList.add(simdf.format(calendar.getTime()));
				}
			}
		}
		System.out.println(dateList.size());
		return day-dateList.size();
	}
	public int niantian1(int year) {
			int day=0;
		if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
			System.out.println(year + "年是闰年！");
			 day = 366;
			} else {
			System.out.println(year + "年是平年！");
			 day = 365;
			}
		System.out.println(day);
		List<String> dateList = new ArrayList<String>();
		SimpleDateFormat simdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar = new GregorianCalendar(year, 0, 1);
		int i = 1;
		while (calendar.get(Calendar.YEAR) < year + 1) {
			calendar.set(Calendar.WEEK_OF_YEAR, i++);
			calendar.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
			if (calendar.get(Calendar.YEAR) == year) {
					System.out.println("周日：" + simdf.format(calendar.getTime()));

				dateList.add(simdf.format(calendar.getTime()));
			}
			calendar.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
			if (calendar.get(Calendar.YEAR) == year) {
					System.out.println("周六：" + simdf.format(calendar.getTime()));
				}
				dateList.add(simdf.format(calendar.getTime()));
		}
		System.out.println(dateList.size());
		return day-dateList.size();
	}
	public static double division(double v1, double v2) {
        BigDecimal b1 = new BigDecimal(Double.toString(v1));
        BigDecimal b2 = new BigDecimal(Double.toString(v2));
        BigDecimal b3 = new BigDecimal(Double.toString(100));
        return ((b1.divide(b2, 3, BigDecimal.ROUND_HALF_UP)).multiply(b3)).doubleValue();
    }
}
