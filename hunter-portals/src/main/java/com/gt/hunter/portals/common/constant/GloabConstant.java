package com.gt.hunter.portals.common.constant;

import java.util.Properties;

/**
 * 全局常量表
 * @author gtang
 *
 */
public final class GloabConstant {
	
	public static void loadSystemProps(Properties props){
		ENV = props.getProperty("env");
	}
	
	public static String ENV;
	
	/**
	 * 环境
	 */
	public final static String ENV_TEST = "test";
	public final static String ENV_DEV = "dev";
	public final static String ENV_PRODUCT = "product";
	
	/**
	 *  是否 0：是  1：否
	 */
	public final static String YESNO_YES = "0";
	public final static String YESNO_NO = "1";
	
	/**
	 *  有效状态 0：无效 1：有效
	 */
	public final static String STATUS_INVALID = "0";
	public final static String STATUS_EFFECT = "1";
	
	/**
	 * 每页显示数量-通用
	 */
	public final static int PAGESIZE_COMMON = 15;
	
	/**
	 *  验证码类型 0：注册  1：找回密码
	 */
	public final static String CODE_REG = "0";
	public final static String CODE_FINDPASS = "1";
	
	/**
	 *  固定响应参数
	 */
	public final static String REP_CODE = "code";
	public final static String REP_MSG = "msg";
	public final static String REP_DATA = "data";
	
	/**
	 *  响应编码 0：成功  1：参数错误  2：其他错误
	 */
	public final static String CODE_SUCCESS = "0";
	public final static String CODE_ERR_PARAM = "1";
	public final static String CODE_ERR_OTHER = "2";

	/**
	 * 用户类型  0：管理员  1：普通用户 2:公司
	 */
	public final static String USER_TYPE_ADMIN = "0";
	public final static String USER_TYPE_NORMAL = "1";
	public final static String USER_TYPE_COMPANY = "2";
	
	/**
	 * 登陆类型 0:普通 1:微信
	 */
	public final static String LOGIN_TYPE_NORMAL = "0";
	public final static String LOGIN_TYPE_WC = "1";
	
	/**
	 * 课程类型 0:免费 1:收费
	 */
	public final static String COURSE_TYPE_0 = "0";
	public final static String COURSE_TYPE_1 = "1";
	
	/**
	 * 公共代码分组
	 */
	public final static String GROUP_DEGREE = "DEGREE";
	public final static String GROUP_WORK_NATURE = "WORK_NATURE";
	public final static String GROUP_EXPERIENCE = "EXPERIENCE";
	
	/**
	 * 文件系统根目录 
	 */
	public final static String ROOT_DIR = "/home/offering/images/";
}
