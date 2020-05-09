package com.hanxi.entity;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class sys_user {

	private int user_id;
	private String username;//名字
	private String account;//账号
	private String password;
	private String mobile_phone;
	private String phone;
	private String email;
	private String role;
	private Date create_time;
	private String department;
	private String work_number;
	
	private String uuid;
	
	private String on_the_job;
	
	//	分页，
	private int pageSize;//分页条数
	private int pageIndex;//页数
	
	private List<work_order> work_orderList;
	
	private String sendmail;//是否发送邮件
	
	
	public String getSendmail() {
		return sendmail;
	}
	public void setSendmail(String sendmail) {
		this.sendmail = sendmail;
	}
	public List<work_order> getWork_orderList() {
		return work_orderList;
	}
	public void setWork_orderList(List<work_order> work_orderList) {
		this.work_orderList = work_orderList;
	}
	//技能矩阵
	private String injector_num1;
	private String injector_num2;
	private String injector_num3;
	private String injector_num4;
	private String injector_num5;
	private String injector_num6;
	private String injector_num7;
	private String injector_num8;
	private String injector_num9;
	private String injector_num10;
	private String injector_num11;
	private String injector_num12;
	private String injector_num13;
	private String injector_num14;
	private String injector_num15;
	private String injector_num16;
	private String injector_num17;
	private String injector_num18;
	//Rail
	private String rail_1;
	private String rail_2;
	private String rail_3;
	//Nozzle
	private String nozzle_1;
	private String nozzle_2;
	private String nozzle_3;
	private String nozzle_4;
	private String nozzle_5;
	private String nozzle_6;
	//Others
	private String others_1;
	private String others_2;
	private String others_3;
	private String others_4;
	private String others_5;
	private String others_6;
	private String others_7;
	private String others_8;
	private String others_9;
	//new_password
	private String new_password;
	private String scheduling_date;
	
	private List<scheduling_record> scheduling_list;
	private Map<String,Object> kbList;
	private Date startMonth;//月的开始时间
	
	private Date endMonth;//月的开始时间
	private String conut;//加班统计市场
	
	private List<paid_leave> paid_leaveList;
	
	
	
	
	public List<paid_leave> getPaid_leaveList() {
		return paid_leaveList;
	}
	public void setPaid_leaveList(List<paid_leave> paid_leaveList) {
		this.paid_leaveList = paid_leaveList;
	}
	public String getConut() {
		return conut;
	}
	public void setConut(String conut) {
		this.conut = conut;
	}
	public Date getEndMonth() {
		return endMonth;
	}
	public void setEndMonth(Date endMonth) {
		this.endMonth = endMonth;
	}
	public Date getStartMonth() {
		return startMonth;
	}
	public void setStartMonth(Date startMonth) {
		this.startMonth = startMonth;
	}
	public List<scheduling_record> getScheduling_list() {
		return scheduling_list;
	}
	public void setScheduling_list(List<scheduling_record> scheduling_list) {
		this.scheduling_list = scheduling_list;
	}
	
	public Map<String, Object> getKbList() {
		return kbList;
	}
	public void setKbList(Map<String, Object> kbList) {
		this.kbList = kbList;
	}
	public String getScheduling_date() {
		return scheduling_date;
	}
	public void setScheduling_date(String scheduling_date) {
		this.scheduling_date = scheduling_date;
	}
	public List<scheduling_record> getScheduling_recordList() {
		return scheduling_list;
	}
	public void setScheduling_recordList(List<scheduling_record> scheduling_list) {
		this.scheduling_list = scheduling_list;
	}
	public String getNew_password() {
		return new_password;
	}
	public void setNew_password(String new_password) {
		this.new_password = new_password;
	}
	public String getInjector_num1() {
		return injector_num1;
	}
	public void setInjector_num1(String injector_num1) {
		this.injector_num1 = injector_num1;
	}
	public String getInjector_num2() {
		return injector_num2;
	}
	public void setInjector_num2(String injector_num2) {
		this.injector_num2 = injector_num2;
	}
	public String getInjector_num3() {
		return injector_num3;
	}
	public void setInjector_num3(String injector_num3) {
		this.injector_num3 = injector_num3;
	}
	public String getInjector_num4() {
		return injector_num4;
	}
	public void setInjector_num4(String injector_num4) {
		this.injector_num4 = injector_num4;
	}
	public String getInjector_num5() {
		return injector_num5;
	}
	public void setInjector_num5(String injector_num5) {
		this.injector_num5 = injector_num5;
	}
	public String getInjector_num6() {
		return injector_num6;
	}
	public void setInjector_num6(String injector_num6) {
		this.injector_num6 = injector_num6;
	}
	public String getInjector_num7() {
		return injector_num7;
	}
	public void setInjector_num7(String injector_num7) {
		this.injector_num7 = injector_num7;
	}
	public String getInjector_num8() {
		return injector_num8;
	}
	public void setInjector_num8(String injector_num8) {
		this.injector_num8 = injector_num8;
	}
	public String getInjector_num9() {
		return injector_num9;
	}
	public void setInjector_num9(String injector_num9) {
		this.injector_num9 = injector_num9;
	}
	public String getInjector_num10() {
		return injector_num10;
	}
	public void setInjector_num10(String injector_num10) {
		this.injector_num10 = injector_num10;
	}
	public String getInjector_num11() {
		return injector_num11;
	}
	public void setInjector_num11(String injector_num11) {
		this.injector_num11 = injector_num11;
	}
	public String getInjector_num12() {
		return injector_num12;
	}
	public void setInjector_num12(String injector_num12) {
		this.injector_num12 = injector_num12;
	}
	public String getInjector_num13() {
		return injector_num13;
	}
	public void setInjector_num13(String injector_num13) {
		this.injector_num13 = injector_num13;
	}
	public String getInjector_num14() {
		return injector_num14;
	}
	public void setInjector_num14(String injector_num14) {
		this.injector_num14 = injector_num14;
	}
	public String getInjector_num15() {
		return injector_num15;
	}
	public void setInjector_num15(String injector_num15) {
		this.injector_num15 = injector_num15;
	}
	public String getInjector_num16() {
		return injector_num16;
	}
	public void setInjector_num16(String injector_num16) {
		this.injector_num16 = injector_num16;
	}
	public String getInjector_num17() {
		return injector_num17;
	}
	public void setInjector_num17(String injector_num17) {
		this.injector_num17 = injector_num17;
	}
	public String getInjector_num18() {
		return injector_num18;
	}
	public void setInjector_num18(String injector_num18) {
		this.injector_num18 = injector_num18;
	}
	public String getRail_1() {
		return rail_1;
	}
	public void setRail_1(String rail_1) {
		this.rail_1 = rail_1;
	}
	public String getRail_2() {
		return rail_2;
	}
	public void setRail_2(String rail_2) {
		this.rail_2 = rail_2;
	}
	public String getRail_3() {
		return rail_3;
	}
	public void setRail_3(String rail_3) {
		this.rail_3 = rail_3;
	}
	public String getNozzle_1() {
		return nozzle_1;
	}
	public void setNozzle_1(String nozzle_1) {
		this.nozzle_1 = nozzle_1;
	}
	public String getNozzle_2() {
		return nozzle_2;
	}
	public void setNozzle_2(String nozzle_2) {
		this.nozzle_2 = nozzle_2;
	}
	public String getNozzle_3() {
		return nozzle_3;
	}
	public void setNozzle_3(String nozzle_3) {
		this.nozzle_3 = nozzle_3;
	}
	public String getNozzle_4() {
		return nozzle_4;
	}
	public void setNozzle_4(String nozzle_4) {
		this.nozzle_4 = nozzle_4;
	}
	public String getNozzle_5() {
		return nozzle_5;
	}
	public void setNozzle_5(String nozzle_5) {
		this.nozzle_5 = nozzle_5;
	}
	public String getNozzle_6() {
		return nozzle_6;
	}
	public void setNozzle_6(String nozzle_6) {
		this.nozzle_6 = nozzle_6;
	}
	public String getOthers_1() {
		return others_1;
	}
	public void setOthers_1(String others_1) {
		this.others_1 = others_1;
	}
	public String getOthers_2() {
		return others_2;
	}
	public void setOthers_2(String others_2) {
		this.others_2 = others_2;
	}
	public String getOthers_3() {
		return others_3;
	}
	public void setOthers_3(String others_3) {
		this.others_3 = others_3;
	}
	public String getOthers_4() {
		return others_4;
	}
	public void setOthers_4(String others_4) {
		this.others_4 = others_4;
	}
	public String getOthers_5() {
		return others_5;
	}
	public void setOthers_5(String others_5) {
		this.others_5 = others_5;
	}
	public String getOthers_6() {
		return others_6;
	}
	public void setOthers_6(String others_6) {
		this.others_6 = others_6;
	}
	public String getOthers_7() {
		return others_7;
	}
	public void setOthers_7(String others_7) {
		this.others_7 = others_7;
	}
	public String getOthers_8() {
		return others_8;
	}
	public void setOthers_8(String others_8) {
		this.others_8 = others_8;
	}
	public String getOthers_9() {
		return others_9;
	}
	public void setOthers_9(String others_9) {
		this.others_9 = others_9;
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
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getOn_the_job() {
		return on_the_job;
	}
	public void setOn_the_job(String on_the_job) {
		this.on_the_job = on_the_job;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile_phone() {
		return mobile_phone;
	}
	public void setMobile_phone(String mobile_phone) {
		this.mobile_phone = mobile_phone;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getWork_number() {
		return work_number;
	}
	public void setWork_number(String work_number) {
		this.work_number = work_number;
	}
	@Override
	public String toString() {
		return "sys_user [user_id=" + user_id + ", username=" + username + ", account=" + account + ", password="
				+ password + ", mobile_phone=" + mobile_phone + ", phone=" + phone + ", email=" + email + ", role="
				+ role + ", create_time=" + create_time + ", department=" + department + ", work_number=" + work_number
				+ ", uuid=" + uuid + ", on_the_job=" + on_the_job + ", pageSize=" + pageSize + ", pageIndex="
				+ pageIndex + ", work_orderList=" + work_orderList + ", sendmail=" + sendmail + ", injector_num1="
				+ injector_num1 + ", injector_num2=" + injector_num2 + ", injector_num3=" + injector_num3
				+ ", injector_num4=" + injector_num4 + ", injector_num5=" + injector_num5 + ", injector_num6="
				+ injector_num6 + ", injector_num7=" + injector_num7 + ", injector_num8=" + injector_num8
				+ ", injector_num9=" + injector_num9 + ", injector_num10=" + injector_num10 + ", injector_num11="
				+ injector_num11 + ", injector_num12=" + injector_num12 + ", injector_num13=" + injector_num13
				+ ", injector_num14=" + injector_num14 + ", injector_num15=" + injector_num15 + ", injector_num16="
				+ injector_num16 + ", injector_num17=" + injector_num17 + ", injector_num18=" + injector_num18
				+ ", rail_1=" + rail_1 + ", rail_2=" + rail_2 + ", rail_3=" + rail_3 + ", nozzle_1=" + nozzle_1
				+ ", nozzle_2=" + nozzle_2 + ", nozzle_3=" + nozzle_3 + ", nozzle_4=" + nozzle_4 + ", nozzle_5="
				+ nozzle_5 + ", nozzle_6=" + nozzle_6 + ", others_1=" + others_1 + ", others_2=" + others_2
				+ ", others_3=" + others_3 + ", others_4=" + others_4 + ", others_5=" + others_5 + ", others_6="
				+ others_6 + ", others_7=" + others_7 + ", others_8=" + others_8 + ", others_9=" + others_9
				+ ", new_password=" + new_password + ", scheduling_date=" + scheduling_date + ", scheduling_list="
				+ scheduling_list + ", kbList=" + kbList + ", startMonth=" + startMonth + ", endMonth=" + endMonth
				+ ", conut=" + conut + "]";
	}
	
	
	
}
