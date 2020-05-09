package com.hanxi.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanxi.dao.LiyonglueDao;
import com.hanxi.entity.Weixiu;
import com.hanxi.entity.calendarOptions;
import com.hanxi.entity.scheduling_record;

@Service
public class LiyonglueService {

	@Resource 
	private LiyonglueDao liyonglueDao;
	
	public List<Weixiu> finddown1(Weixiu scheduling_record){
		return liyonglueDao.finddown1( scheduling_record);
	}
	public List<scheduling_record> findrun1(scheduling_record scheduling_record){
		return liyonglueDao.findrun1( scheduling_record);
	}
	
	public List<Weixiu> finddown2(Weixiu scheduling_record){
		return liyonglueDao.finddown2( scheduling_record);
	}
	public List<scheduling_record> findrun2(scheduling_record scheduling_record){
		return liyonglueDao.findrun2( scheduling_record);
	}
	public List<Weixiu> finddown3(Weixiu scheduling_record){
		return liyonglueDao.finddown3( scheduling_record);
	}
	public List<scheduling_record> findrun3(scheduling_record scheduling_record){
		return liyonglueDao.findrun3( scheduling_record);
	}
	public List<Weixiu> finddown4(Weixiu scheduling_record){
		return liyonglueDao.finddown4( scheduling_record);
	}
	public List<scheduling_record> findrun4(scheduling_record scheduling_record){
		return liyonglueDao.findrun4( scheduling_record);
	}
	public List<Weixiu> finddown5(Weixiu scheduling_record){
		return liyonglueDao.finddown5( scheduling_record);
	}
	public List<scheduling_record> findrun5(scheduling_record scheduling_record){
		return liyonglueDao.findrun5( scheduling_record);
	}
	public List<Weixiu> finddown6(Weixiu scheduling_record){
		return liyonglueDao.finddown6( scheduling_record);
	}
	public List<scheduling_record> findrun6(scheduling_record scheduling_record){
		return liyonglueDao.findrun6( scheduling_record);
	}
	public List<Weixiu> finddown7(Weixiu scheduling_record){
		return liyonglueDao.finddown7( scheduling_record);
	}
	public List<scheduling_record> findrun7(scheduling_record scheduling_record){
		return liyonglueDao.findrun7( scheduling_record);
	}
	public List<Weixiu> finddown8(Weixiu scheduling_record){
		return liyonglueDao.finddown8( scheduling_record);
	}
	public List<scheduling_record> findrun8(scheduling_record scheduling_record){
		return liyonglueDao.findrun8( scheduling_record);
	}
	public List<Weixiu> finddown9(Weixiu scheduling_record){
		return liyonglueDao.finddown9( scheduling_record);
	}
	public List<scheduling_record> findrun9(scheduling_record scheduling_record){
		return liyonglueDao.findrun9( scheduling_record);
	}
	public List<Weixiu> finddown10(Weixiu scheduling_record){
		return liyonglueDao.finddown10( scheduling_record);
	}
	public List<scheduling_record> findrun10(scheduling_record scheduling_record){
		return liyonglueDao.findrun10( scheduling_record);
	}
	
	//调休
	public int findTiaoxiu(calendarOptions calendarOptions){
		return liyonglueDao.findTiaoxiu(calendarOptions);
	}
		//加班
	public int findJiaban(calendarOptions calendarOptions){
		return liyonglueDao.findJiaban(calendarOptions);
	}
	
	public 	List<Weixiu> findyiyang1(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang1(scheduling_record);

	}
	public 	List<Weixiu> findyiyang2(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang2(scheduling_record);

	}
	public 	List<Weixiu> findyiyang3(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang3(scheduling_record);

	}
	public 	List<Weixiu> findyiyang4(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang4(scheduling_record);

	}
	public 	List<Weixiu> findyiyang5(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang5(scheduling_record);

	}
	public 	List<Weixiu> findyiyang6(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang6(scheduling_record);

	}
	public 	List<Weixiu> findyiyang7(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang7(scheduling_record);

	}
	public 	List<Weixiu> findyiyang8(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang8(scheduling_record);

	}
	public 	List<Weixiu> findyiyang9(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang9(scheduling_record);

	}
	public 	List<Weixiu> findyiyang10(scheduling_record scheduling_record){
		return liyonglueDao.findyiyang10(scheduling_record);

	}
	
	//////////////////////////
	public List<Weixiu> ffinddown1(Weixiu scheduling_record){
		return liyonglueDao.ffinddown1( scheduling_record);
	}
	public List<scheduling_record> ffindrun1(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun1( scheduling_record);
	}
	
