package com.songm.news.dao;

import com.songm.news.model.Columns;

public interface ColumnsDao extends BaseDao<Columns> {

	/**
	 * findByName
	 * @param columns_name
	 * @return
	 */
	public Object findByName(String columns_name);

}
