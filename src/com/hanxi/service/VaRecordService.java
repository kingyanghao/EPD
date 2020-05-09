package com.hanxi.service;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.hanxi.dao.VaRecordDao;
import com.hanxi.entity.va_record;



@Service
@Transactional(readOnly = true)
public class VaRecordService {
	@Autowired
	private VaRecordDao vaRecordDao;
	
	public List<va_record> select_va_record_list(va_record va_record){
		return vaRecordDao.select_va_record_list(va_record);
	}
	
	@Transactional(readOnly = true)
	public synchronized Integer insert_va_record(va_record va_record){
		return vaRecordDao.insert_va_record(va_record);
	}
	
	public String select_va_record_count(va_record va_record){
		return vaRecordDao.select_va_record_count(va_record);
	}
	
}
