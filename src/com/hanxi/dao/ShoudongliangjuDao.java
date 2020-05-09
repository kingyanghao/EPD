package com.hanxi.dao;

import java.util.List;

import com.hanxi.entity.Shoudongliangju;


public interface ShoudongliangjuDao {
	
	List<Shoudongliangju> findShoudongliangju();
	Shoudongliangju findOneShou(int id);
	void xiugaiShou(Shoudongliangju shoudongliangju);
}
