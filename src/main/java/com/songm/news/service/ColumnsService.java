package com.songm.news.service;

import java.util.List;

import com.songm.news.model.Columns;

public interface ColumnsService {

	/**
	 * 新增栏目，成功返回columns_id，失败返回null
	 * @param columns
	 */
	public Integer addColumns(Columns columns);

	/**
	 * 通过栏目名称查找，失败返回null
	 * @param columns_name
	 * @return
	 */
	public Columns findByName(String columns_name);

	/**
	 * 取出所有栏目，没有或失败返回null
	 * @return
	 */
	public List<Columns> findAllColumns();

	/**
	 * 通过id删除栏目，成功返回true，失败返回false
	 * @param columns_id
	 * @return
	 */
	public boolean deleteById(Integer columns_id);

	/**
	 * findById，成功返回columns，失败返回null
	 * @param columns_id
	 * @return
	 */
	public Columns findById(Integer columns_id);

	/**
	 * 更新栏目，成功返回true，失败返回false
	 * @param columns
	 * @return
	 */
	public boolean updateColumns(Columns columns);
	
}
