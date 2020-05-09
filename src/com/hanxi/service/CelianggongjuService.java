package com.hanxi.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.hanxi.dao.CelianggongjuDao;
import com.hanxi.entity.Celianggongju;


@Service
public class CelianggongjuService {
	@Resource
	private CelianggongjuDao celianggongjuDao;
	
	public List<Celianggongju> findCelianggongju(){
		return celianggongjuDao.findCelianggongju();
	}
	
	public Celianggongju findOneCe(int id){
		return celianggongjuDao.findOneCe(id);
	}
	
	public void xiugaiCe(Celianggongju celianggongju){
		celianggongjuDao.xiugaiCe(celianggongju);
	}
}
