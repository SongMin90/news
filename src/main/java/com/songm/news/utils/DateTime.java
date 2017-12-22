package com.songm.news.utils;

import java.text.SimpleDateFormat;

public class DateTime {

	/**
	 * 实例：2017年04月22日 16时06分01秒
	 * @return
	 */
	public static String get() {
		SimpleDateFormat chsdate = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
		String datetime = chsdate.format(new java.util.Date());
		return datetime;
	}
	
	/**
	 * 实例：2017_04_22 16_06_01
	 * @return
	 */
	public static String get_US() {
		SimpleDateFormat chsdate = new SimpleDateFormat("yyyy_MM_dd HH_mm_ss");
		String datetime = chsdate.format(new java.util.Date());
		return datetime;
	}
	
	/**
	 * 实例：2017/04/22 16:06:01
	 * @return
	 */
	public static String get1() {
		SimpleDateFormat chsdate = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String datetime = chsdate.format(new java.util.Date());
		return datetime;
	}

}
