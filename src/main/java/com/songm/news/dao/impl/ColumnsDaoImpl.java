package com.songm.news.dao.impl;

import java.util.List;

import com.songm.news.dao.ColumnsDao;
import com.songm.news.model.Columns;

public class ColumnsDaoImpl extends BaseDaoImpl<Columns> implements ColumnsDao {

	@SuppressWarnings("unchecked")
	public Object findByName(String columns_name) {
		try {
			List<Columns> list = (List<Columns>) this.getHibernateTemplate().find("from Columns where columns_name=?", columns_name);
			if(list != null && list.size() > 0) {
				return list.get(0);
			}
			return null;
		} catch (Exception e) {
			e.getStackTrace();		
		}
		return null;
	}

}
