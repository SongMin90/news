package com.songm.news.utils;

import java.io.File;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.taskdefs.Expand;
import org.apache.tools.ant.taskdefs.Zip;
import org.apache.tools.ant.types.FileSet;

/**
 * 压缩与解压
 * @author SongM
 *
 */
public class VCLZIP {

	public final static String encoding = "UTF-8";

    /**
     * 压缩文件和文件夹
     * 
     * @param srcPathname 需要被压缩的文件或文件夹路径
     * @param zipFilepath 将要生成的zip文件路径
     * @throws BuildException
     * @throws RuntimeException
     */
    public static boolean zip(String srcPathname, String zipFilepath) {
    	try {
	        File file = new File(srcPathname);
	        if (!file.exists()) {
	            throw new RuntimeException("source file or directory " + srcPathname + " does not exist.");
	        }
	
	        Project proj = new Project();
	        FileSet fileSet = new FileSet();
	        fileSet.setProject(proj);
	        // 判断是目录还是文件
	        if (file.isDirectory()) {
	            fileSet.setDir(file);
	            // ant中include/exclude规则在此都可以使用
	            // 比如:
	            // fileSet.setExcludes("**/*.txt");
	            // fileSet.setIncludes("**/*.xls");
	        } else {
	            fileSet.setFile(file);
	        }
	
	        Zip zip = new Zip();
	        zip.setProject(proj);
	        zip.setDestFile(new File(zipFilepath));
	        zip.addFileset(fileSet);
	        zip.setEncoding(encoding);
	        zip.execute();
	        
	        System.out.println("compress successed.");
	        return true;
    	} catch (Exception e) {
			e.getStackTrace();
		}
    	return false;
    }

    /**
     * 解压缩文件和文件夹
     * 
     * @param zipFilepath 需要被解压的zip文件路径
     * @param destDir 将要被解压到哪个文件夹
     * @throws BuildException
     * @throws RuntimeException
     */
    public static boolean unzip(String zipFilepath, String destDir) {
    	try {
	        if (!new File(zipFilepath).exists()) {
	            throw new RuntimeException("zip file " + zipFilepath + " does not exist.");
	        }
	
	        Project proj = new Project();
	        Expand expand = new Expand();
	        expand.setProject(proj);
	        expand.setTaskType("unzip");
	        expand.setTaskName("unzip");
	        expand.setEncoding(encoding);
	
	        expand.setSrc(new File(zipFilepath));
	        expand.setDest(new File(destDir));
	        expand.execute();
	        
	        System.out.println("uncompress successed.");
	        return true;
    	} catch (Exception e) {
    		e.getStackTrace();
		}
    	return false;
    }
}