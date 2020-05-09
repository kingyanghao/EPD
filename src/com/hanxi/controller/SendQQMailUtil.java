package com.hanxi.controller;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendQQMailUtil {
    
    public static void main(String[] args) throws AddressException,MessagingException, ParseException {
    	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    	Calendar calendar = Calendar.getInstance();
    	calendar.setFirstDayOfWeek(Calendar.MONDAY);
    	calendar.setTime(format.parse("2019-08-13"));
    	 calendar.get(Calendar.WEEK_OF_YEAR);
   System.out.println( calendar.get(Calendar.WEEK_OF_YEAR));
    	
//    	Properties properties = new Properties();
//        properties.put("mail.transport.protocol", "smtp");// 连接协议
//        properties.put("mail.smtp.host", "smtp.qq.com");// 主机名
//        properties.put("mail.smtp.port", 465);// 端口号
//        properties.put("mail.smtp.auth", "true");
//        properties.put("mail.smtp.ssl.enable", "true");// 设置是否使用ssl安全连接 ---一般都使用
//        properties.put("mail.debug", "true");// 设置是否显示debug信息 true 会在控制台显示相关信息
//        // 得到回话对象
//        Session session = Session.getInstance(properties);
//        // 获取邮件对象
//        Message message = new MimeMessage(session);
//        // 设置发件人邮箱地址
//        message.setFrom(new InternetAddress("614839989@qq.com"));
//        // 设置收件人邮箱地址 
//      //  message.setRecipients(Message.RecipientType.TO, new InternetAddress[]{new InternetAddress("571541575@qq.com"),new InternetAddress("571541575@qq.com")});
//        message.setRecipient(Message.RecipientType.TO, new InternetAddress("571541575@qq.com"));//一个收件人
//        // 设置邮件标题
//        message.setSubject("色包");
//        // 设置邮件内容
//        
//        String aa="ascas<br />asdad<br />撒擦市场洒出<br />阿德飒飒的<br /><br />1111<br />11111<br />1111111<br />11111111<br />1111111111<br />zsaaaaaaaa<br />asssssssss<br />assssss";
//        String bb=aa.replaceAll("<br />", "\n                ");
//        System.out.println(bb);
//		String order_placertext_C="亲，您的测试订单已完成，操作人员：work_order3.getOperator(),测试台架：work_order3.getBench_name(),va:work_order3.getVa_no();kb:work_order3.getKb_no();订单时间:scheduling_record1.getScheduling_date() scheduling_record1.getStart_time()-scheduling_record1.getEnd_time();您可以在反馈页面对本次订单进行评价和建议，EPD实验室会认真对待你的评价和建议！";
//		String order_placertext_E="Dear colleague: \n   Your overtime test order has been assigned to operator: Shen Xuefeng,\n   Test bench:CI4000-RAK F7 \n   VA:VA201901111 \n   KB:KB2019002141 \n   Part type:XX \n   Customer/Project:XX \n   Assigned time:Thu Jul 11 00:00:00 CST 2019 9:00-12:00    \n   Remark: "+bb+"   \n \n \n \n   Best regards, \n   RBCD/EPD5 Lab Team";
//		String order_placertext=order_placertext_E;
//        message.setText(order_placertext);
//        
//        // 得到邮差对象
//        Transport transport = session.getTransport();
//        // 连接自己的邮箱账户
//        transport.connect("614839989@qq.com", "iyzcokuqebklbfcc");// 密码为QQ邮箱开通的stmp服务后得到的客户端授权码
//        // 发送邮件
//        transport.sendMessage(message, message.getAllRecipients());
//        transport.close();
    }
}