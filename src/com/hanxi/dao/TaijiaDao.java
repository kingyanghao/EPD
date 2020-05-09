package com.hanxi.dao;

import java.util.List;

import com.hanxi.entity.Taijia;
import com.hanxi.entity.daily_check;
import com.hanxi.entity.month_check;
import com.hanxi.entity.paid_leave;
import com.hanxi.entity.year_check;

public interface TaijiaDao {
	List<Taijia> findTaijia();
	daily_check findRijian(daily_check daily_check);
	month_check findYuejian(month_check month_check);
	year_check findNianjian(year_check year_check);
	Taijia findOneTaijia(String taijiamingcheng);
	void xiugai(Taijia taijia);
	List<paid_leave> findtiaoxiu(String username);
}
