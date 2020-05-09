package com.hanxi.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.stereotype.Service;

import com.hanxi.dao.CeliangjieguoDao;
import com.hanxi.dao.GongchaDao;
import com.hanxi.entity.Celiangjieguo;
import com.hanxi.entity.Celiangtubiao;
import com.hanxi.entity.Gongcha;

@Service
public class CeliangjieguoService {
	@Resource
	private CeliangjieguoDao celiangjieguoDao;
	public void celiangtubiao(Celiangtubiao celiangtubiao){
		celiangjieguoDao.celiangtubiao(celiangtubiao);
	}
	public void celiangjieguoAdd(List<Celiangjieguo> celiangjieguos){
		// System.out.println(celiangjieguos.get(0).getTest_point1());
		// System.out.println(celiangjieguos.get(1).getTest_point1());
		 celiangjieguoDao.celiangjieguoAdd(celiangjieguos);
	}
	public Gongcha findGongchatubiao(Celiangjieguo celiangjieguo){
		return celiangjieguoDao.findGongchatubiao(celiangjieguo);
	}
	public List<Celiangjieguo> readExcel(InputStream inp,Celiangjieguo cc){
		Gongcha gongcha = celiangjieguoDao.findGongchatubiao(cc);
		List<Celiangjieguo> celiangjieguos = new ArrayList<Celiangjieguo>();
		try {
			String cellStr = null; 
			Workbook wb = WorkbookFactory.create(inp);
			Sheet sheet = wb.getSheetAt(0);
			//System.out.println(sheet.getLastRowNum());
			for(int i=15;i<=18;i++){
				//System.out.println("i:"+i);
				Celiangjieguo celiangjieguo = new Celiangjieguo();
				Celiangjieguo celiangjieguo1 = new Celiangjieguo();
                Row row =sheet.getRow(i); 
                //System.out.println(row);
                if (row == null) {  
                    continue;  
                }
                System.out.println(row.getLastCellNum());
                for (int j = 5; j < gongcha.getCount()+5; j++) {
                	System.out.println("j:"+j);
					Cell cell = row.getCell(j);
					if(cell==null){
						cellStr="";
					}else {
						cellStr = ConvertCellStr(cell,cellStr);
					}
					System.out.println(cellStr);	
					//System.out.println(cellStr);
					celiangjieguo =  addCeliangjieguo(j,celiangjieguo1,cellStr,gongcha.getCount()+5);
					//System.out.println("test_poijnt1:"+celiangjieguo.getTest_point1());
				}
                celiangjieguos.add(celiangjieguo);
			}
		} catch (InvalidFormatException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return celiangjieguos;
	}
	public String ConvertCellStr(Cell cell,String cellStr){

		switch (cell.getCellType()) {
		case Cell.CELL_TYPE_STRING:
			cellStr = cell.getStringCellValue().toString();
			break;
		case Cell.CELL_TYPE_NUMERIC:
			if(DateUtil.isCellDateFormatted(cell)){
				cellStr = cell.getDateCellValue().toString();
			}else{
			cellStr = String.valueOf(cell.getNumericCellValue());
			}
			break;
		case Cell.CELL_TYPE_FORMULA:
			cellStr = cell.getCellFormula().toString();
			break;
		case Cell.CELL_TYPE_ERROR:
			cellStr = "异常类型未可知";
			break;
		case Cell.CELL_TYPE_BOOLEAN:
			cellStr = String.valueOf(cell.getBooleanCellValue());
			break;
		case Cell.CELL_TYPE_BLANK:
			cellStr = "";
			break;
		}
		return cellStr;
	}
	public Celiangjieguo addCeliangjieguo(int j,Celiangjieguo celiangjieguo1,String cellStr,int count){
		if(j==5){
			if(j==count-1){
				celiangjieguo1.setOil_point(cellStr);
			}else {
				celiangjieguo1.setTest_point1(cellStr);
			}
		}
		if(j==6){
			if(j==count-1){
				celiangjieguo1.setOil_point(cellStr);
			}else {
				celiangjieguo1.setTest_point2(cellStr);
			}
		}
		if(j==7){
			if(j==count-1){
				celiangjieguo1.setOil_point(cellStr);
			}else {
				celiangjieguo1.setTest_point3(cellStr);
			}
		}
		if(j==8){
			if(j==count-1){
				celiangjieguo1.setOil_point(cellStr);
			}else {
				celiangjieguo1.setTest_point4(cellStr);
			}
		}
		if(j==9){
			if(j==count-1){
				celiangjieguo1.setOil_point(cellStr);
			}else {
				celiangjieguo1.setTest_point5(cellStr);
			}
		}
		if(j==10){
			if(j==count-1){
				celiangjieguo1.setOil_point(cellStr);
			}else {
				celiangjieguo1.setTest_point6(cellStr);
			}
		}
		if(j==11){
			if(j==count-1){
				celiangjieguo1.setOil_point(cellStr);
			}else {
				celiangjieguo1.setTest_point7(cellStr);
			}
		}
		if(j==12){
			if(j==count-1){
				celiangjieguo1.setOil_point(cellStr);
			}else {
				celiangjieguo1.setTest_point8(cellStr);
			}
		}
		if(j==13){
				celiangjieguo1.setOil_point(cellStr);
		}
		/*
		switch (j) {
		case 5:
			celiangjieguo1.setTest_point1(cellStr);
			break;
		case 6:
			celiangjieguo1.setTest_point2(cellStr);
			break;
		case 7:
			celiangjieguo1.setTest_point3(cellStr);
			break;
		case 8:
			celiangjieguo1.setTest_point4(cellStr);
			break;
		case 9:
			celiangjieguo1.setTest_point5(cellStr);
			break;
		case 10:
			celiangjieguo1.setTest_point6(cellStr);
			break;
		case 11:
			celiangjieguo1.setOil_point(cellStr);
			break;
		}
		*/
		return celiangjieguo1;
	}
	public List<Celiangtubiao> findCeliangtubiao( Celiangjieguo celiangjieguo){
		return celiangjieguoDao.findCeliangtubiao(celiangjieguo);
	}
	public List<Celiangjieguo> findCeliangjieguo1( Celiangjieguo celiangjieguo){
		return celiangjieguoDao.findCeliangjieguo1(celiangjieguo);
	}
	public List<Celiangjieguo> findCeliangjieguo2( Celiangjieguo celiangjieguo){
		return celiangjieguoDao.findCeliangjieguo2(celiangjieguo);
	}
	public List<Celiangjieguo> findCeliangjieguo3( Celiangjieguo celiangjieguo){
		return celiangjieguoDao.findCeliangjieguo3(celiangjieguo);
	}
	public List<Celiangjieguo> findCeliangjieguo4( Celiangjieguo celiangjieguo){
		return celiangjieguoDao.findCeliangjieguo4(celiangjieguo);
	}
	public void delce(Celiangtubiao celiangtubiao){
		celiangjieguoDao.delce(celiangtubiao);
		celiangjieguoDao.delce1(celiangtubiao);
	}
}
