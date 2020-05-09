package com.hanxi.dao;

import java.util.List;

import com.hanxi.entity.Gongcha;




public interface GongchaDao {
	void gongchaadd(Gongcha gongcha);
	int findCountGongcha(Gongcha gongcha);
	List<Gongcha> findGongcha(Gongcha gongcha);
	Gongcha findOneGongcha(int id);
	void gongchaxiugai(Gongcha gongcha);
	void gongchadel(int id);
}
