package com.songm.news.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.songm.news.dao.BeforeDao;
import com.songm.news.model.News;

public class BeforeDaoImpl extends HibernateDaoSupport implements BeforeDao {

	@SuppressWarnings("unchecked")
	public Integer findAllCount_ByColumns(Integer columns_news_id) {
		try {
			List<Object> list = (List<Object>) this.getHibernateTemplate().find("select count(*) from News where columns_news_id=?", columns_news_id);
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
	public List<News> findAllNews_ByColumns(Integer begin, Integer page_size, Integer columns_news_id) {
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(News.class);
			criteria.add(Restrictions.eq("columns.columns_id", columns_news_id));
			criteria.addOrder(Order.desc("news_id"));
			return (List<News>) this.getHibernateTemplate().findByCriteria(criteria, begin, page_size);
		} catch (Exception e) {
			e.getStackTrace();		
		}
		return null;
	}

	public News findNews_Byid(Integer news_id) {
		try {
			News news = this.getHibernateTemplate().get(News.class, news_id);
			//浏览次数加一
			news.setNews_ctr(news.getNews_ctr()+1);
			this.getHibernateTemplate().update(news);
			return news;
		} catch (Exception e) {
			e.getStackTrace();
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public Integer findAllCount() {
		try {
			List<Object> list = (List<Object>) this.getHibernateTemplate().find("select count(*) from News");
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
	public List<News> findAllNews_OrderBy(Integer begin, Integer page_size) {
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(News.class);
			criteria.addOrder(Order.desc("news_id"));
			return (List<News>) this.getHibernateTemplate().findByCriteria(criteria, begin, page_size);
		} catch (Exception e) {
			e.getStackTrace();		
		}
		return null;
	}

}
