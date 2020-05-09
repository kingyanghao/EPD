package com.hanxi.dao;

import java.util.List;

import com.hanxi.entity.Celianggongju;


public interface CelianggongjuDao {
	List<Celianggongju> findCelianggongju();
	Celianggongju findOneCe(int id);
	void xiugaiCe(Celianggongju celianggongju);
}
