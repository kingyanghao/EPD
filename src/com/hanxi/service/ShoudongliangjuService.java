package com.hanxi.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanxi.dao.ShoudongliangjuDao;
import com.hanxi.entity.Shoudongliangju;


@Service
public class ShoudongliangjuService {
	@Resource
	private ShoudongliangjuDao shoudongliangjuDao;
	
	public List<Shoudongliangju> findShoudongliangju(){
		return shoudongliangjuDao.findShoudongliangju();
	}
	public Shoudongliangju findOneShou(int id){
		return shoudongliangjuDao.findOneShou(id);
	}
	public void xiugaiShou(Shoudongliangju shoudongliangju){
		shoudongliangjuDao.xiugaiShou(shoudongliangju);
	}
}
