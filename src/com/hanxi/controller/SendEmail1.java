package com.hanxi.controller;
import java.util.*;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.*;

 
public class SendEmail1
{
   public static void main(String [] args) throws AddressException, MessagingException
   {   
      // 收件人电子邮箱
      String to = "614839989@qq.com";
 
      // 发件人电子邮箱
      String from = "ova8683@dingtalk.com";
 
      // 指定发送邮件的主机为 localhost
      String host = "25";
 
    /*  // 获取系统属性
      Properties properties = System.getProperties();
 
      // 设置邮件服务器
      properties.setProperty("rb-smtp-int.bosch.com", "25");*/
  	Properties properties = new Properties();
    properties.put("mail.transport.protocol", "smtp");// 连接协议
    properties.put("mail.smtp.host", "smtp.qq.com");// 主机名
    properties.put("mail.smtp.port", 465);// 端口号
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.ssl.enable", "true");// 设置是否使用ssl安全连接 ---一般都使用
    //properties.put("mail.debug", "true");// 设置是否显示debug信息 true 会在控制台显示相关信息
      // 获取默认session对象
      Session session = Session.getDefaultInstance(properties);
 
    	  
          // 获取邮件对象
          Message message = new MimeMessage(session);
          // 设置发件人邮箱地址
          message.setFrom(new InternetAddress("ova8683@dingtalk.com"));
          // 设置收件人邮箱地址 
          message.setRecipients(Message.RecipientType.TO, new InternetAddress[]{new InternetAddress("614839989@qq.com"),new InternetAddress("614839989@qq.com"),new InternetAddress("614839989@qq.com")});
          //message.setRecipient(Message.RecipientType.TO, new InternetAddress("xxx@qq.com"));//一个收件人
          // 设置邮件标题
          message.setSubject("测试");
          // 设置邮件内容
          message.setText("这是一封测试邮件");
          // 得到邮差对象
          Transport transport = session.getTransport();
         
          // 发送邮件
          transport.sendMessage(message, message.getAllRecipients());
          transport.close();
   }
}