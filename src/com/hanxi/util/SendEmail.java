package com.hanxi.util;
import java.util.*;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.*;

 
public class SendEmail{
   public static String SendEmail(String to,String from,String title,String text){   
      // 收件人电子邮箱
       to = "614839989@qq.com";
 
      // 发件人电子邮箱
       from = "ova8683@dingtalk.com";
 
      // 指定发送邮件的主机为 localhost
      String host = "25";
 
    /*  // 获取系统属性
      Properties properties = System.getProperties();
 
      // 设置邮件服务器
      properties.setProperty("rb-smtp-int.bosch.com", "25");*/
  	Properties properties = new Properties();
    properties.put("mail.transport.protocol", "smtp");// 连接协议
    properties.put("mail.smtp.host", "rb-smtp-int.bosch.com");// 主机名
    properties.put("mail.smtp.port", 25);// 端口号
    properties.put("mail.smtp.auth", "false");
    properties.put("mail.smtp.ssl.enable", "false");// 设置是否使用ssl安全连接 ---一般都使用
    properties.put("mail.debug", "true");// 设置是否显示debug信息 true 会在控制台显示相关信息
      // 获取默认session对象
      Session session = Session.getDefaultInstance(properties);
 
      try{
    	  
          // 获取邮件对象
          Message message = new MimeMessage(session);
          // 设置发件人邮箱地址
          message.setFrom(new InternetAddress(from));
          // 设置收件人邮箱地址 
          message.setRecipients(Message.RecipientType.TO, new InternetAddress[]{new InternetAddress(to),new InternetAddress(to),new InternetAddress(to)});
          //message.setRecipient(Message.RecipientType.TO, new InternetAddress("xxx@qq.com"));//一个收件人
          // 设置邮件标题
          message.setSubject(title);
          // 设置邮件内容
          message.setText(text);
          // 得到邮差对象
          Transport transport = session.getTransport();
         
          // 发送邮件
          transport.sendMessage(message, message.getAllRecipients());
          transport.close();
      }catch (MessagingException mex) {
         mex.printStackTrace();
      }
      return "";
   }
}