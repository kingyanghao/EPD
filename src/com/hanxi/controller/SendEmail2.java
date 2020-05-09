package com.hanxi.controller;

import java.util.Properties;

import javax.mail.Message.RecipientType;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail2 {

public static void main(String[] args) {

try {

//    ArrayList aEmail = SLMsgListMag.getEmail();
//    if (aEmail.size() > 0) {
Properties props = new Properties();
//    props.put("mail.smtp.host", SysPMag.getSysP("smtp_host"));
//    props.put("mail.smtp.auth", SysPMag.getSysP("smtp_auth"));

props.put("mail.smtp.host", "smtp.163.com");
props.put("mail.smtp.auth",true);

Session session = Session.getDefaultInstance(props);

MimeMessage message = new MimeMessage(session);
message.setFrom(new InternetAddress("yangxinghe_it@163.com"));
message.setSubject("测试邮件标题");//邮件标题
message.setText("尊敬的客户，您好：\n    您的*****直接回复至此邮箱。我们收到您的邮件后会尽快为您处理。\n如有任何问题，请致电。感谢您的配合与支持！");//发送内容
message.setSentDate(new java.util.Date(System.currentTimeMillis()));
message.saveChanges();
//    for (int i = 0; i < aEmail.size(); i++) {
//    String[] s = (String[]) aEmail.get(i);
//    if (s != null && s[0] != null) {
message.addRecipient(RecipientType.TO, new InternetAddress("1049232220@qq.com"));
//    }
//    }

Transport transport = session.getTransport("smtp");
transport.connect("smtp.163.com", "yangxinghe_it@163.com", "*******");
transport.sendMessage(message, message.getAllRecipients());
transport.close();
//    }
} catch (Exception e) {
e.printStackTrace();
}
System.out.print("发送邮件结束！");
}

}