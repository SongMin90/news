package com.songm.news.service;

import java.io.File;
import java.util.List;

import com.songm.news.model.Images;

public interface ImagesService {

	/**
	 * 添加图片
	 * @param images
	 * @return
	 */
	public Integer addImages(String uploadFileName, File upload, int classification);
	
	/**
	 * 通过id取到图片信息
	 * @param id
	 * @return
	 */
	public Images findById(Integer images_id);
	
	/**
	 * 删除图片
	 * @param images
	 */
	public void deleteImages(Images images, String path);

	/**
	 * 通过id删除图片
	 * @param images_id
	 * @return
	 */
	public boolean deleteImagesById(Integer images_id);

	/**
	 * 通过images_classification找到所有图片，失败返回null
	 * @return
	 */
	public List<Images> findAllByC_(Integer images_classification);

	/**
	 * 更换系统图片，成功返回true，失败返回false
	 * @param images
	 */
	public boolean updateSysImg(Images images);
	
}
