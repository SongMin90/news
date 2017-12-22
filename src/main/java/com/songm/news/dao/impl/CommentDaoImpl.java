package com.songm.news.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.songm.news.dao.CommentDao;
import com.songm.news.model.Comment;

public class CommentDaoImpl extends BaseDaoImpl<Comment> implements CommentDao {

	@SuppressWarnings("unchecked")
	public Integer findAllCount_ByUserId(Integer user_comment_id) {
		try {
			List<Object> list = (List<Object>) this.getHibernateTemplate().find("select count(*) from Comment where user_comment_id=?", user_comment_id);
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
	public List<Comment> findPage_ByUserId(Integer begin, Integer page_size, Integer user_comment_id) {
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(Comment.class);
			criteria.add(Restrictions.eq("user.user_id", user_comment_id));
			return (List<Comment>) this.getHibernateTemplate().findByCriteria(criteria, begin, page_size);
		} catch (Exception e) {
			e.getStackTrace();			
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public Integer findAllCommentCount_ByNewsId(Integer news_id) {
		try {
			List<Object> list = (List<Object>) this.getHibernateTemplate().find("select count(*) from Comment where news_comment_id=?", news_id);
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
	public List<Comment> findAllComment_OrderByNewsId(Integer begin, Integer page_size, Integer news_id) {
		try {
			DetachedCriteria criteria = DetachedCriteria.forClass(Comment.class);
			criteria.add(Restrictions.eq("news.news_id", news_id));
			return (List<Comment>) this.getHibernateTemplate().findByCriteria(criteria, begin, page_size);
		} catch (Exception e) {
			e.getStackTrace();			
		}
		return null;
	}

}
