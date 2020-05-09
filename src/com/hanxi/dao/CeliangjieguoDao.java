package com.hanxi.dao;
import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.hanxi.entity.Celiangjieguo;
import com.hanxi.entity.Celiangtubiao;
import com.hanxi.entity.Gongcha;
public interface CeliangjieguoDao {
	void celiangjieguoAdd(@Param("celiangjieguos")List<Celiangjieguo> celiangjieguos);
	void celiangtubiao(Celiangtubiao celiangtubiao);
	List<Celiangtubiao> findCeliangtubiao(Celiangjieguo celiangjieguo);
	List<Celiangjieguo> findCeliangjieguo1(Celiangjieguo celiangjieguo);
	List<Celiangjieguo> findCeliangjieguo2(Celiangjieguo celiangjieguo);
	List<Celiangjieguo> findCeliangjieguo3(Celiangjieguo celiangjieguo);
	List<Celiangjieguo> findCeliangjieguo4(Celiangjieguo celiangjieguo);
	Gongcha findGongchatubiao(Celiangjieguo celiangjieguo);
	void delce(Celiangtubiao celiangtubiao);
	void delce1(Celiangtubiao celiangtubiao);
}
