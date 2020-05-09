package com.hanxi.service;






import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hanxi.dao.KbRecordDao;

import com.hanxi.entity.kb_record;



@Service
@Transactional(readOnly = true)
public class KbRecordService {
	@Autowired
	private KbRecordDao kbRecordDao;
	
	public List<kb_record> select_kb_record_list(){
		return kbRecordDao.select_kb_record_list();
	}
	
	@Transactional(readOnly = true)
	public synchronized Integer insert_kb_record(kb_record kb_record){
		return kbRecordDao.insert_kb_record(kb_record);
	}
	
	public String select_kb_record_count(kb_record kb_record){
		return kbRecordDao.select_kb_record_count(kb_record);
	}
	
	/**
	 * 查询选中va_no下的kb
	 * 
	 * @param kb_va
	 * @return
	 */
	public List<kb_record> select_va_kb_record_list(String kb_va){
		return kbRecordDao.select_va_kb_record_list(kb_va);
	}
	
}
