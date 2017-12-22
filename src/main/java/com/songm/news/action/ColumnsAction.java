package com.songm.news.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.songm.news.model.Columns;
import com.songm.news.service.ColumnsService;
import com.songm.news.utils.Constants;

public class ColumnsAction extends ActionSupport implements ModelDriven<Columns> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6004718643514588712L;
	
	private Columns columns = new Columns();
	public Columns getModel() {
		return columns;
	}
	
	private ColumnsService columnsService;
	public void setColumnsService(ColumnsService columnsService) {
		this.columnsService = columnsService;
	}
	
	private String[] messages = {"message", "forward"};
	public String[] getMessages() {
		return messages;
	}
	
	private InputStream inputStream;
    public InputStream getInputStream() {
        return inputStream;
    }	
    
	/**
	 * 页面跳转操作
	 */
	//跳转到addColumns.jsp
	public String toAddColumns() {
		return Constants.TO_ADD;
	}
	//跳转到edit.jsp
	public String toEdit() {
		columns = columnsService.findById(columns.getColumns_id());
		ActionContext.getContext().put("columns", columns);
		return Constants.TO_EDIT;
	}
	
	/**
	 * 管理员操作
	 */
	//添加栏目
	public String addColumns() {
		messages[0] = "添加失败";
		messages[1] = "columns_toAddColumns.html";
		if(columnsService.addColumns(columns) != null) {
			messages[0] = "添加成功";
			ActionContext.getContext().getSession().put("allColumns", null);
		}
		return Constants.MESSAGES;
	}
	//查询全部栏目
	public String findAll() {
		List<Columns> list = columnsService.findAllColumns();
		ActionContext.getContext().put("allColumns", list);
		return Constants.FIND_ALL;
	}
	//删除栏目
	public String delete() throws UnsupportedEncodingException {
		if(columnsService.deleteById(columns.getColumns_id())) {
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
			ActionContext.getContext().getSession().put("allColumns", null);
		} else {
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		}
		return Constants.AJAX_CHECK;
	}
	//更新栏目
	public String update() throws UnsupportedEncodingException {
		messages[1] = "javascript:history.go(-1);location.replace(document.referrer)";//返回上一个页面，并刷新
		if(columnsService.updateColumns(columns)) {
			messages[0] = "更新成功！";
			ActionContext.getContext().getSession().put("allColumns", null);
		} else {
			messages[0] = "更新失败！";
		}
		return Constants.MESSAGES;
	}
	
	/**
	 * ajax验证
	 * @throws UnsupportedEncodingException 
	 */
	//添加或更新栏目验证名称是否存在
	public String checkName() throws UnsupportedEncodingException {
		Columns c = columnsService.findByName(columns.getColumns_name());
		if(c == null || columns.getColumns_id() == c.getColumns_id()) {	
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));	
		} else {
			inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
		}
		return Constants.AJAX_CHECK;
	}
	//前台页面取到所有栏目，并存入session
	public String getAllColumns() throws UnsupportedEncodingException {
		List<Columns> columns_list = columnsService.findAllColumns();
		ActionContext.getContext().getSession().put("allColumns", columns_list);
		inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));	
		return Constants.AJAX_CHECK;
	}

}
