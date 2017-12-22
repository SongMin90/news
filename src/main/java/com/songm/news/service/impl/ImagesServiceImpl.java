package com.songm.news.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.transaction.annotation.Transactional;

import com.songm.news.dao.ImagesDao;
import com.songm.news.model.Images;
import com.songm.news.service.ImagesService;
import com.songm.news.utils.ChineseToPinYin;
import com.songm.news.utils.Constants;
import com.songm.news.utils.DateTime;

@Transactional
public class ImagesServiceImpl implements ImagesService {
	
	private Images images;
	private File file;
	
	private ImagesDao imagesDao;
	public void setImagesDao(ImagesDao imagesDao) {
		this.imagesDao = imagesDao;
	}

	public Integer addImages(String uploadFileName, File upload, int classification) {
		String images_name = ChineseToPinYin.getPingYin(uploadFileName);//将名字中的中文转化为拼音
		images_name = DateTime.get_US() + "@" + images_name;//名字加上时间防止覆盖
		boolean isUpload = false;//表示上传图片是否成功
		//0、系统图片 1、用户头像 2、新闻配图
		String temp = null;
		String images_title = null;
		switch (classification) {
		case 0:
			temp = "images/sys/";
			images_title = "系统图片";
			break;
		case 1:
			temp = "images/user/";
			images_title = "用户头像";
			break;
		case 2:
			temp = "images/news/";
			images_title = "新闻配图";
			break;
		case 3:
			temp = "images/upload/";
			images_title = "用户上传";
			break;
		default:
			temp = "images/upload/";
			break;
		}
		file = new File(Constants.PATH + temp + images_name);
		try {
			FileUtils.copyFile(upload, file);
			isUpload = true;
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(isUpload) {
			images_name = temp + images_name;
			images = new Images();
			images.setImages_title(images_title);
			images.setImages_name(images_name);
			images.setImages_datetime(DateTime.get());
			images.setImages_classification(classification);
			return imagesDao.save(images);
		} else {
			return null;
		}
	}

	public Images findById(Integer images_id) {
		return imagesDao.findById(images_id);
	}

	public void deleteImages(Images images, String path) {
		imagesDao.delete(images);
		file = new File(path + images.getImages_name());
		FileUtils.deleteQuietly(file);
	}

	public boolean deleteImagesById(Integer images_id) {
		boolean temp = false;
		images = imagesDao.findById(images_id);
		if(images != null) {
			if(imagesDao.delete(images)) {
				file = new File(Constants.PATH + images.getImages_name());
				if(file.exists()) {
					FileUtils.deleteQuietly(file);
				}
				temp = true;
			}
		}
		return temp;
	}

	public List<Images> findAllByC_(Integer images_classification) {
		return imagesDao.findAll_SysImages(images_classification);
	}

	public boolean updateSysImg(Images images) {
		boolean isOk = false;
		String images_name_new = "" + images.getImages_name();
		images = imagesDao.findById(images.getImages_id());	
		if(images_name_new != null && images != null) {
			//删除原图片
			try {
				String images_name_old = images.getImages_name();
				file = new File(Constants.PATH + images_name_old);
				if(file.exists()) {
					FileUtils.deleteQuietly(file);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			//复制新图片
			File file_new = new File(Constants.PATH + images_name_new);
			if(file_new.exists()) {
				try {
					FileUtils.copyFile(file_new, file);
					isOk = true;
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return isOk;
	}
}
