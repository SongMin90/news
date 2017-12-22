package com.songm.news.dao.impl;

import java.util.List;

import com.songm.news.dao.UserDao;
import com.songm.news.model.User;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {
	
	@SuppressWarnings("unchecked")
	public User loginCheck(User user) {
		try {
			List<User> list = (List<User>) this.getHibernateTemplate().find("from User where user_name=? and user_password=?", user.getUser_name(), user.getUser_password());
			if(list != null && list.size() > 0) {
				return list.get(0);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.getStackTrace();		
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public User findByName(String user_name) {
		try {
			List<User> list = (List<User>) this.getHibernateTemplate().find("from User where user_name=?", user_name);
			if(list != null && list.size() > 0) {
				return list.get(0);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.getStackTrace();		
		} 
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public User findByEmail(String user_email) {
		try {
			List<User> list = (List<User>) this.getHibernateTemplate().find("from User where user_email=?", user_email);
			if(list != null && list.size() > 0) {
				return list.get(0);
			} else {
				return null;
			}
		} catch (Exception e) {
			e.getStackTrace();	
		} 
		return null;
	}

}
