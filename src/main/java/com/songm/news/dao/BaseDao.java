package com.songm.news.dao;

import java.util.List;

/**
 * 基本crud和分页查询操作的抽取
 * @author SongM
 *
 * @param <T>
 */
public interface BaseDao<T> {

	public Integer save(T t);
	
	public boolean delete(T t);
	
	public boolean update(T t);
	
	public T findById(Integer id);
	
	public List<T> findAll();
	
	public Integer findAllCount();
	
	public List<T> findPage(Integer begin, Integer page_size);
	
	public boolean batchDelete(List<T> list); 
}
