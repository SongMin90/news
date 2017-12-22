package com.songm.news.utils;

import org.apache.tools.ant.Project;  
import org.apache.tools.ant.taskdefs.SQLExec;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

public class MySQLDatabase {  
	  
    /** 
     * Java代码实现MySQL数据库导出 
     *  
     * @author GaoHuanjie 
     * @param hostIP MySQL数据库所在服务器地址IP 
     * @param userName 进入数据库所需要的用户名 
     * @param password 进入数据库所需要的密码 
     * @param savePath 数据库导出文件保存路径 
     * @param fileName 数据库导出文件文件名 
     * @param databaseName 要导出的数据库名 
     * @return 返回true表示导出成功，否则返回false。 
     */  
    public boolean exportDatabaseTool(String hostIP, String userName, String password, String savePath, String fileName, String databaseName) throws InterruptedException {  
        File saveFile = new File(savePath);  
        if (!saveFile.exists()) {// 如果目录不存在  
            saveFile.mkdirs();// 创建文件夹  
        }  
        if(!savePath.endsWith(File.separator)){  
            savePath = savePath + File.separator;  
        }  
          
        PrintWriter printWriter = null;  
        BufferedReader bufferedReader = null;  
        try {  
            printWriter = new PrintWriter(new OutputStreamWriter(new FileOutputStream(savePath + fileName), "utf8"));  
            Process process = Runtime.getRuntime().exec(" mysqldump -h" + hostIP + " -u" + userName + " -p" + password + " --set-charset=UTF8 " + databaseName);  
            InputStreamReader inputStreamReader = new InputStreamReader(process.getInputStream(), "utf8");  
            bufferedReader = new BufferedReader(inputStreamReader);  
            String line;  
            while((line = bufferedReader.readLine())!= null){  
                printWriter.println(line);  
            }  
            printWriter.flush();  
            if(process.waitFor() == 0){//0 表示线程正常终止。  
                return true;  
            }  
        }catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            try {  
                if (bufferedReader != null) {  
                    bufferedReader.close();  
                }  
                if (printWriter != null) {  
                    printWriter.close();  
                }  
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        }  
        return false;  
    }  
    
    /**
     * 导入sql
     * @param ip MySQL数据库所在服务器地址IP 
     * @param dataBaseName 数据库名
     * @param name 登录名
     * @param pwd 密码
     * @param path sql文件路径
     * @return
     */
    public boolean dataBaseImport(String ip, String dataBaseName, String name, String pwd, String path) {
    	try {
	    	String linkStr = "jdbc:mysql://localhost:3306/"+ dataBaseName +"?characterEncoding=utf-8";    	  
	        SQLExec sqlExec = new SQLExec();   
	        sqlExec.setEncoding("UTF-8");    
	        sqlExec.setDriver("com.mysql.jdbc.Driver");     
	        sqlExec.setUrl(linkStr);     
	        sqlExec.setUserid(name);    
	        sqlExec.setPassword(pwd);     
	        sqlExec.setSrc(new File(path)); //sqlPath = SQL文件的路径     
	        sqlExec.setProject(new Project());     
	        sqlExec.execute();
	        return true;
    	} catch (Exception e) {
    		e.getStackTrace();
    		System.out.println("导入失败");
			return false;
		}
    }
    
//    public static void main(String[] args){  
//    	if(new MySQLDatabase().dataBaseImport("127.0.0.1", "news", "root", "sa", "C:\\Users\\SongM\\workspace\\news\\src\\main\\webapp\\..\\resources\\backupDatabase\\2017_04_22 22_37_27.sql")) {
//    		System.out.println("导入成功");
//    	} 
//    }  
}  