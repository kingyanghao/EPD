package com.hanxi.entity;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonFormat;


public class work_order {

	private int orderid;
	private String bench_name;
	private String type;
	private String va_no;
	private String kb_no;
	private String bm_no;
	private String sap_no;
	private String work_center;
	private String customer_project;
	private String part_quantity;
	private String preferred_operator;
	private String operator;
	private String work_hours;
	private String deadline;
	private String issue_date;
	private Date deadline1;
	private Date issue_date1;
	private String remark;
	private String status;
	private String order_placer;
	private String overtime;
	private String one;
	private String one_point1;
	private String one_point2;
	private String one_point3;
	private String one_point4;
	private String one_point5;
	private String one_point6;
	private String two;
	private String two_point1;
	private String two_point2;
	private String two_point3;
	private String two_point4;
	private String three;
	private String three_point1;
	private String three_point2;
	private String three_point3;
	private String four;
	private String four_point1;
	private String four_point2;
	private String four_point3;
	private String four_point4;
	private String four_point5;
	private String four_point6;
	private String four_point7;
	private String five;
	private String five_point1;
	private String five_point2;
	private String five_point3;
	private String five_point4;
	private String five_point5;
	private String five_point6;
	private String five_point7;
	private String five_point8;
	private String five_point9;
	private String five_point10;
	private String injector_round;
	private String injector_num;
	private String injector_time;
	private String six;
	private String six_point1;
	private String six_point2;
	private String six_point3;
	private String six_point4;
	private String seven;
	private String seven_point1;
	private String seven_point2;
	private String seven_point3;
	private String seven_point4;
	private String seven_point5;
	private String seven_point6;
	private String eight;
	private String eight_point1;
	private String eight_point2;
	private String eight_point3;
	private String eight_point4;
	private String nine;
	private String nine_point1;
	private String nine_point2;
	private String ten;
	private String ten_point1;
	private String ten_point2;
	private String eleven;
	private String eleven_point1;
	private String eleven_point2;
	private String eleven_point3;
	private String twelve;
	private String twelve_point1;
	private String twelve_point2;
	private String twelve_point3;
	private String twelve_point4;
	private String thirteen;
	private String thirteen_point1;
	private String thirteen_point2;
	private String thirteen_point3;
	private String thirteen_point4;
	private String thirteen_point5;
	private String thirteen_point6;
	private String fourteen;
	private String injector_test_point_round;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "GMT+8")  
	private Date create_time;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "GMT+8")  
	private Date single_time;
	
	private String remaining_hours;//剩余小时
	private String single_hours;//已经排
	private String close_hours;//已经排
	
	//	分页，
	private int pageSize;//分页条数
	private int pageIndex;//页数
	private String part_no;//新加
	private String part_type;//新加
	private String order_describe;//新加，json
	private String status_e;//状态的英文翻译
	private String login_role_all;//专属于allOrderList，列表使用，判断该订单是否是当前登陆人员所下的单
	
	
	public String getStatus_e() {
		return status_e;
	}
	public void setStatus_e(String status_e) {
		this.status_e = status_e;
	}
	public String getLogin_role_all() {
		return login_role_all;
	}
	public void setLogin_role_all(String login_role_all) {
		this.login_role_all = login_role_all;
	}
	public String getOrder_describe() {
		return order_describe;
	}
	public void setOrder_describe(String order_describe) {
		this.order_describe = order_describe;
	}
	public String getPart_no() {
		return part_no;
	}
	public void setPart_no(String part_no) {
		this.part_no = part_no;
	}
	public String getPart_type() {
		return part_type;
	}
	public void setPart_type(String part_type) {
		this.part_type = part_type;
	}
	public String getEleven_point3() {
		return eleven_point3;
	}
	public void setEleven_point3(String eleven_point3) {
		this.eleven_point3 = eleven_point3;
	}
	public String getInjector_test_point_round() {
		return injector_test_point_round;
	}
	public void setInjector_test_point_round(String injector_test_point_round) {
		this.injector_test_point_round = injector_test_point_round;
	}
	public String getClose_hours() {
		return close_hours;
	}
	public void setClose_hours(String close_hours) {
		this.close_hours = close_hours;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	
	
	
	public String getSap_no() {
		return sap_no;
	}
	public void setSap_no(String sap_no) {
		this.sap_no = sap_no;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public String getBench_name() {
		return bench_name;
	}
	public void setBench_name(String bench_name) {
		this.bench_name = bench_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getVa_no() {
		return va_no;
	}
	public void setVa_no(String va_no) {
		this.va_no = va_no;
	}
	public String getKb_no() {
		return kb_no;
	}
	public void setKb_no(String kb_no) {
		this.kb_no = kb_no;
	}
	public String getBm_no() {
		return bm_no;
	}
	public void setBm_no(String bm_no) {
		this.bm_no = bm_no;
	}
	public String getWork_center() {
		return work_center;
	}
	public void setWork_center(String work_center) {
		this.work_center = work_center;
	}
	public String getCustomer_project() {
		return customer_project;
	}
	public void setCustomer_project(String customer_project) {
		this.customer_project = customer_project;
	}
	public String getPart_quantity() {
		return part_quantity;
	}
	public void setPart_quantity(String part_quantity) {
		this.part_quantity = part_quantity;
	}
	public String getPreferred_operator() {
		return preferred_operator;
	}
	public void setPreferred_operator(String preferred_operator) {
		this.preferred_operator = preferred_operator;
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public String getWork_hours() {
		return work_hours;
	}
	public void setWork_hours(String work_hours) {
		this.work_hours = work_hours;
	}

	
	
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getIssue_date() {
		return issue_date;
	}
	public void setIssue_date(String issue_date) {
		this.issue_date = issue_date;
	}
	public Date getDeadline1() {
		return deadline1;
	}
	public void setDeadline1(Date deadline1) {
		this.deadline1 = deadline1;
	}
	
	public Date getIssue_date1() {
		return issue_date1;
	}
	public void setIssue_date1(Date issue_date1) {
		this.issue_date1 = issue_date1;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOrder_placer() {
		return order_placer;
	}
	public void setOrder_placer(String order_placer) {
		this.order_placer = order_placer;
	}
	public String getOvertime() {
		return overtime;
	}
	public void setOvertime(String overtime) {
		this.overtime = overtime;
	}
	public String getOne() {
		return one;
	}
	public void setOne(String one) {
		this.one = one;
	}
	public String getOne_point1() {
		return one_point1;
	}
	public void setOne_point1(String one_point1) {
		this.one_point1 = one_point1;
	}
	public String getOne_point2() {
		return one_point2;
	}
	public void setOne_point2(String one_point2) {
		this.one_point2 = one_point2;
	}
	public String getOne_point3() {
		return one_point3;
	}
	public void setOne_point3(String one_point3) {
		this.one_point3 = one_point3;
	}
	public String getOne_point4() {
		return one_point4;
	}
	public void setOne_point4(String one_point4) {
		this.one_point4 = one_point4;
	}
	public String getOne_point5() {
		return one_point5;
	}
	public void setOne_point5(String one_point5) {
		this.one_point5 = one_point5;
	}
	public String getOne_point6() {
		return one_point6;
	}
	public void setOne_point6(String one_point6) {
		this.one_point6 = one_point6;
	}
	public String getTwo() {
		return two;
	}
	public void setTwo(String two) {
		this.two = two;
	}
	public String getTwo_point1() {
		return two_point1;
	}
	public void setTwo_point1(String two_point1) {
		this.two_point1 = two_point1;
	}
	public String getTwo_point2() {
		return two_point2;
	}
	public void setTwo_point2(String two_point2) {
		this.two_point2 = two_point2;
	}
	public String getTwo_point3() {
		return two_point3;
	}
	public void setTwo_point3(String two_point3) {
		this.two_point3 = two_point3;
	}
	public String getTwo_point4() {
		return two_point4;
	}
	public void setTwo_point4(String two_point4) {
		this.two_point4 = two_point4;
	}
	public String getThree() {
		return three;
	}
	public void setThree(String three) {
		this.three = three;
	}
	public String getThree_point1() {
		return three_point1;
	}
	public void setThree_point1(String three_point1) {
		this.three_point1 = three_point1;
	}
	public String getThree_point2() {
		return three_point2;
	}
	public void setThree_point2(String three_point2) {
		this.three_point2 = three_point2;
	}
	public String getThree_point3() {
		return three_point3;
	}
	public void setThree_point3(String three_point3) {
		this.three_point3 = three_point3;
	}
	public String getFour() {
		return four;
	}
	public void setFour(String four) {
		this.four = four;
	}
	public String getFour_point1() {
		return four_point1;
	}
	public void setFour_point1(String four_point1) {
		this.four_point1 = four_point1;
	}
	public String getFour_point2() {
		return four_point2;
	}
	public void setFour_point2(String four_point2) {
		this.four_point2 = four_point2;
	}
	public String getFour_point3() {
		return four_point3;
	}
	public void setFour_point3(String four_point3) {
		this.four_point3 = four_point3;
	}
	public String getFour_point4() {
		return four_point4;
	}
	public void setFour_point4(String four_point4) {
		this.four_point4 = four_point4;
	}
	public String getFour_point5() {
		return four_point5;
	}
	public void setFour_point5(String four_point5) {
		this.four_point5 = four_point5;
	}
	public String getFour_point6() {
		return four_point6;
	}
	public void setFour_point6(String four_point6) {
		this.four_point6 = four_point6;
	}
	public String getFour_point7() {
		return four_point7;
	}
	public void setFour_point7(String four_point7) {
		this.four_point7 = four_point7;
	}
	public String getFive() {
		return five;
	}
	public void setFive(String five) {
		this.five = five;
	}
	public String getFive_point1() {
		return five_point1;
	}
	public void setFive_point1(String five_point1) {
		this.five_point1 = five_point1;
	}
	public String getFive_point2() {
		return five_point2;
	}
	public void setFive_point2(String five_point2) {
		this.five_point2 = five_point2;
	}
	public String getFive_point3() {
		return five_point3;
	}
	public void setFive_point3(String five_point3) {
		this.five_point3 = five_point3;
	}
	public String getFive_point4() {
		return five_point4;
	}
	public void setFive_point4(String five_point4) {
		this.five_point4 = five_point4;
	}
	public String getFive_point5() {
		return five_point5;
	}
	public void setFive_point5(String five_point5) {
		this.five_point5 = five_point5;
	}
	public String getFive_point6() {
		return five_point6;
	}
	public void setFive_point6(String five_point6) {
		this.five_point6 = five_point6;
	}
	public String getFive_point7() {
		return five_point7;
	}
	public void setFive_point7(String five_point7) {
		this.five_point7 = five_point7;
	}
	public String getFive_point8() {
		return five_point8;
	}
	public void setFive_point8(String five_point8) {
		this.five_point8 = five_point8;
	}
	public String getFive_point9() {
		return five_point9;
	}
	public void setFive_point9(String five_point9) {
		this.five_point9 = five_point9;
	}
	public String getFive_point10() {
		return five_point10;
	}
	public void setFive_point10(String five_point10) {
		this.five_point10 = five_point10;
	}
	public String getInjector_round() {
		return injector_round;
	}
	public void setInjector_round(String injector_round) {
		this.injector_round = injector_round;
	}
	public String getInjector_num() {
		return injector_num;
	}
	public void setInjector_num(String injector_num) {
		this.injector_num = injector_num;
	}
	public String getInjector_time() {
		return injector_time;
	}
	public void setInjector_time(String injector_time) {
		this.injector_time = injector_time;
	}
	public String getSix() {
		return six;
	}
	public void setSix(String six) {
		this.six = six;
	}
	public String getSix_point1() {
		return six_point1;
	}
	public void setSix_point1(String six_point1) {
		this.six_point1 = six_point1;
	}
	public String getSix_point2() {
		return six_point2;
	}
	public void setSix_point2(String six_point2) {
		this.six_point2 = six_point2;
	}
	public String getSix_point3() {
		return six_point3;
	}
	public void setSix_point3(String six_point3) {
		this.six_point3 = six_point3;
	}
	public String getSix_point4() {
		return six_point4;
	}
	public void setSix_point4(String six_point4) {
		this.six_point4 = six_point4;
	}
	public String getSeven() {
		return seven;
	}
	public void setSeven(String seven) {
		this.seven = seven;
	}
	public String getSeven_point1() {
		return seven_point1;
	}
	public void setSeven_point1(String seven_point1) {
		this.seven_point1 = seven_point1;
	}
	public String getSeven_point2() {
		return seven_point2;
	}
	public void setSeven_point2(String seven_point2) {
		this.seven_point2 = seven_point2;
	}
	public String getSeven_point3() {
		return seven_point3;
	}
	public void setSeven_point3(String seven_point3) {
		this.seven_point3 = seven_point3;
	}
	public String getSeven_point4() {
		return seven_point4;
	}
	public void setSeven_point4(String seven_point4) {
		this.seven_point4 = seven_point4;
	}
	public String getSeven_point5() {
		return seven_point5;
	}
	public void setSeven_point5(String seven_point5) {
		this.seven_point5 = seven_point5;
	}
	public String getSeven_point6() {
		return seven_point6;
	}
	public void setSeven_point6(String seven_point6) {
		this.seven_point6 = seven_point6;
	}
	public String getEight() {
		return eight;
	}
	public void setEight(String eight) {
		this.eight = eight;
	}
	public String getEight_point1() {
		return eight_point1;
	}
	public void setEight_point1(String eight_point1) {
		this.eight_point1 = eight_point1;
	}
	public String getEight_point2() {
		return eight_point2;
	}
	public void setEight_point2(String eight_point2) {
		this.eight_point2 = eight_point2;
	}
	public String getEight_point3() {
		return eight_point3;
	}
	public void setEight_point3(String eight_point3) {
		this.eight_point3 = eight_point3;
	}
	public String getEight_point4() {
		return eight_point4;
	}
	public void setEight_point4(String eight_point4) {
		this.eight_point4 = eight_point4;
	}
	public String getNine() {
		return nine;
	}
	public void setNine(String nine) {
		this.nine = nine;
	}
	public String getNine_point1() {
		return nine_point1;
	}
	public void setNine_point1(String nine_point1) {
		this.nine_point1 = nine_point1;
	}
	public String getNine_point2() {
		return nine_point2;
	}
	public void setNine_point2(String nine_point2) {
		this.nine_point2 = nine_point2;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getTen_point1() {
		return ten_point1;
	}
	public void setTen_point1(String ten_point1) {
		this.ten_point1 = ten_point1;
	}
	public String getTen_point2() {
		return ten_point2;
	}
	public void setTen_point2(String ten_point2) {
		this.ten_point2 = ten_point2;
	}
	public String getEleven() {
		return eleven;
	}
	public void setEleven(String eleven) {
		this.eleven = eleven;
	}
	public String getEleven_point1() {
		return eleven_point1;
	}
	public void setEleven_point1(String eleven_point1) {
		this.eleven_point1 = eleven_point1;
	}
	public String getEleven_point2() {
		return eleven_point2;
	}
	public void setEleven_point2(String eleven_point2) {
		this.eleven_point2 = eleven_point2;
	}
	public String getTwelve() {
		return twelve;
	}
	public void setTwelve(String twelve) {
		this.twelve = twelve;
	}
	public String getTwelve_point1() {
		return twelve_point1;
	}
	public void setTwelve_point1(String twelve_point1) {
		this.twelve_point1 = twelve_point1;
	}
	public String getTwelve_point2() {
		return twelve_point2;
	}
	public void setTwelve_point2(String twelve_point2) {
		this.twelve_point2 = twelve_point2;
	}
	public String getTwelve_point3() {
		return twelve_point3;
	}
	public void setTwelve_point3(String twelve_point3) {
		this.twelve_point3 = twelve_point3;
	}
	public String getTwelve_point4() {
		return twelve_point4;
	}
	public void setTwelve_point4(String twelve_point4) {
		this.twelve_point4 = twelve_point4;
	}
	public String getThirteen() {
		return thirteen;
	}
	public void setThirteen(String thirteen) {
		this.thirteen = thirteen;
	}
	public String getThirteen_point1() {
		return thirteen_point1;
	}
	public void setThirteen_point1(String thirteen_point1) {
		this.thirteen_point1 = thirteen_point1;
	}
	public String getThirteen_point2() {
		return thirteen_point2;
	}
	public void setThirteen_point2(String thirteen_point2) {
		this.thirteen_point2 = thirteen_point2;
	}
	public String getThirteen_point3() {
		return thirteen_point3;
	}
	public void setThirteen_point3(String thirteen_point3) {
		this.thirteen_point3 = thirteen_point3;
	}
	public String getThirteen_point4() {
		return thirteen_point4;
	}
	public void setThirteen_point4(String thirteen_point4) {
		this.thirteen_point4 = thirteen_point4;
	}
	public String getThirteen_point5() {
		return thirteen_point5;
	}
	public void setThirteen_point5(String thirteen_point5) {
		this.thirteen_point5 = thirteen_point5;
	}
	public String getThirteen_point6() {
		return thirteen_point6;
	}
	public void setThirteen_point6(String thirteen_point6) {
		this.thirteen_point6 = thirteen_point6;
	}
	public String getFourteen() {
		return fourteen;
	}
	public void setFourteen(String fourteen) {
		this.fourteen = fourteen;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public Date getSingle_time() {
		return single_time;
	}
	public void setSingle_time(Date single_time) {
		this.single_time = single_time;
	}
	
	
	public String getRemaining_hours() {
		return remaining_hours;
	}
	public void setRemaining_hours(String remaining_hours) {
		this.remaining_hours = remaining_hours;
	}
	public String getSingle_hours() {
		return single_hours;
	}
	public void setSingle_hours(String single_hours) {
		this.single_hours = single_hours;
	}
	@Override
	public String toString() {
		return "work_order [orderid=" + orderid + ", bench_name=" + bench_name + ", type=" + type + ", va_no=" + va_no
				+ ", kb_no=" + kb_no + ", bm_no=" + bm_no + ", sap_no=" + sap_no + ", work_center=" + work_center
				+ ", customer_project=" + customer_project + ", part_quantity=" + part_quantity
				+ ", preferred_operator=" + preferred_operator + ", operator=" + operator + ", work_hours=" + work_hours
				+ ", deadline=" + deadline + ", issue_date=" + issue_date + ", deadline1=" + deadline1
				+ ", issue_date1=" + issue_date1 + ", remark=" + remark + ", status=" + status + ", order_placer="
				+ order_placer + ", overtime=" + overtime + ", one=" + one + ", one_point1=" + one_point1
				+ ", one_point2=" + one_point2 + ", one_point3=" + one_point3 + ", one_point4=" + one_point4
				+ ", one_point5=" + one_point5 + ", one_point6=" + one_point6 + ", two=" + two + ", two_point1="
				+ two_point1 + ", two_point2=" + two_point2 + ", two_point3=" + two_point3 + ", two_point4="
				+ two_point4 + ", three=" + three + ", three_point1=" + three_point1 + ", three_point2=" + three_point2
				+ ", three_point3=" + three_point3 + ", four=" + four + ", four_point1=" + four_point1
				+ ", four_point2=" + four_point2 + ", four_point3=" + four_point3 + ", four_point4=" + four_point4
				+ ", four_point5=" + four_point5 + ", four_point6=" + four_point6 + ", four_point7=" + four_point7
				+ ", five=" + five + ", five_point1=" + five_point1 + ", five_point2=" + five_point2 + ", five_point3="
				+ five_point3 + ", five_point4=" + five_point4 + ", five_point5=" + five_point5 + ", five_point6="
				+ five_point6 + ", five_point7=" + five_point7 + ", five_point8=" + five_point8 + ", five_point9="
				+ five_point9 + ", five_point10=" + five_point10 + ", injector_round=" + injector_round
				+ ", injector_num=" + injector_num + ", injector_time=" + injector_time + ", six=" + six
				+ ", six_point1=" + six_point1 + ", six_point2=" + six_point2 + ", six_point3=" + six_point3
				+ ", six_point4=" + six_point4 + ", seven=" + seven + ", seven_point1=" + seven_point1
				+ ", seven_point2=" + seven_point2 + ", seven_point3=" + seven_point3 + ", seven_point4=" + seven_point4
				+ ", seven_point5=" + seven_point5 + ", seven_point6=" + seven_point6 + ", eight=" + eight
				+ ", eight_point1=" + eight_point1 + ", eight_point2=" + eight_point2 + ", eight_point3=" + eight_point3
				+ ", eight_point4=" + eight_point4 + ", nine=" + nine + ", nine_point1=" + nine_point1
				+ ", nine_point2=" + nine_point2 + ", ten=" + ten + ", ten_point1=" + ten_point1 + ", ten_point2="
				+ ten_point2 + ", eleven=" + eleven + ", eleven_point1=" + eleven_point1 + ", eleven_point2="
				+ eleven_point2 + ", eleven_point3=" + eleven_point3 + ", twelve=" + twelve + ", twelve_point1="
				+ twelve_point1 + ", twelve_point2=" + twelve_point2 + ", twelve_point3=" + twelve_point3
				+ ", twelve_point4=" + twelve_point4 + ", thirteen=" + thirteen + ", thirteen_point1=" + thirteen_point1
				+ ", thirteen_point2=" + thirteen_point2 + ", thirteen_point3=" + thirteen_point3 + ", thirteen_point4="
				+ thirteen_point4 + ", thirteen_point5=" + thirteen_point5 + ", thirteen_point6=" + thirteen_point6
				+ ", fourteen=" + fourteen + ", injector_test_point_round=" + injector_test_point_round
				+ ", create_time=" + create_time + ", single_time=" + single_time + ", remaining_hours="
				+ remaining_hours + ", single_hours=" + single_hours + ", close_hours=" + close_hours + ", pageSize="
				+ pageSize + ", pageIndex=" + pageIndex + ", part_no=" + part_no + ", part_type=" + part_type
				+ ", order_describe=" + order_describe + "]";
	}
	
	
		
	
			
}
