package com.hanxi.entity;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class daily_check {

	private int daily_id;
	private String bench_name;
	private String power_supply;
	private String test_oil_level;
	private String hydraulic_oil_level;
	private String air_source_pressure;
	private String water_coolant;
	private String industrial_pc;
	private String security_door;
	private String interlock;
	private String pipeline;
	
	private String lacquer_tray;
	
	private String cleanliness_of_bench;
	
	private String oil_mist;
	
	private String implementer;
	private Date create_time;
	private String check_time;
	private Date check_time1;
	private Date startTime;
	private Date endTime;
	private String time;
	//	分页，
	private int pageSize;//分页条数
	private int pageIndex;//页数
	
	
	private String ispaid;//是否为调休，2工作日，1.休息日
	private String deates;
	private String days;
	private String status;//2.异常，1，3正常，4漏检，未点检
	
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDeates() {
		return deates;
	}
	public void setDeates(String deates) {
		this.deates = deates;
	}

	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getIspaid() {
		return ispaid;
	}
	public void setIspaid(String ispaid) {
		this.ispaid = ispaid;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Date getCheck_time1() {
		return check_time1;
	}
	public void setCheck_time1(Date check_time1) {
		this.check_time1 = check_time1;
	}
	public int getDaily_id() {
		return daily_id;
	}
	public void setDaily_id(int daily_id) {
		this.daily_id = daily_id;
	}
	public String getBench_name() {
		return bench_name;
	}
	public void setBench_name(String bench_name) {
		this.bench_name = bench_name;
	}
	public String getPower_supply() {
		return power_supply;
	}
	public void setPower_supply(String power_supply) {
		this.power_supply = power_supply;
	}
	public String getTest_oil_level() {
		return test_oil_level;
	}
	public void setTest_oil_level(String test_oil_level) {
		this.test_oil_level = test_oil_level;
	}
	public String getHydraulic_oil_level() {
		return hydraulic_oil_level;
	}
	public void setHydraulic_oil_level(String hydraulic_oil_level) {
		this.hydraulic_oil_level = hydraulic_oil_level;
	}
	public String getAir_source_pressure() {
		return air_source_pressure;
	}
	public void setAir_source_pressure(String air_source_pressure) {
		this.air_source_pressure = air_source_pressure;
	}
	public String getWater_coolant() {
		return water_coolant;
	}
	public void setWater_coolant(String water_coolant) {
		this.water_coolant = water_coolant;
	}
	public String getIndustrial_pc() {
		return industrial_pc;
	}
	public void setIndustrial_pc(String industrial_pc) {
		this.industrial_pc = industrial_pc;
	}
	public String getSecurity_door() {
		return security_door;
	}
	public void setSecurity_door(String security_door) {
		this.security_door = security_door;
	}
	public String getInterlock() {
		return interlock;
	}
	public void setInterlock(String interlock) {
		this.interlock = interlock;
	}
	public String getPipeline() {
		return pipeline;
	}
	public void setPipeline(String pipeline) {
		this.pipeline = pipeline;
	}
	public String getLacquer_tray() {
		return lacquer_tray;
	}
	public void setLacquer_tray(String lacquer_tray) {
		this.lacquer_tray = lacquer_tray;
	}
	public String getCleanliness_of_bench() {
		return cleanliness_of_bench;
	}
	public void setCleanliness_of_bench(String cleanliness_of_bench) {
		this.cleanliness_of_bench = cleanliness_of_bench;
	}
	public String getOil_mist() {
		return oil_mist;
	}
	public void setOil_mist(String oil_mist) {
		this.oil_mist = oil_mist;
	}
	public String getImplementer() {
		return implementer;
	}
	public void setImplementer(String implementer) {
		this.implementer = implementer;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public String getCheck_time() {
		return check_time;
	}
	public void setCheck_time(String check_time) {
		this.check_time = check_time;
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
	@Override
	public String toString() {
		return "daily_check [daily_id=" + daily_id + ", bench_name=" + bench_name + ", power_supply=" + power_supply
				+ ", test_oil_level=" + test_oil_level + ", hydraulic_oil_level=" + hydraulic_oil_level
				+ ", air_source_pressure=" + air_source_pressure + ", water_coolant=" + water_coolant
				+ ", industrial_pc=" + industrial_pc + ", security_door=" + security_door + ", interlock=" + interlock
				+ ", pipeline=" + pipeline + ", lacquer_tray=" + lacquer_tray + ", cleanliness_of_bench="
				+ cleanliness_of_bench + ", oil_mist=" + oil_mist + ", implementer=" + implementer + ", create_time="
				+ create_time + ", check_time=" + check_time + ", pageSize=" + pageSize + ", pageIndex=" + pageIndex
				+ "]";
	}
	


}
