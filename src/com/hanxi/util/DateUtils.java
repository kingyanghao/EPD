package com.hanxi.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


/**
 * 日期工具类 by hpf 
 * */
public class DateUtils
{
	
	
	/**
	 * 判断日期是否为周末
	 * @param bDate
	 * @return
	 * @throws ParseException
	 */
	public static boolean isWeekend(String bDate) throws ParseException {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        Date bdate = format1.parse(bDate);
        Calendar cal = Calendar.getInstance();
        cal.setTime(bdate);
        if(cal.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY || cal.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY){
            return true;
        } else{
            return false;
        }
 
 }
	
	 /**
     * 获取指定月份有多多少天
     * @param yeardate（2012-02）
     */
	  public static int getMonthDayFromMonth(String yeardate){

	    	 Set<String> weekEndList = new HashSet<String>();
	        int year = Integer.parseInt(yeardate.substring(0, 4));
	        int month = Integer.parseInt(yeardate.substring(5, 7));
	        Calendar calendar = Calendar.getInstance();
	        calendar.set(year,month-1,1);
	        int days = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
	        return days;
	    }
	 /**
     * 获取指定月份所有的周末日期
     * @param yeardate（2012-02）
     */
    public static Set<String> getWeekEndDayFromMonth(String yeardate){

    	 Set<String> weekEndList = new HashSet<String>();
        int year = Integer.parseInt(yeardate.substring(0, 4));
        int month = Integer.parseInt(yeardate.substring(5, 7));
        Calendar calendar = Calendar.getInstance();
        calendar.set(year,month-1,1);
        int days = calendar.getActualMaximum(Calendar.DAY_OF_MONTH)
               - calendar.get(Calendar.DAY_OF_MONTH);
        while(days>=0){
            calendar.set(year, month-1, days+1);
            int dayindex = calendar.get(Calendar.DAY_OF_WEEK);
            if(1==dayindex||7==dayindex){
                String date = String.valueOf(days+1);
                weekEndList.add(date.length()==2?date:"0"+date);
            }
            days--;
        }

         return weekEndList;
    }
	
	
	
	/**
	 * 获得该月第一天
	 * 
	 * @param year
	 * @param month
	 * @return
	 */
	
	public static String getFirstDayOfMonth(int month) {
	     Calendar cal = Calendar.getInstance();
	     // 设置月份
	     cal.set(Calendar.MONTH, month - 1);
	     // 获取某月最小天数
	     int firstDay = cal.getActualMinimum(Calendar.DAY_OF_MONTH);
	     // 设置日历中月份的最小天数
	     cal.set(Calendar.DAY_OF_MONTH, firstDay);
	     // 格式化日期
	     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	     String firstDayOfMonth = sdf.format(cal.getTime())+" 00:00:00";
	     return firstDayOfMonth;
	 }
	/**
	 * 获得该月最后一天
	 * 
	 * @param year
	 * @param month
	 * @return
	 */
	 public static String getLastDayOfMonth(int month) {
	    Calendar cal = Calendar.getInstance();
	    // 设置月份
	    cal.set(Calendar.MONTH, month - 1);
	    // 获取某月最大天数
	    int lastDay=0;
	   //2月的平年瑞年天数
	   if(month==2) {
	     lastDay = cal.getLeastMaximum(Calendar.DAY_OF_MONTH);
	   }else {
	      lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	   }
	    // 设置日历中月份的最大天数
	     cal.set(Calendar.DAY_OF_MONTH, lastDay);
	    // 格式化日期
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    String lastDayOfMonth = sdf.format(cal.getTime())+" 23:59:59";
	    return lastDayOfMonth;
	 }

