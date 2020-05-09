package com.hanxi.util;

import java.util.HashMap;
import java.util.Map;

public class SessionSave {
	private static Map<String, String> SessionIdSave = new HashMap<String,String>();
 
	public static Map<String, String> getSessionIdSave() {
		return SessionIdSave;
	}
 
	public static void setSessionIdSave(Map<String, String> sessionIdSave) {
		SessionIdSave = sessionIdSave;
	}
	
	public static String Text2Html(String str) {
		if (str == null) {
		return "";
		}else if (str.length() == 0) {
		return "";
		}
		str = str.replaceAll("\n", "<br />");
	//	str = str.replaceAll("\r", "<br />");//这个有时候用不上以防万一
		return str;
		}

		//回显到textarea
		public static String HtmlToText(String str) {
		if (str == null) {
		return "";
		}else if (str.length() == 0) {
		return "";
		}
		str = str.replaceAll("<br />", "\n");
	//	str = str.replaceAll("<br />", "\r");    
		return str;
		}
	
}
