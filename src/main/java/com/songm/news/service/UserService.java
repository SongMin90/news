package com.songm.news.service;

import java.io.File;
import java.util.List;

import com.songm.news.model.User;
import com.songm.news.model.PageBean;

public interface UserService {
	
	/**
	 * 登录验证，成功返回user，失败返回null
	 * @param user
	 * @return
	 */
	public User loginCheck(User user);
	
	/**
	 * 添加新用户，成功返回user_id，失败返回null
	 * @param user
	 */
	public Integer addUser(User user);
	
	/**
	 * 添加新管理员，成功返回user_id，失败返回null
	 * @param user
	 * @param admin
	 */
	public Integer addUser(User user, boolean admin);
	
	/**
	 * 删除用户，成功返回true，失败返回false
	 * @param user
	 */
	public boolean deleteUser(User user);
	
	/**
	 * 通过user_name查询，成功返回user，失败返回null
	 * @param user_name
	 * @return
	 */
	public User findByName(String user_name);
	
	/**
	 * 通过user_email查询，成功返回user，失败返回null
	 * @param user_email
	 * @return
	 */
	public User findByEmail(String user_email);
	
	/**
	 * 取到所有user，失败返回null
	 * @return
	 */
	public List<User> findAllUser();
	
	/**
	 * 分页取到所有user，失败返回null
	 * @param current_page
	 * @return
	 */
	public PageBean<User> userListPage(Integer current_page);

	/**
	 * 通过id查找，返回user，失败返回null
	 * @param user_id
	 * @return
	 */
	public User findById(Integer user_id);

	/**
	 * user更新，成功返回true，失败返回false
	 * @param user
	 */
	public boolean userUpdate(User user);
	
	/**
	 * 通过id删除用户，成功返回true，失败返回false
	 * @param user_id
	 * @return
	 */
	public boolean deleteUserById(Integer user_id);

	/**
	 * 更新用户(有图片上传)，成功返回true，失败返回false
	 * @param user
	 * @param uploadFileName
	 * @param upload
	 */
	public boolean updateUser(User user, String uploadFileName, File upload);

	/**
	 * 更新用户(无图片上传)，成功返回true，失败返回false
	 * @param user
	 */
	public boolean updateUser(User user);
	
}
