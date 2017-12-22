package com.songm.news.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.songm.news.model.Columns;
import com.songm.news.model.News;
import com.songm.news.model.PageBean;
import com.songm.news.model.User;
import com.songm.news.service.ColumnsService;
import com.songm.news.service.NewsService;
import com.songm.news.utils.Constants;

public class NewsAction extends ActionSupport implements ModelDriven<News> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2083004375171608102L;
	
	private News news = new News();
	public News getModel() {
		return news;
	}
	
	private NewsService newsService;
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}

	private String[] messages = {"message", "forward"};
	public String[] getMessages() {
		return messages;
	}
	
	private ColumnsService columnsService;
	public void setColumnsService(ColumnsService columnsService) {
		this.columnsService = columnsService;
	}
	
	private Integer current_page;
	public void setCurrent_page(Integer current_page) {
		this.current_page = current_page;
	}
	
	private InputStream inputStream;
    public InputStream getInputStream() {
        return inputStream;
    }
    
    private Integer user_news_id;
	public void setUser_news_id(Integer user_news_id) {
		this.user_news_id = user_news_id;
	}
	
	/**
	 * 页面跳转操作
	 */
	//跳转到add.jsp
	public String toAdd() {
		List<Columns> list = columnsService.findAllColumns();
		ActionContext.getContext().put("allColumns", list);
		return Constants.TO_ADD;
	}
	//跳转到edit.jsp
	public String toEdit() {
		List<Columns> list = columnsService.findAllColumns();
		ActionContext.getContext().put("allColumns", list);
		ActionContext.getContext().put("news", newsService.findById(news.getNews_id()));
		return Constants.TO_EDIT;
	}
	
	/**
	 * 普通用户操作
	 */
	//添加新闻
	public String add() {
		messages[0] = "添加失败";
		messages[1] = "news_toAdd.html";
		User u = (User) ActionContext.getContext().getSession().get("user");
		if(u == null) {
			return Constants.MESSAGES;
		}
		news.setUser(u);
		if(newsService.addNews(news) != null) {
			messages[0] = "添加成功";
		}
		return Constants.MESSAGES;
	}
	//分页查询个人全部新闻
	public String findAll() {
		if(current_page == null) {
			current_page = 1;
		}
		PageBean<News> pageBean = newsService.newsListPage_ByUserId(current_page, user_news_id);
		ActionContext.getContext().put("pageBean", pageBean);
		return Constants.FIND_ALL;
	}
	//删除新闻
	public String delete() throws UnsupportedEncodingException {
		if(newsService.deleteNews(newsService.findById(news.getNews_id()))) {
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
		} else {
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		}
		return Constants.AJAX_CHECK;
	}
	//更新新闻
	public String update() {
		messages[0] = "更新失败";
		messages[1] = "news_findAll.html";
		User u = (User) ActionContext.getContext().getSession().get("user");
		if(u == null) {
			return Constants.MESSAGES;
		}
		news.setUser(u);
		if(newsService.updateNews(news)) {
			messages[0] = "更新成功";
		}
		return Constants.MESSAGES;
	}	
	//将网站标题存入session
	public String getWebTitle() throws UnsupportedEncodingException {
		ActionContext.getContext().getSession().put("webSiteTitle", Constants.getWebSiteTitle()); //将网站标题存入session
		inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
		return Constants.AJAX_CHECK;
	}
	//根据条件搜索新闻
	private String search_content;
	public void setSearch_content(String search_content) {
		this.search_content = search_content;
	}
	public String getSearch_content() {
		return search_content;
	}
	public String searchNews() {
		if(current_page == null) {
			current_page = 1;
		}
		if(search_content == null) {
			return Constants.TO_404;
		}
		try {
			search_content = new String(search_content.getBytes("ISO-8859-1"), "UTF-8"); //因为是GET的取值，强制转换下解决中文无效
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();		
		}
		PageBean<News> pageBean = newsService.searchNews(current_page, search_content);
		ActionContext.getContext().put("pageBean", pageBean);
		return Constants.SEARCH_NEWS;
	}
	//前台搜索新闻
	public String beforeSearchNews() {
		if(current_page == null) {
			current_page = 1;
		}
		if(search_content == null) {
			return Constants.TO_404;
		}
		PageBean<News> pageBean = newsService.searchNews(current_page, search_content);
		if(pageBean == null) {
			ActionContext.getContext().put("columns_name", "暂无");
		} else {
			ActionContext.getContext().put("columns_name", "找到的");
		}
		ActionContext.getContext().put("pageBean", pageBean);
		return Constants.BEFORESEARCH_NEWS;
	}
	
	//前台页面分页查询个人全部新闻
	public String findNews_ByU() {
		PageBean<News> pageBean = newsService.newsListPage_ByUserId(1, user_news_id);
		ActionContext.getContext().put("pageBean", pageBean);
		ActionContext.getContext().put("columns_name", pageBean.getList().get(0).getUser().getUser_name()+"的");
		return Constants.TO_INDEX;
	}
	
	// 批量删除新闻
	private String ids;
	public void setIds(String ids) {
		this.ids = ids;
	}
	public String delAll() {
		String[] id = ids.split(",");
		messages[0] = "删除失败！";
		messages[1] = "javascript:history.go(-1);location.replace(document.referrer)";//返回上一个页面，并刷新
		List<News> list = new ArrayList<News>();
		for(int i=0; i<id.length; i++) {
			Integer ii = Integer.parseInt(id[i]);
			News news = new News();
			news = newsService.findById(ii);
			list.add(news);
		}
		boolean flag = newsService.delAllNews(list);
		if(flag) {
			messages[0] = "删除成功！";
		}
		return Constants.MESSAGES;
	}
}
