package com.songm.news.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.songm.news.model.User;
import com.songm.news.utils.Constants;

/**
 * 安全拦截器
 * @author SongM
 *
 */
public class SafeInterceptor extends MethodFilterInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9138423095539038015L;

	protected String doIntercept(ActionInvocation invocation) throws Exception {	
		User user = (User) ActionContext.getContext().getSession().get("user");
		if(user != null && !"".equals(user)) {
			return invocation.invoke();
		} else {
			return Constants.TO_LOGIN;
		}
	}

}
