package com.gt.hunter.portals.common.utils;

import static com.gt.hunter.portals.common.constant.GloabConstant.CODE_ERR_OTHER;
import static com.gt.hunter.portals.common.constant.GloabConstant.CODE_SUCCESS;
import static com.gt.hunter.portals.common.constant.GloabConstant.REP_CODE;
import static com.gt.hunter.portals.common.constant.GloabConstant.REP_DATA;
import static com.gt.hunter.portals.common.constant.GloabConstant.REP_MSG;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

/**
 * 字符串操作公共类
 * @author gtang
 *
 */
public final class Utils {

	public static boolean isEmpty(String s){
		return s == null || "".equals(s.trim());
	}
	
	public static String getUUID() {  
        UUID uuid = UUID.randomUUID();  
        String str = uuid.toString();  
        // 去掉"-"符号  
        String temp = str.substring(0, 8) + str.substring(9, 13) + str.substring(14, 18) + str.substring(19, 23) + str.substring(24);  
        return temp;  
    }  
	
	public static Map<String, Object> success(Map<String, Object> dataMap)
	{
		Map<String, Object> m = new HashMap<String, Object>();
		m.put(REP_CODE, CODE_SUCCESS);
		m.put(REP_MSG, "操作成功！");
		if(dataMap != null)
			m.put(REP_DATA, dataMap);
		return m;
	}
	
	public static <T> Map<String, Object> success(T t)
	{
		Map<String, Object> m = new HashMap<String, Object>();
		m.put(REP_CODE, CODE_SUCCESS);
		m.put(REP_MSG, "操作成功！");
		if(t != null)
			m.put(REP_DATA, t);
		return m;
	}
	
	public static Map<String, Object> failture(String msg)
	{
		Map<String, Object> m = new HashMap<String, Object>();
		m.put(REP_CODE, CODE_ERR_OTHER);
		m.put(REP_MSG, msg);
		return m;
	}
	
	/**
	 * 生成验证码
	 * @return
	 */
	public static String createIdCode()
	{
		Random rand = new Random();
		int n = rand.nextInt(10000);
		while(n <1000)
		{
			n = rand.nextInt(10000);
		}
			
		return  n + "";
	}
	
	/**
	 * 生成随机数（1-9位）
	 * @param digit 位数
	 * @return
	 */
	public static String randNum(int digit)
	{
		if(digit < 1 || digit > 9)
			return "";
		int maxNum = 1;
		for(int i = 0;i < digit;i++)
			maxNum *= 10;
		int minNum = 0;
		if(digit > 1)
			minNum = maxNum/10;
		Random rand = new Random();
		int n = rand.nextInt(maxNum);
		while(n < minNum)
		{
			n = rand.nextInt(maxNum);
		}
		return  n + "";
	}
	
	/**
	 * 获取本机id
	 * @return
	 */
	public static String getLocalIp(){
		InetAddress addr;
		String ip = null;
		try {
			addr = InetAddress.getLocalHost();
			ip =addr.getHostAddress();//获得本机IP
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
//		address=addr.getHostName()toString;//获得本机名称
		return ip;
	}
}
