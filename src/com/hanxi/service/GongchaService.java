package com.hanxi.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanxi.dao.GongchaDao;
import com.hanxi.entity.Gongcha;


@Service
public class GongchaService {
	@Resource
	private GongchaDao gongchaDao;
	
	public void gongchaadd(Gongcha gongcha){
		gongchaDao.gongchaadd(gongcha);
	}
	
	public int findCountGongcha(Gongcha gongcha){
		return gongchaDao.findCountGongcha(gongcha);
	}
	public List<Gongcha> findGongcha(Gongcha gongcha){
		return gongchaDao.findGongcha(gongcha);
	}
	public Gongcha findOneGongcha(int id){
		return gongchaDao.findOneGongcha(id);
	}
	public void gongchaxiugai(Gongcha gongcha){
		 gongchaDao.gongchaxiugai(gongcha);
	}
	public void gongchadel(int id){
		gongchaDao.gongchadel(id);
	}
}
