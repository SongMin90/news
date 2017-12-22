package com.songm.news.service.impl;

import java.io.File;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import com.songm.news.dao.UserDao;
import com.songm.news.model.User;
import com.songm.news.model.PageBean;
import com.songm.news.service.ImagesService;
import com.songm.news.service.UserService;
import com.songm.news.utils.Constants;
import com.songm.news.utils.DateTime;
import com.songm.news.utils.MyIP;

@Transactional
public class UserServiceImpl implements UserService {

	private UserDao userDao;	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	private PageBean<User> pageBean;
	public void setPageBean(PageBean<User> pageBean) {
		this.pageBean = pageBean;
	}

	private ImagesService imagesService;
	public void setImagesService(ImagesService imagesService) {
		this.imagesService = imagesService;
	}

	public User loginCheck(User user) {
		User u = userDao.findByName(user.getUser_name());
		if(u != null && u.getUser_password().equals(user.getUser_password())) {
			//更新最后一次登录日期时间，并返回user
			u.setLast_login(DateTime.get());
			try {
				u.setLogin_ip(MyIP.getIpAddr(ServletActionContext.getRequest()));
			} catch (Exception e) {
				e.printStackTrace();
			}
			userDao.update(u);
			return u;
		} else {
			return null;
		}
	}
	
	public Integer addUser(User user) {
		user.setUser_state(1);  //设置user_state为普通用户
		user.setFirst_login(DateTime.get());	//设置注册时间
		user.setUser_sex("保密");
		return userDao.save(user);
	}

	public Integer addUser(User user, boolean admin) {
		user.setUser_state(0);  //设置user_state为管理员
		user.setFirst_login(DateTime.get());	//设置注册时间
		user.setUser_sex("保密");
		return userDao.save(user);
	}

	public boolean deleteUser(User user) {
		return userDao.delete(user);
	}

	public User findByName(String user_name) {
		return userDao.findByName(user_name);
	}

	public User findByEmail(String user_email) {
		return userDao.findByEmail(user_email);
	}
	
	public List<User> findAllUser() {
		return userDao.findAll();
	}

	public PageBean<User> userListPage(Integer current_page) {
		Integer allCount = userDao.findAllCount();//总记录数
		if(allCount != null && allCount != 0) {
			pageBean.setCurrent_page(current_page);  //当前页
			pageBean.setTotal_count(allCount);  //存入总计入数
			pageBean.setPage_size(Constants.getPageSize());  //每页显示记录数
			pageBean.setTotal_page((pageBean.getTotal_count() % pageBean.getPage_size()) == 0 ? (pageBean.getTotal_count() / pageBean.getPage_size()) : (pageBean.getTotal_count() / pageBean.getPage_size() + 1));  //总页数
			pageBean.setBegin((pageBean.getCurrent_page() - 1) * pageBean.getPage_size());  //开始位置
			pageBean.setList(userDao.findPage(pageBean.getBegin(), pageBean.getPage_size()));  //每页记录的list集合
			return pageBean; 
		} else {
			return null;
		}
	}

	public User findById(Integer user_id) {
		return userDao.findById(user_id);
	}

	public boolean userUpdate(User user) {
		return userDao.update(user);
	}

	public boolean deleteUserById(Integer user_id) {
		User user = userDao.findById(user_id);
		if(user != null) {
			userDao.delete(user);
			//判断是否存在头像而删除头像
			if(user.getImages() != null) {
				imagesService.deleteImagesById(user.getImages().getImages_id());
			}	
			return true;
		} else {
			return false;
		}
	}

	public boolean updateUser(User user, String uploadFileName, File upload) {
		Integer images_id_old = null;
		if(user.getImages() != null) {
			images_id_old = user.getImages().getImages_id();
		}
		Integer images_id_new = imagesService.addImages(uploadFileName, upload, 1);
		if(images_id_new != null) {
			user.getImages().setImages_id(images_id_new);
			userDao.update(user);
			
			//删除原头像
			imagesService.deleteImagesById(images_id_old);
		
			return true;
		} else {
			return false;
		}
	}

	public boolean updateUser(User user) {
		return userDao.update(user);
	}

}