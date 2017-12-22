package com.songm.news.utils;

import java.math.BigInteger;
import java.security.MessageDigest;

public class MD5 {

	public String get(String str) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
			return new BigInteger(1, md.digest()).toString(16);
		} catch (Exception e) {
			return e.getMessage();
		}
	}

}