package com.songm.news.dao;

import java.util.List;

import com.songm.news.model.Images;

public interface ImagesDao extends BaseDao<Images> {

	/**
	 * findAll_SysImages
	 * @return
	 */
	public List<Images> findAll_SysImages(Integer images_classification);
	
}