	public List<Weixiu> ffinddown2(Weixiu scheduling_record){
		return liyonglueDao.ffinddown2( scheduling_record);
	}
	public List<scheduling_record> ffindrun2(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun2( scheduling_record);
	}
	public List<Weixiu> ffinddown3(Weixiu scheduling_record){
		return liyonglueDao.ffinddown3( scheduling_record);
	}
	public List<scheduling_record> ffindrun3(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun3( scheduling_record);
	}
	public List<Weixiu> ffinddown4(Weixiu scheduling_record){
		return liyonglueDao.ffinddown4( scheduling_record);
	}
	public List<scheduling_record> ffindrun4(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun4( scheduling_record);
	}
	public List<Weixiu> ffinddown5(Weixiu scheduling_record){
		return liyonglueDao.ffinddown5( scheduling_record);
	}
	public List<scheduling_record> ffindrun5(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun5( scheduling_record);
	}
	public List<Weixiu> ffinddown6(Weixiu scheduling_record){
		return liyonglueDao.ffinddown6( scheduling_record);
	}
	public List<scheduling_record> ffindrun6(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun6( scheduling_record);
	}
	public List<Weixiu> ffinddown7(Weixiu scheduling_record){
		return liyonglueDao.ffinddown7( scheduling_record);
	}
	public List<scheduling_record> ffindrun7(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun7( scheduling_record);
	}
	public List<Weixiu> ffinddown8(Weixiu scheduling_record){
		return liyonglueDao.ffinddown8( scheduling_record);
	}
	public List<scheduling_record> ffindrun8(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun8( scheduling_record);
	}
	public List<Weixiu> ffinddown9(Weixiu scheduling_record){
		return liyonglueDao.ffinddown9( scheduling_record);
	}
	public List<scheduling_record> ffindrun9(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun9( scheduling_record);
	}
	public List<Weixiu> ffinddown10(Weixiu scheduling_record){
		return liyonglueDao.ffinddown10( scheduling_record);
	}
	public List<scheduling_record> ffindrun10(scheduling_record scheduling_record){
		return liyonglueDao.ffindrun10( scheduling_record);
	}
	
	//调休
	public int ffindTiaoxiu(calendarOptions calendarOptions){
		return liyonglueDao.ffindTiaoxiu(calendarOptions);
	}
		//加班
	public int ffindJiaban(calendarOptions calendarOptions){
		return liyonglueDao.ffindJiaban(calendarOptions);
	}
	
	public 	List<Weixiu> ffindyiyang1(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang1(scheduling_record);

	}
	public 	List<Weixiu> ffindyiyang2(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang2(scheduling_record);

	}
	public 	List<Weixiu> ffindyiyang3(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang3(scheduling_record);

	}
	public 	List<Weixiu> ffindyiyang4(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang4(scheduling_record);

	}
	public 	List<Weixiu> ffindyiyang5(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang5(scheduling_record);

	}
	public 	List<Weixiu> ffindyiyang6(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang6(scheduling_record);

	}
	public 	List<Weixiu> ffindyiyang7(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang7(scheduling_record);

	}
	public 	List<Weixiu> ffindyiyang8(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang8(scheduling_record);

	}
	public 	List<Weixiu> ffindyiyang9(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang9(scheduling_record);

	}
	public 	List<Weixiu> ffindyiyang10(scheduling_record scheduling_record){
		return liyonglueDao.ffindyiyang10(scheduling_record);

	}
	
	//月正常工作时间
	public List<scheduling_record> fffindrun1(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun1(scheduling_record);
	}

	public List<scheduling_record> fffindrun2(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun2(scheduling_record);

	}

	public List<scheduling_record> fffindrun3(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun3(scheduling_record);

	}

	public List<scheduling_record> fffindrun4(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun4(scheduling_record);

	}

	public List<scheduling_record> fffindrun5(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun5(scheduling_record);

	}

	public List<scheduling_record> fffindrun6(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun6(scheduling_record);

	}

	public List<scheduling_record> fffindrun7(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun7(scheduling_record);

	}

	public List<scheduling_record> fffindrun8(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun8(scheduling_record);

	}

	public List<scheduling_record> fffindrun9(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun9(scheduling_record);

	}

	public List<scheduling_record> fffindrun10(scheduling_record scheduling_record){
		return liyonglueDao.fffindrun10(scheduling_record);

	}
	
	//年正常工作时间
	public List<scheduling_record> ffffindrun1(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun1(scheduling_record);
	}

	public List<scheduling_record> ffffindrun2(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun2(scheduling_record);

	}

	public List<scheduling_record> ffffindrun3(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun3(scheduling_record);

	}

	public List<scheduling_record> ffffindrun4(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun4(scheduling_record);

	}

	public List<scheduling_record> ffffindrun5(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun5(scheduling_record);

	}

	public List<scheduling_record> ffffindrun6(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun6(scheduling_record);

	}

	public List<scheduling_record> ffffindrun7(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun7(scheduling_record);

	}

	public List<scheduling_record> ffffindrun8(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun8(scheduling_record);

	}

	public List<scheduling_record> ffffindrun9(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun9(scheduling_record);

	}

	public List<scheduling_record> ffffindrun10(scheduling_record scheduling_record){
		return liyonglueDao.ffffindrun10(scheduling_record);

	}
	
	
}
