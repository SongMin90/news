package com.songm.news.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.songm.news.dao.BaseDao;

public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T> {

	@SuppressWarnings("rawtypes")
	private Class pClass;
	
	//取到class
	@SuppressWarnings("rawtypes")
	public BaseDaoImpl() {
		Class clazz = this.getClass();
		Type type = clazz.getGenericSuperclass();
		ParameterizedType pType = (ParameterizedType) type;
		Type[] types = pType.getActualTypeArguments();
		this.pClass = (Class) types[0];
	}
	
	public Integer save(T t) {
		try {
			return (Integer) this.getHibernateTemplate().save(t);
		} catch (Exception e) {
			e.getStackTrace();		
		}
		return null;
	}

	public boolean delete(T t) {
		try {
			this.getHibernateTemplate().delete(t);
			return true;
		} catch (Exception e) {
			e.getStackTrace();		
		}
		return false;
	}

	public boolean update(T t) {
		try {
			this.getHibernateTemplate().update(t);
			return true;
		} catch (Exception e) {
			e.getStackTrace();		
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	public T findById(Integer id) {
		try {
			return (T) this.getHibernateTemplate().get(pClass, id);
		} catch (Exception e) {
			e.getStackTrace();			
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		try {
			return (List<T>) this.getHibernateTemplate().find("from "+pClass.getSimpleName());
		} catch (Exception e) {
			e.getStackTrace();		
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public Integer findAllCount() {
		try {
			List<Object> list = (List<Object>) this.getHibernateTemplate().find("select count(*) from "+pClass.getSimpleName());
			if(list != null && list.size() > 0) {
				Object obj = list.get(0);
				Long lobj = (Long) obj;
				return lobj.intValue();
			} else {
				return 0;
			}
		} catch (Exception e) {
			e.getStackTrace();			
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<T> findPage(Integer begin, Integer page_size) {
		try {
			return (List<T>) this.getHibernateTemplate().findByCriteria(DetachedCriteria.forClass(pClass), begin, page_size);
		} catch (Exception e) {
			e.getStackTrace();		
		}
		return null;
	}

	@Override
	public boolean batchDelete(List<T> list) {
		try {
			this.getHibernateTemplate().deleteAll(list);
			return true;
		} catch (Exception e) {
			e.getStackTrace();	
		}
		return false;
	}

}
