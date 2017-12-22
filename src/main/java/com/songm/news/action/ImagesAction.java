package com.songm.news.action;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.songm.news.model.Images;
import com.songm.news.service.ImagesService;
import com.songm.news.utils.Constants;

public class ImagesAction extends ActionSupport implements ModelDriven<Images> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5811890103319356839L;

	private Images images = new Images();
	public Images getModel() {
		return images;
	}
	
	private ImagesService imagesService;
	public void setImagesService(ImagesService imagesService) {
		this.imagesService = imagesService;
	}
	
	private File upload;
	private String uploadFileName;
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	private String[] messages = {"message", "forward"};
	public String[] getMessages() {
		return messages;
	}
	
	private InputStream inputStream;
    public InputStream getInputStream() {
        return inputStream;
    }
	
	/**
	 * 页面跳转操作
	 */
	//跳转到edit.jsp
	public String toEdit() {
		List<Images> list = imagesService.findAllByC_(images.getImages_classification());
		Integer images_id = images.getImages_id();
		if(images_id != null) {
			ActionContext.getContext().put("images_id", images_id);
		}
		ActionContext.getContext().put("allImages", list);
		return Constants.TO_EDIT;
	}
	
	/**
	 * 管理员操作
	 */
	//取到所有图片
	public String findAll() {
		List<Images> list = imagesService.findAllByC_(images.getImages_classification());//images_classification为0是系统图片
		ActionContext.getContext().put("allImages", list);
		return Constants.FIND_ALL;
	}
	//上传图片
	public String upload() {
		messages[0] = "上传失败!";
		messages[1] = "javascript:history.go(-1);location.replace(document.referrer)";//返回上一个页面，并刷新
		if(upload != null) {
			if(imagesService.addImages(uploadFileName, upload, 3) != null) {
				messages[0] = "上传成功!";
			}
		}
		return Constants.MESSAGES;
	}
	//更新系统图片
	public String update() throws UnsupportedEncodingException {
		if(imagesService.updateSysImg(images)) {
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
		} else {
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		}
		return Constants.AJAX_CHECK;
	}
	//删除上传的图库
	public String delete() throws UnsupportedEncodingException {
		if(imagesService.deleteImagesById(images.getImages_id())) {
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
		} else {
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		}
		return Constants.AJAX_CHECK;
	}
	//新闻配图上传
	public String uploadNewsImage() throws UnsupportedEncodingException {
		Map<String, Object> map = new HashMap<String, Object>();
		Integer images_id = imagesService.addImages("."+uploadFileName.split("\\.")[1], upload, 2);
	    if(images_id != null) {
	    	map.put("success", 1);
			map.put("url", imagesService.findById(images_id).getImages_name());
		} else {
			map.put("success", 0);
		}
		inputStream = new ByteArrayInputStream(Constants.getJson(map).getBytes("UTF-8"));
		return Constants.AJAX_CHECK;
	}
	
}
