package com.hanxi.controller;


import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.hanxi.entity.Page;
import com.hanxi.entity.Weixiu;
import com.hanxi.entity.sys_user;
import com.hanxi.service.CalendarOptionsService;
import com.hanxi.service.WeixiuService;


@Controller
@RequestMapping("/weixiu")
public class WeixiuController {
	@Resource
	private WeixiuService weixiuService;
	@Autowired
	private CalendarOptionsService calendarOptionsService;

	@Autowired
	private PaidLeaveController paidLeaveController;
	// 时间的中间节点
	private static final String HOUR = "12:30:00";
	private static final long MILLISECORD = 3600000;
	private static final long HALFHOUR = 1800000;

	@RequestMapping("/add")
	public String add(HttpServletRequest request, MultipartFile file1, MultipartFile file2, MultipartFile file3,
			Weixiu weixiu, String tt)
			throws IllegalStateException, IOException, ParseException, AddressException, MessagingException {
		String name1 = UUID.randomUUID().toString().replaceAll("-", "");
		String name2 = UUID.randomUUID().toString().replaceAll("-", "");
		String name3 = UUID.randomUUID().toString().replaceAll("-", "");
		String ext1 = FilenameUtils.getExtension(file1.getOriginalFilename());
		String ext2 = FilenameUtils.getExtension(file2.getOriginalFilename());
		String ext3 = FilenameUtils.getExtension(file3.getOriginalFilename());
		// 设置图片上传路径
		String url = request.getSession().getServletContext().getRealPath("/upload");
		if (tt == null || "".equals(tt)) {

		} else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date utilDate = sdf.parse(tt);
			weixiu.setGuzhangshijian(utilDate);
		}
		// 1
		if (ext1.isEmpty()) {
			weixiu.setImg1("img");
		} else {
			// 以绝对路径保存重命名后的图片
			file1.transferTo(new File(url + "/" + name1 + "." + ext1));
			// 把图片路径存到数据库
			weixiu.setImg1("/EPD/" + "upload/" + name1 + "." + ext1);
		}

		// 2
		if (ext2.isEmpty()) {
			weixiu.setImg2("img");
		} else {
			// 以绝对路径保存重命名后的图片
			file2.transferTo(new File(url + "/" + name2 + "." + ext2));
			// 把图片路径存到数据库
			weixiu.setImg2("/EPD/" + "upload/" + name2 + "." + ext2);
		}

