package com.hanxi.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanxi.dao.TaijiaDao;
import com.hanxi.entity.Taijia;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.year_check;

@Service
public class TaijiaService {
	@Resource
	private TaijiaDao taijiaDao;
	
	public List<Taijia> findTaijia(){
		return taijiaDao.findTaijia();
	}
	public daily_check findRijian(daily_check daily_check){
		return taijiaDao.findRijian(daily_check);
	}
	public month_check findYuejian(month_check month_check){
		return taijiaDao.findYuejian(month_check);
	}
	public year_check findNianjian(year_check year_check){
		return taijiaDao.findNianjian(year_check);
	}
	public Taijia findOneTaijia(String taijiamingcheng){
		return taijiaDao.findOneTaijia(taijiamingcheng);
	}
	public void xiugai(Taijia taijia){
		taijiaDao.xiugai(taijia);
	}
	public 	List<paid_leave> findtiaoxiu(String username){
		return taijiaDao.findtiaoxiu(username);
	}
}
