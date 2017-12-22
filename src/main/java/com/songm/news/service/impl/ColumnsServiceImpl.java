package com.songm.news.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.songm.news.dao.ColumnsDao;
import com.songm.news.model.Columns;
import com.songm.news.service.ColumnsService;

@Transactional
public class ColumnsServiceImpl implements ColumnsService {

	private ColumnsDao columnsDao;
	public void setColumnsDao(ColumnsDao columnsDao) {
		this.columnsDao = columnsDao;
	}

	public Integer addColumns(Columns columns) {
		return columnsDao.save(columns);
	}

	public Columns findByName(String columns_name) {
		return (Columns) columnsDao.findByName(columns_name);
	}

	public List<Columns> findAllColumns() {
		return columnsDao.findAll();
	}

	public boolean deleteById(Integer columns_id) {
		return columnsDao.delete(columnsDao.findById(columns_id));
	}

	public Columns findById(Integer columns_id) {
		return columnsDao.findById(columns_id);
	}

	public boolean updateColumns(Columns columns) {
		return columnsDao.update(columns);
	}
	
	
}
