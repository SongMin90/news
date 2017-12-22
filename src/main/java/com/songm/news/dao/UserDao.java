package com.songm.news.dao;

import com.songm.news.model.User;

public interface UserDao extends BaseDao<User> {
	
	/**
	 * loginCheck
	 * @param user
	 * @return
	 */
	public User loginCheck(User user);
	
	/**
	 * findByName
	 * @param user_name
	 * @return
	 */
	public User findByName(String user_name);
	
	/**
	 * findByEmail
	 * @param user_email
	 * @return
	 */
	public User findByEmail(String user_email);

}