	 /**
	  * 获取一年的天数
	  * @param year
	  * @return
	  */
	 public static int getMaxDaysOfYear(int year) {
		 Calendar cal = Calendar.getInstance();
		 cal.set(Calendar.YEAR, year);
		 return cal.getActualMaximum(Calendar.DAY_OF_YEAR);
		 }
	/**
	 * 获取一年中的所有的周六，周日
	 * @param year
	 * @return
	 */
	public static Set<String> getYearDoubleWeekend(int year){
		 Set<String> listDates = new HashSet<String>();
		 Calendar calendar=Calendar.getInstance();//当前日期
		  calendar.set(year, 6, 1);
		  Calendar nowyear=Calendar.getInstance();
		  Calendar nexty=Calendar.getInstance();
		  nowyear.set(year, 0, 1);//2010-1-1
		  nexty.set(year+1, 0, 1);//2011-1-1
		  calendar.add(Calendar.DAY_OF_MONTH, -calendar.get(Calendar.DAY_OF_WEEK));//周六
		  Calendar c=(Calendar) calendar.clone();
		 for(;calendar.before(nexty)&&calendar.after(nowyear);calendar.add(Calendar.DAY_OF_YEAR, -7)){
			  listDates.add(calendar.get(Calendar.YEAR)+"-"+(1+calendar.get(Calendar.MONTH))+"-"+calendar.get(Calendar.DATE));
			  listDates.add(calendar.get(Calendar.YEAR)+"-"+(1+calendar.get(Calendar.MONTH))+"-"+(1+calendar.get(Calendar.DATE)));
		  }
		for(;c.before(nexty)&&c.after(nowyear);c.add(Calendar.DAY_OF_YEAR, 7)){
			 listDates.add(c.get(Calendar.YEAR)+"-"+(1+c.get(Calendar.MONTH))+"-"+c.get(Calendar.DATE));
			 listDates.add(c.get(Calendar.YEAR)+"-"+(1+c.get(Calendar.MONTH))+"-"+(1+c.get(Calendar.DATE)));
		  }
		  return listDates;
	 };

	
	
	
	//获取 某日是某年的第几周
	public static int getWeekByDay(String day) throws ParseException  {
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	Calendar calendar = Calendar.getInstance();
	calendar.setFirstDayOfWeek(Calendar.MONDAY);
	calendar.setTime(format.parse(day));
	return calendar.get(Calendar.WEEK_OF_YEAR);
	 }
	
	public static int getYear(String day) throws ParseException{
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(day);
		Calendar ca = Calendar.getInstance();
		ca.setTime(date);
		System.out.println("======="+ca.get(Calendar.YEAR));
		return ca.get(Calendar.YEAR);
	}

	//返回当前月份
	public static int getMonth(String day) throws ParseException
	{
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(day);
		Calendar ca = Calendar.getInstance();
		ca.setTime(date);
		return ca.get(Calendar.MONTH)+1;
	}

	
	
	//返回当前年月日
	String getNowDate()
	{
		Date date = new Date();
		String nowDate = new SimpleDateFormat("yyyy年MM月dd日").format(date);
		return nowDate;
	}

	//返回当前年份
	int getYear()
	{
		Date date = new Date();
		String year = new SimpleDateFormat("yyyy").format(date);
		return Integer.parseInt(year);
	}

	//返回当前月份
	int getMonth()
	{
		Date date = new Date();
		String month = new SimpleDateFormat("MM").format(date);
		return Integer.parseInt(month);
	}

	//判断
	static boolean isLeap(int year)
	{
		if (((year % 100 == 0) && year % 400 == 0) || ((year % 100 != 0) && year % 4 == 0))
			return true;
		else
			return false;
	}

	//返回当月天数
	public static int getDays(int year, int month)
	{
		int days;
		int FebDay = 28;
		if (isLeap(year))
			FebDay = 29;
		switch (month)
		{
			case 1:
			case 3:
			case 5:
			case 7:
			case 8:
			case 10:
			case 12:
				days = 31;
				break;
			case 4:
			case 6:
			case 9:
			case 11:
				days = 30;
				break;
			case 2:
				days = FebDay;
				break;
			default:
				days = 0;
				break;
		}
		return days;
	}

