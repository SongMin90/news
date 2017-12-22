package com.songm.news.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.songm.news.model.Comment;
import com.songm.news.model.PageBean;
import com.songm.news.service.CommentService;
import com.songm.news.utils.Constants;

public class CommentAction extends ActionSupport implements ModelDriven<Comment> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6237340672531650838L;
	
	private Comment comment = new Comment();
	public Comment getModel() {
		return comment;
	}
	
	private CommentService commentService;
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	private Integer current_page;
	public void setCurrent_page(Integer current_page) {
		this.current_page = current_page;
	}
	
	private InputStream inputStream;
    public InputStream getInputStream() {
        return inputStream;
    }
    
    private Integer user_comment_id;
	public void setUser_comment_id(Integer user_comment_id) {
		this.user_comment_id = user_comment_id;
	}
	
	private String[] messages = {"message", "forward"};
	public String[] getMessages() {
		return messages;
	}
	
	/**
	 * 普通用户操作
	 */
	//分页查询个人全部评论
	public String findAll() {
		if(current_page == null) {
			current_page = 1;
		}
		PageBean<Comment> pageBean = commentService.commentListPage_ByUserId(current_page, user_comment_id);
		ActionContext.getContext().put("pageBean", pageBean);
		return Constants.FIND_ALL;
	}
	//单条删除
	public String delete() throws UnsupportedEncodingException {
		if(commentService.deleteComment(comment)) {
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
		} else {
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		}
		return Constants.AJAX_CHECK;
	}
	//新增评论
	public String addComment() {
		if(commentService.addComment(comment) != null) {
			messages[0] = "发表成功";
		} else {
			messages[0] = "发表失败";
		}
		messages[1] = "info.html?news_id=" + comment.getNews().getNews_id();
		return Constants.MESSAGES;
	}

}