		// 3
		if (ext3.isEmpty()) {
			weixiu.setImg3("img");
		} else {
			// 以绝对路径保存重命名后的图片
			file3.transferTo(new File(url + "/" + name3 + "." + ext3));
			// 把图片路径存到数据库
			weixiu.setImg3("/EPD/" + "upload/" + name3 + "." + ext3);
		}
		// 给状态码设置默认值
		// storeIn.setStatus(0);
		// 维修单号
		Calendar cale = null;
		int weixiudanhao;
		cale = Calendar.getInstance();
		int year = cale.get(Calendar.YEAR);
		Weixiu weixiud = weixiuService.weixiudanhao();
		if (weixiud == null) {
			weixiudanhao = year * 10000 + 1;
		} else {
			int year1 = weixiud.getWeixiudanhao() / 10000;
			if (year != year1) {
				weixiudanhao = year * 10000 + 1;
			} else {
				weixiudanhao = weixiud.getWeixiudanhao() + 1;
			}
		}
		weixiu.setWeixiudanhao(weixiudanhao);
		weixiuService.add(weixiu);
		List<String> emails = weixiuService.weixiuEmail();
		sys_user a = (sys_user) request.getSession().getAttribute("userMsg");
		if (emails.size() > 0 && a.getEmail() != null) {
			// System.out.println(a.getEmail()+"sddsadsad");
			SendEmail.sendMail("EPD_Lab_Service<" + a.getEmail() + ">", emails, "Repair order is created",
					weixiu.getShebeimingcheng() + " create a new repair order, order number:"
							+ weixiu.getWeixiudanhao());
		}
		return "redirect:/weixiuliebiao.do";
	}

	@RequestMapping("/findWeixiu")
	@ResponseBody
	public Map<String, Object> findWeixiu(HttpServletRequest request, Page page) {
		// System.out.println("也买那是的="+page.getPage()+"keyword="+page.getKeyWord());
		List<Weixiu> weixius = weixiuService.findWeixiu(page);
		for (Weixiu weixiu : weixius) {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateString1 = formatter.format(weixiu.getGuzhangshijian());
			if (weixiu.getGuandanshijian() == null || "".equals(weixiu.getGuandanshijian())) {
				weixiu.setGuandanshijian1("维修中...");
			} else {
				String dateString2 = formatter.format(weixiu.getGuandanshijian());
				weixiu.setGuandanshijian1(dateString2);
			}
			weixiu.setGuzhangshijian1(dateString1);
			// System.out.println(dateString);
		}
		Integer count = weixiuService.findCount(page);
		// request.getSession().setAttribute("weixius", weixius);
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("code", 0);
		maps.put("msg", "");
		maps.put("count", count);
		maps.put("data", weixius);
		return maps;

	}

	@RequestMapping("/uploadWeixiu")
	public String uploadWeixiu(Weixiu weixiu, String t2) throws ParseException {
		Weixiu w = weixiuService.findWeixiuOne(weixiu.getId());
		System.out.println("维修结束时间" + t2);
		double time = 0.0;
		if (t2 == null || "".equals(t2)) {

		} else {

			Weixiu weixiu2 = weixiuService.findWeixiuOne(weixiu.getId());
			Date guzhangshijian = weixiu2.getGuzhangshijian();
			// System.out.println(guzhangshijian);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm:ss");
			SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
			Date utilDate = sdf.parse(t2);
			System.out.println(utilDate);
			double gu = guzhangshijian.getTime();
			double guan = utilDate.getTime();
			// System.out.println("gu:"+gu+"guan:"+guan);
			double cha = (guan - gu) / 86400000;
			cha = cha * 8;
			weixiu.setShijian(cha);
			// System.out.println(cha);
			weixiu.setGuandanshijian(utilDate);
			weixiu.setShebeimingcheng(w.getShebeimingcheng());
			System.out.println("**********************" + weixiu.getShebeimingcheng());

			// 每天维修单
			Weixiu weixiuoneday = new Weixiu();

			Date startHour = sdf1.parse(sdf.format(guzhangshijian).split(" ")[1]);
			Date endHour = sdf1.parse(sdf.format(utilDate).split(" ")[1]);
			Date startDay = sdf2.parse(sdf.format(guzhangshijian).split(" ")[0]);
			Date endDay = sdf2.parse(sdf.format(utilDate).split(" ")[0]);
			System.out.println(sdf.format(guzhangshijian).split(" ")[1] + "======startHour====="
					+ sdf.format(utilDate).split(" ")[1] + sdf.format(guzhangshijian).split(" ")[0]
					+ "======startDay=====" + sdf.format(utilDate).split(" ")[0]);
			List<String> riqiList = PaidLeaveController.getBetweenDates(sdf.format(guzhangshijian).split(" ")[0],
					sdf.format(utilDate).split(" ")[0]);
			List<Weixiu> weixius = new ArrayList<Weixiu>();
			Date hour = sdf1.parse(HOUR);
			weixiuoneday.setShebeimingcheng(w.getShebeimingcheng());
			if (riqiList.size() == 1) {
				Long ms = utilDate.getTime() - guzhangshijian.getTime();
				if (startHour.after(hour) || endHour.before(hour) || startHour.getTime() == hour.getTime()
						|| endHour.getTime() == hour.getTime()) {// 在吃饭之后，则进行直接相减//结束时间在吃饭之前，则进行直接相减
					time = (double) ms / MILLISECORD;// 获取小时数
				} else {// 包含吃饭时间在其中，要减去半小时的吃饭时间
					time = (double) (ms - HALFHOUR) / MILLISECORD;// 获取小时数扣除吃饭的半小时
				}
				// ff
				
				weixiuoneday.setGuzhangshichang(time);
				weixiuoneday.setWeixiudanhao(weixiu2.getWeixiudanhao());
				weixiuoneday.setYear((sdf.format(guzhangshijian).split(" ")[0]).split("-")[0]);
				weixiuoneday.setMonth((sdf.format(guzhangshijian).split(" ")[0]).split("-")[1]);
				weixiuoneday.setDay((sdf.format(guzhangshijian).split(" ")[0]).split("-")[2]);
				weixiuoneday.setYmd(sdf2.format(guzhangshijian));
				boolean isWeekend = PaidLeaveController.isWeekend(sdf.format(guzhangshijian).split(" ")[0]);
				if (isWeekend) {
					weixiuoneday.setWorkorrest(1);
				} else {
					weixiuoneday.setWorkorrest(2);
				}
				if (time > 0) {

					weixiuService.addoneday(weixiuoneday);
				}
			} else {
				String TimeStart = "09:00:00";
				String TimeEnd = " 17:30:00";
				for (int i = 0; i < riqiList.size(); i++) {
					String oneDayStart;// 开始时间的换算
					String oneDayEnd;// 结束时间的换算
					if (i == 0) {
						Date xiaban = sdf1.parse(TimeEnd);
						time = xiaban.getTime() - startHour.getTime();
						if (startHour.after(hour) || startHour.getTime() == hour.getTime()) {// 在吃饭之后，则进行直接相减//结束时间在吃饭之前，则进行直接相减
							time = time / 3600000;
						} else {
							time = (time - 1800000) / 3600000;
						}
						weixiuoneday.setGuzhangshichang(time);
						weixiuoneday.setWeixiudanhao(weixiu2.getWeixiudanhao());
						weixiuoneday.setYear(riqiList.get(i).split("-")[0]);
						weixiuoneday.setMonth(riqiList.get(i).split("-")[1]);
						weixiuoneday.setDay(riqiList.get(i).split("-")[2]);
						weixiuoneday.setYmd(riqiList.get(i).split("-")[0]+"-"+riqiList.get(i).split("-")[1]+"-"+riqiList.get(i).split("-")[2]);
						boolean isWeekend = PaidLeaveController.isWeekend(riqiList.get(i));
						if (isWeekend) {
							weixiuoneday.setWorkorrest(1);
						} else {
							weixiuoneday.setWorkorrest(2);
						}
						if (time > 0) {

							weixiuService.addoneday(weixiuoneday);
						}
					} else if (i == riqiList.size() - 1) {
						Date shangban = sdf1.parse(TimeStart);
						time = endHour.getTime() - shangban.getTime();
						if (endHour.before(hour)) {// 在吃饭之后，则进行直接相减//结束时间在吃饭之前，则进行直接相减
							time = time / 3600000;
						} else {
							time = (time - 1800000) / 3600000;
						}
						weixiuoneday.setGuzhangshichang(time);
						weixiuoneday.setWeixiudanhao(weixiu2.getWeixiudanhao());
						weixiuoneday.setYear(riqiList.get(i).split("-")[0]);
						weixiuoneday.setMonth(riqiList.get(i).split("-")[1]);
						weixiuoneday.setDay(riqiList.get(i).split("-")[2]);
						weixiuoneday.setYmd(riqiList.get(i).split("-")[0]+"-"+riqiList.get(i).split("-")[1]+"-"+riqiList.get(i).split("-")[2]);
						boolean isWeekend = PaidLeaveController.isWeekend(riqiList.get(i));
						if (isWeekend) {
							weixiuoneday.setWorkorrest(1);
						} else {
							weixiuoneday.setWorkorrest(2);
						}
						if (time > 0) {

							weixiuService.addoneday(weixiuoneday);
						}
					} else {
						weixiuoneday.setGuzhangshichang(8);
						weixiuoneday.setWeixiudanhao(weixiu2.getWeixiudanhao());
						weixiuoneday.setYear(riqiList.get(i).split("-")[0]);
						weixiuoneday.setMonth(riqiList.get(i).split("-")[1]);
						weixiuoneday.setDay(riqiList.get(i).split("-")[2]);
						weixiuoneday.setYmd(riqiList.get(i).split("-")[0]+"-"+riqiList.get(i).split("-")[1]+"-"+riqiList.get(i).split("-")[2]);
						boolean isWeekend = PaidLeaveController.isWeekend(riqiList.get(i));
						if (isWeekend) {
							weixiuoneday.setWorkorrest(1);
						} else {
							weixiuoneday.setWorkorrest(2);
						}
						if (time > 0) {

							weixiuService.addoneday(weixiuoneday);
						}
					}
				}

			}
		}
		if (time > 0) {

			weixiuService.updateWeixiu(weixiu);
		}
		// System.out.println(t2);
		// System.out.println(weixiu.getId());
		return "redirect:/weixiuliebiao.do ";

	}

	@RequestMapping("/deletes")
	@ResponseBody
	public void deletes(Integer[] ids) {
		List<Integer> resultList = new ArrayList<Integer>(Arrays.asList(ids));
		// System.out.println(resultList);
		weixiuService.deletes(resultList);
	}

	@RequestMapping("/xiugai")
	@ResponseBody
	public String xiugai(Integer id, HttpServletRequest request) {
		System.out.println(id);
		Weixiu weixiu = weixiuService.findWeixiuOne(id);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString1 = formatter.format(weixiu.getGuzhangshijian());
		weixiu.setGuzhangshijian1(dateString1);
		if (weixiu.getGuandanshijian() == null || "".equals(weixiu.getGuandanshijian())) {
			weixiu.setGuandanshijian1("维修中...");
		} else {
			String dateString2 = formatter.format(weixiu.getGuandanshijian());
			weixiu.setGuandanshijian1(dateString2);
		}
		request.getSession().setAttribute("weixiu", weixiu);
		return "weixiuliebiao";
	}

	@RequestMapping("/xiu")
	public String xiu() {
		return "weixiuxiugai";
	}

	@RequestMapping("/weixiuxiangqing")
	public String weixiuxiangqing() {
		return "weixiuxiangqing";
	}

	@RequestMapping("/tjxg")
	public String tjxg(Weixiu weixiu, MultipartFile file1, MultipartFile file2, MultipartFile file3,
			HttpServletRequest request) throws ParseException, IllegalStateException, IOException {
		if ("维修中...".equals(weixiu.getGuandanshijian1())) {

		} else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date utilDate = sdf.parse(weixiu.getGuandanshijian1());
			weixiu.setGuandanshijian(utilDate);
		}
		String name1 = UUID.randomUUID().toString().replaceAll("-", "");
		String name2 = UUID.randomUUID().toString().replaceAll("-", "");
		String name3 = UUID.randomUUID().toString().replaceAll("-", "");
		String ext1 = FilenameUtils.getExtension(file1.getOriginalFilename());
		String ext2 = FilenameUtils.getExtension(file2.getOriginalFilename());
		String ext3 = FilenameUtils.getExtension(file3.getOriginalFilename());
		// 设置图片上传路径
		String url = request.getSession().getServletContext().getRealPath("/upload");
		// 1
		if (ext1.isEmpty()) {
			weixiu.setImg1("img");
		} else {
			// 以绝对路径保存重命名后的图片
			file1.transferTo(new File(url + "/" + name1 + "." + ext1));
			// 把图片路径存到数据库
			weixiu.setImg1("/EPD/" + "upload/" + name1 + "." + ext1);
		}

		// 2
		if (ext2.isEmpty()) {
			weixiu.setImg2("img");
		} else {
			// 以绝对路径保存重命名后的图片
			file2.transferTo(new File(url + "/" + name2 + "." + ext2));
			// 把图片路径存到数据库
			weixiu.setImg2("/EPD/" + "upload/" + name2 + "." + ext2);
		}

		// 3
		if (ext3.isEmpty()) {
			weixiu.setImg3("img");
		} else {
			// 以绝对路径保存重命名后的图片
			file3.transferTo(new File(url + "/" + name3 + "." + ext3));
			// 把图片路径存到数据库
			weixiu.setImg3("/EPD/" + "upload/" + name3 + "." + ext3);
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date utilDate1 = sdf.parse(weixiu.getGuzhangshijian1());
		weixiu.setGuzhangshijian(utilDate1);
		weixiuService.tjxg(weixiu);
		return "redirect:/weixiuliebiao.do";
	}
}