	//返回当月星期天数
	int getSundays(int year, int month)
	{
		int sundays = 0;
		SimpleDateFormat sdf = new SimpleDateFormat("EEEE");
		Calendar setDate = Calendar.getInstance();
		//从第一天开始
		int day;
		for (day = 1; day <= getDays(year, month); day++)
		{
			setDate.set(Calendar.DATE, day);
			String str = sdf.format(setDate.getTime());
			if (str.equals("星期日"))
			{
				sundays++;
			}
		}
		return sundays;
	}
	
	
	// 获取当前时间所在年的最大周数
		public static int getMaxWeekNumOfYear(int year) {
			Calendar c = new GregorianCalendar();
			c.set(year, Calendar.DECEMBER, 31, 23, 59, 59);

			return getWeekOfYear(c.getTime());
		}
		// 获取当前时间所在年的周数
		public static int getWeekOfYear(Date date) {
			Calendar c = new GregorianCalendar();
			c.setFirstDayOfWeek(Calendar.MONDAY);
			c.setMinimalDaysInFirstWeek(7);
			c.setTime(date);

			return c.get(Calendar.WEEK_OF_YEAR);
		}
		/**
		 * 获取本周的第几天。星期一开始
		 * @return
		 */
		public static String getWeekStart(int num){
			Calendar cal=Calendar.getInstance();
//			System.out.println(Calendar.WEEK_OF_MONTH-1);
//			System.out.println(Calendar.DAY_OF_WEEK);
			cal.add(Calendar.WEEK_OF_MONTH, 0);
			 cal.setFirstDayOfWeek(Calendar.MONDAY); 
			cal.set(Calendar.DAY_OF_WEEK, num+1);
			Date time=cal.getTime();
			return new SimpleDateFormat("yyyy-MM-dd").format(time);
		}

		//返回星期机
		public static String getWeek(String day) throws ParseException{
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(day);
		SimpleDateFormat dateFm = new SimpleDateFormat("EEEE");
		String currSun = dateFm.format(date);
		System.out.println(currSun);

			return currSun;
		}

	public static void main(String[] args)
	{
		DateUtils du = new DateUtils();
		System.out.println("今天日期是：" + du.getNowDate());
		System.out.println("本月有" + du.getDays(du.getYear(), du.getMonth()) + "天");
		System.out.println("本月有" + du.getSundays(du.getYear(), du.getMonth()) + "个星期天");
		
		System.out.println("本周日期是：" + getWeekStart(7));
	}
	
	public static String getWeekByDate(Date time,Integer num) {  
		  
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // 设置时间格式  
        Calendar cal = Calendar.getInstance();  
        cal.setTime(time);  
        // 判断要计算的日期是否是周日，如果是则减一天计算周六的，否则会出问题，计算到下一周去了  
        int dayWeek = cal.get(Calendar.DAY_OF_WEEK);// 获得当前日期是一个星期的第几天  
        if (1 == dayWeek) {  
            cal.add(Calendar.DAY_OF_MONTH, -1);  
        }  
        System.out.println("要计算日期为:" + sdf.format(cal.getTime())); // 输出要计算日期  
        cal.setFirstDayOfWeek(Calendar.MONDAY);// 设置一个星期的第一天，按中国的习惯一个星期的第一天是星期一  
        int day = cal.get(Calendar.DAY_OF_WEEK);// 获得当前日期是一个星期的第几天  
        cal.add(Calendar.DATE, cal.getFirstDayOfWeek() - day);// 根据日历的规则，给当前日期减去星期几与一个星期第一天的差值  
        String imptimeBegin = sdf.format(cal.getTime());  
        System.out.println("所在周星期一的日期：" + imptimeBegin);  
        cal.add(Calendar.DATE, num);  
        String imptimeMi = sdf.format(cal.getTime());  
        System.out.println("所在周星期"+num+"的日期：" + imptimeMi);  
  
        return imptimeMi;
  
    }  
}
