package com.songm.news.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class FileHelper {

	/**
	 * 创建新文件
	 * 
	 * @param path
	 *            文件路径
	 * @return true,false
	 */
	public boolean create(String path) {
		File file = new File(path);
		if (!file.exists()) {
			try {
				file.createNewFile();
				return true;
			} catch (IOException e) {
				e.getStackTrace();
			}
		}
		return false;
	}

	/**
	 * 保存(覆盖)内容(随机写入，中文可能会有乱码)
	 * 
	 * @param path
	 *            文件路径
	 * @param content
	 *            需要写入的内容
	 * @return true,false
	 */
	public static boolean write0(String path, String content) {
		try {
			RandomAccessFile raf = new RandomAccessFile(path, "rw");
			try {
				raf.seek(0);
				raf.write(content.getBytes());
				raf.close();
				return true;
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 保存(追加)内容(随机写入)
	 * 
	 * @param path
	 *            文件路径
	 * @param content
	 *            需要写入的内容
	 * @return true,false
	 */
	public static boolean write1(String path, String content) {
		try {
			RandomAccessFile raf = new RandomAccessFile(path, "rw");
			try {
				raf.seek(raf.length());
				raf.write(content.getBytes()); // getBytes()解决乱码
				raf.close();
				return true;
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 保存(覆盖)内容，解决中文乱码
	 * 
	 * @param path
	 *            文件路径
	 * @param content
	 *            需要写入的内容
	 * @return true,false
	 */
	public static boolean writeUTF8(String path, String content) {
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(path);
			OutputStreamWriter osw;
			try {
				osw = new OutputStreamWriter(fos, "UTF-8");
				try {
					osw.write(content);
					osw.flush();
					osw.close();
					return true;
				} catch (IOException e) {
					e.printStackTrace();
				}
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 读取文件内容(中文可能会乱码)
	 * 
	 * @param path
	 *            文件路径
	 * @return 文件的全部内容，失败返回null
	 */
	public static String read(String path) {
		File file = new File(path);
		try {
			Reader reader = new InputStreamReader(new FileInputStream(file));
			int read;
			String str = "";
			try {
				while ((read = reader.read()) != -1) {
					// 屏蔽掉\r，避免多出很多空行
					if (((char) read) != '\r') {
						str += (char) read;
					}
				}
				reader.close();
				return str;
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 读取文件内容(解决中文乱码)
	 * 
	 * @param fileName
	 *            文件路径
	 * @return 文件的全部内容，失败返回null
	 */
	public static String readUTF8(String fileName) {
		String encoding = "UTF-8";
		File file = new File(fileName);
		Long filelength = file.length();
		byte[] filecontent = new byte[filelength.intValue()];
		try {
			FileInputStream in = new FileInputStream(file);
			in.read(filecontent);
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			return new String(filecontent, encoding);
		} catch (UnsupportedEncodingException e) {
			System.err.println("The OS does not support " + encoding);
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 将map.toString后的串反转成map
	 * 
	 * @param singInfo
	 *            需要转换的字符串
	 * @return 返回map，失败返回null
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static Map stringToMap(String singInfo) {
		String str1 = singInfo.replaceAll("\\{|\\}", "");
		String str2 = str1.replaceAll(" ", "");
		String str3 = str2.replaceAll(",", "&");

		Map<String, String> map = null;
		try {
			if ((null != str3) && (!"".equals(str3.trim()))) {
				String[] resArray = str3.split("&");
				if (0 != resArray.length) {
					map = new HashMap(resArray.length);
					for (String arrayStr : resArray) {
						if ((null != arrayStr) && (!"".equals(arrayStr.trim()))) {
							int index = arrayStr.indexOf("=");
							if (-1 != index) {
								map.put(arrayStr.substring(0, index), arrayStr.substring(index + 1));
							}
						}
					}
				}
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		return map;
	}

}