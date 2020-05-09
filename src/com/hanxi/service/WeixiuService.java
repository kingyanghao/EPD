package com.hanxi.service;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanxi.dao.WeixiuDao;
import com.hanxi.entity.Page;
import com.hanxi.entity.Weixiu;

@Service
public class WeixiuService {
	@Resource
	private WeixiuDao weixiuDao;
	public void add(Weixiu weixiu){
		weixiuDao.add(weixiu);
		     if(weixiu.getShebeimingcheng().equals("CI4000 F1")||
				weixiu.getShebeimingcheng().equals("CI4000 F2")||
				weixiu.getShebeimingcheng().equals("CI4000 F3")||
				weixiu.getShebeimingcheng().equals("CI4000 F4")||
				weixiu.getShebeimingcheng().equals("ESS F6")||
				weixiu.getShebeimingcheng().equals("RAK F7")||
				weixiu.getShebeimingcheng().equals("ESS F8(NEW)")||				
				weixiu.getShebeimingcheng().equals("Large engine F9")||
				weixiu.getShebeimingcheng().equals("Nozzle flow rate")||
				weixiu.getShebeimingcheng().equals("Nozzle Pdo")||
				weixiu.getShebeimingcheng().equals("HSM")){
			weixiuDao.updateadd1(weixiu);
		}else{
			weixiuDao.updateadd2(weixiu);
		}
	}
    public List<Weixiu> findWeixiu(Page page) {
        List<Weixiu>list=weixiuDao.findWeixiu(page);
		//System.out.println("sadaspage"+page.getLimit()+"limit"+page.getPage());
        return list;
    }
 
    public Integer findCount(Page page) {
        return weixiuDao.findCount(page);
    }
    public void updateWeixiu(Weixiu weixiu){
    	weixiuDao.updateWeixiu(weixiu);
    	if(weixiu.getShebeimingcheng().equals("CI4000 F1")||
				weixiu.getShebeimingcheng().equals("CI4000 F2")||
				weixiu.getShebeimingcheng().equals("CI4000 F3")||
				weixiu.getShebeimingcheng().equals("CI4000 F4")||
				weixiu.getShebeimingcheng().equals("ESS F6")||
				weixiu.getShebeimingcheng().equals("RAK F7")||
				weixiu.getShebeimingcheng().equals("ESS F8(NEW)")||				
				weixiu.getShebeimingcheng().equals("Large engine F9")||
				weixiu.getShebeimingcheng().equals("Nozzle flow rate")||
				weixiu.getShebeimingcheng().equals("Nozzle Pdo")||
				weixiu.getShebeimingcheng().equals("HSM")){
			weixiuDao.updateWeixiu1(weixiu);
		}else{
			weixiuDao.updateWeixiu2(weixiu);
		}
    }
    public void deletes(List<Integer> ids){
    	weixiuDao.deletes(ids);
    	weixiuDao.deletesoneday(ids);
    }
    public Weixiu findWeixiuOne(Integer id){
    	return weixiuDao.findWeixiuOne(id);
    }
    public Weixiu findWeixiuTwo(String weixiudanhao){
    	return weixiuDao.findWeixiuTwo(weixiudanhao);
    }
    public void tjxg(Weixiu weixiu){
    			weixiuDao.tjxg(weixiu);
    }
    public List<String> weixiuEmail(){
    	return weixiuDao.weixiuEmail();
    }
    public Weixiu weixiudanhao(){
    	return weixiuDao.weixiudanhao();
    }
    
    public void addoneday(Weixiu weixiu){
    	weixiuDao.addoneday(weixiu);
    }

}
