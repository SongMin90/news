package com.songm.news.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import com.songm.news.dao.NewsDao;
import com.songm.news.model.News;

public class NewsDaoImpl extends BaseDaoImpl<News> implements NewsDao {

	@SuppressWarnings("unchecked")
	public Integer findAllCount_ByUserId(Integer user_news_id) {
		try {
			List<Object> list = (List<Object>) this.getHibernateTemplate().find("select count(*) from News where user_news_id=?", user_news_id);
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
	public List<News> findPage_ByUserId(Integer begin, Integer page_size, Integer user_news_id) {
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(News.class);
			criteria.add(Restrictions.eq("user.user_id", user_news_id));
			return (List<News>) this.getHibernateTemplate().findByCriteria(criteria, begin, page_size);
		} catch (Exception e) {
			e.getStackTrace();			
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public Integer searchNewsCount(String search_content) {
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(News.class);
			criteria.add(
					Restrictions.or(
						Restrictions.like("news_datetime", search_content, MatchMode.ANYWHERE)
						,Restrictions.like("news_title", search_content, MatchMode.ANYWHERE)
						,Restrictions.like("news_content", search_content, MatchMode.ANYWHERE)
					)
				);	
			criteria.setResultTransformer(DetachedCriteria.DISTINCT_ROOT_ENTITY); //去除重复数据
			criteria.setProjection(Projections.rowCount());
			List<News> list = (List<News>) this.getHibernateTemplate().findByCriteria(criteria);
			Object obj = list.get(0);
			Long lobj = (Long) obj;
			return lobj.intValue();
		} catch (Exception e) {
			e.getStackTrace();			
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<News> searchNews(Integer begin, Integer page_size, String search_content) {
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(News.class);
			criteria.add(
						Restrictions.or(
							Restrictions.like("news_datetime", search_content, MatchMode.ANYWHERE)
							,Restrictions.like("news_title", search_content, MatchMode.ANYWHERE)
							,Restrictions.like("news_content", search_content, MatchMode.ANYWHERE)
						)
					);
			criteria.setResultTransformer(DetachedCriteria.DISTINCT_ROOT_ENTITY); //去除重复数据
			return (List<News>) this.getHibernateTemplate().findByCriteria(criteria, begin, page_size);
		} catch (Exception e) {
			e.getStackTrace();			
		}
		return null;
	}

}
