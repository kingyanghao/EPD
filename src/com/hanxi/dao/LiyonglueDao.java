package com.hanxi.dao;

import java.util.List;

import com.hanxi.entity.Weixiu;
import com.hanxi.entity.calendarOptions;
import com.hanxi.entity.scheduling_record;

public interface LiyonglueDao {

	List<Weixiu> finddown1(Weixiu weixiu);
	List<scheduling_record> findrun1(scheduling_record scheduling_record);

	List<Weixiu> finddown2(Weixiu weixiu);
	List<scheduling_record> findrun2(scheduling_record scheduling_record);

	List<Weixiu> finddown3(Weixiu weixiu);
	List<scheduling_record> findrun3(scheduling_record scheduling_record);

	List<Weixiu> finddown4(Weixiu weixiu);
	List<scheduling_record> findrun4(scheduling_record scheduling_record);

	List<Weixiu> finddown5(Weixiu weixiu);
	List<scheduling_record> findrun5(scheduling_record scheduling_record);

	List<Weixiu> finddown6(Weixiu weixiu);
	List<scheduling_record> findrun6(scheduling_record scheduling_record);

	List<Weixiu> finddown7(Weixiu weixiu);
	List<scheduling_record> findrun7(scheduling_record scheduling_record);

	List<Weixiu> finddown8(Weixiu weixiu);
	List<scheduling_record> findrun8(scheduling_record scheduling_record);

	List<Weixiu> finddown9(Weixiu weixiu);
	List<scheduling_record> findrun9(scheduling_record scheduling_record);
	List<Weixiu> finddown10(Weixiu weixiu);
	List<scheduling_record> findrun10(scheduling_record scheduling_record);
	//调休
	int findTiaoxiu(calendarOptions calendarOptions);
	//加班
	int findJiaban(calendarOptions calendarOptions);
	List<Weixiu> findyiyang1(scheduling_record scheduling_record);
	List<Weixiu> findyiyang2(scheduling_record scheduling_record);
	List<Weixiu> findyiyang3(scheduling_record scheduling_record);
	List<Weixiu> findyiyang4(scheduling_record scheduling_record);
	List<Weixiu> findyiyang5(scheduling_record scheduling_record);
	List<Weixiu> findyiyang6(scheduling_record scheduling_record);
	List<Weixiu> findyiyang7(scheduling_record scheduling_record);
	List<Weixiu> findyiyang8(scheduling_record scheduling_record);
	List<Weixiu> findyiyang9(scheduling_record scheduling_record);
	List<Weixiu> findyiyang10(scheduling_record scheduling_record);
	
	///////////////////
	List<Weixiu> ffinddown1(Weixiu weixiu);
	List<scheduling_record> ffindrun1(scheduling_record scheduling_record);

	List<Weixiu> ffinddown2(Weixiu weixiu);
	List<scheduling_record> ffindrun2(scheduling_record scheduling_record);

	List<Weixiu> ffinddown3(Weixiu weixiu);
	List<scheduling_record> ffindrun3(scheduling_record scheduling_record);

	List<Weixiu> ffinddown4(Weixiu weixiu);
	List<scheduling_record> ffindrun4(scheduling_record scheduling_record);

	List<Weixiu> ffinddown5(Weixiu weixiu);
	List<scheduling_record> ffindrun5(scheduling_record scheduling_record);

	List<Weixiu> ffinddown6(Weixiu weixiu);
	List<scheduling_record> ffindrun6(scheduling_record scheduling_record);

	List<Weixiu> ffinddown7(Weixiu weixiu);
	List<scheduling_record> ffindrun7(scheduling_record scheduling_record);

	List<Weixiu> ffinddown8(Weixiu weixiu);
	List<scheduling_record> ffindrun8(scheduling_record scheduling_record);

	List<Weixiu> ffinddown9(Weixiu weixiu);
	List<scheduling_record> ffindrun9(scheduling_record scheduling_record);
	
	List<Weixiu> ffinddown10(Weixiu weixiu);
	List<scheduling_record> ffindrun10(scheduling_record scheduling_record);
	//调休
	int ffindTiaoxiu(calendarOptions calendarOptions);
	//加班
	int ffindJiaban(calendarOptions calendarOptions);
	List<Weixiu> ffindyiyang1(scheduling_record scheduling_record);
	List<Weixiu> ffindyiyang2(scheduling_record scheduling_record);
	List<Weixiu> ffindyiyang3(scheduling_record scheduling_record);
	List<Weixiu> ffindyiyang4(scheduling_record scheduling_record);
	List<Weixiu> ffindyiyang5(scheduling_record scheduling_record);
	List<Weixiu> ffindyiyang6(scheduling_record scheduling_record);
	List<Weixiu> ffindyiyang7(scheduling_record scheduling_record);
	List<Weixiu> ffindyiyang8(scheduling_record scheduling_record);
	List<Weixiu> ffindyiyang9(scheduling_record scheduling_record);
	List<Weixiu> ffindyiyang10(scheduling_record scheduling_record);
	
	
	//月正常工作时间
	List<scheduling_record> fffindrun1(scheduling_record scheduling_record);

	List<scheduling_record> fffindrun2(scheduling_record scheduling_record);

	List<scheduling_record> fffindrun3(scheduling_record scheduling_record);

	List<scheduling_record> fffindrun4(scheduling_record scheduling_record);

	List<scheduling_record> fffindrun5(scheduling_record scheduling_record);

	List<scheduling_record> fffindrun6(scheduling_record scheduling_record);

	List<scheduling_record> fffindrun7(scheduling_record scheduling_record);

	List<scheduling_record> fffindrun8(scheduling_record scheduling_record);

	List<scheduling_record> fffindrun9(scheduling_record scheduling_record);

	List<scheduling_record> fffindrun10(scheduling_record scheduling_record);
	
	//年正常工作时间
	List<scheduling_record> ffffindrun1(scheduling_record scheduling_record);

	List<scheduling_record> ffffindrun2(scheduling_record scheduling_record);

	List<scheduling_record> ffffindrun3(scheduling_record scheduling_record);

	List<scheduling_record> ffffindrun4(scheduling_record scheduling_record);

	List<scheduling_record> ffffindrun5(scheduling_record scheduling_record);

	List<scheduling_record> ffffindrun6(scheduling_record scheduling_record);

	List<scheduling_record> ffffindrun7(scheduling_record scheduling_record);

	List<scheduling_record> ffffindrun8(scheduling_record scheduling_record);

	List<scheduling_record> ffffindrun9(scheduling_record scheduling_record);

	List<scheduling_record> ffffindrun10(scheduling_record scheduling_record);
}
