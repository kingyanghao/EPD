package com.hanxi.dao;

import java.util.List;

import com.hanxi.entity.Page;
import com.hanxi.entity.Weixiu;

public interface WeixiuDao {
	void add(Weixiu weixiu);
	void updateadd1(Weixiu weixiu);
	void updateadd2(Weixiu weixiu);
	List<Weixiu> findWeixiu(Page page);
	Integer findCount(Page page);
	void updateWeixiu(Weixiu weixiu);
	void updateWeixiu1(Weixiu weixiu);
	void updateWeixiu2(Weixiu weixiu);
	void deletes(List<Integer> ids);
	void deletesoneday(List<Integer> ids);
	Weixiu findWeixiuOne(Integer id);
	Weixiu findWeixiuTwo(String weixiudanhao);
	void tjxg(Weixiu weixiu);
	List<String> weixiuEmail();
	Weixiu weixiudanhao();
	void addoneday(Weixiu weixiu);
}
