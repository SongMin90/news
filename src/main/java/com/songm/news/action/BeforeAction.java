package com.songm.news.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.songm.news.model.Comment;
import com.songm.news.model.News;
import com.songm.news.model.PageBean;
import com.songm.news.service.BeforeService;
import com.songm.news.service.CommentService;
import com.songm.news.utils.Constants;

public class BeforeAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2095027412638906810L;
	
	private BeforeService beforeService;
	public void setBeforeService(BeforeService beforeService) {
		this.beforeService = beforeService;
	}
	
	private Integer current_page;
	public void setCurrent_page(Integer current_page) {
		this.current_page = current_page;
	}

	private Integer columns_news_id;
	public void setColumns_news_id(Integer columns_news_id) {
		this.columns_news_id = columns_news_id;
	}

	private Integer news_id;
	public void setNews_id(Integer news_id) {
		this.news_id = news_id;
	}

	private String[] messages = {"message", "forward"};
	public String[] getMessages() {
		return messages;
	}
	
	//index.jsp
	public String index() {	
		//判断当前页是否为空
		if(current_page == null) {
			current_page = 1;
		}
		//根据栏目取出新闻
		if(columns_news_id == null) {
			//取到栏目为(最新)的新闻
			PageBean<News> news_list = new PageBean<News>();
			news_list =	beforeService.findAllNews_OrderBy(current_page);
			ActionContext.getContext().put("pageBean", news_list);
			ActionContext.getContext().put("columns_name", "最新");
			ActionContext.getContext().put("columns_news_id", "zuixin");
		} else {
			PageBean<News> news_list = new PageBean<News>();
			news_list = beforeService.findAllNews_ByColumns(current_page, columns_news_id);
			ActionContext.getContext().put("pageBean", news_list);
			if(news_list != null) {
				ActionContext.getContext().put("columns_name", news_list.getList().get(0).getColumns().getColumns_name());
			} else {
				ActionContext.getContext().put("columns_name", "暂无");			
			}
			ActionContext.getContext().put("columns_news_id", columns_news_id);
		}
		return Constants.TO_INDEX;
	}
	
	//通过news_id取出新闻详情
	private CommentService commentService;
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	public String info() {
		News news = beforeService.findNews_Byid(news_id);
		if(news != null) {
			ActionContext.getContext().put("news", news);
			ActionContext.getContext().put("columns_news_id", news.getColumns().getColumns_id());
			//取出新闻下的所有评论
			if(current_page == null) {
				current_page = 1;
			}
			PageBean<Comment> list = commentService.findAllComment_OrderByNewsId(current_page, news_id);
			ActionContext.getContext().put("allComment", list);
			return Constants.TO_INFO;
		} else {
			messages[0] = "没有找到，可能已下架";
			messages[1] = "index.html";
		}
		return Constants.MESSAGES;
	}

}
