package com.songm.news.dao.impl;

import java.util.List;

import com.songm.news.dao.ImagesDao;
import com.songm.news.model.Images;

public class ImagesDaoImpl extends BaseDaoImpl<Images> implements ImagesDao {

	@SuppressWarnings("unchecked")
	public List<Images> findAll_SysImages(Integer images_classification) {
		try {
			return (List<Images>) this.getHibernateTemplate().find("from Images where images_classification=?", images_classification);
		} catch (Exception e) {
			e.getStackTrace();			
		}
		return null;
	}

}
