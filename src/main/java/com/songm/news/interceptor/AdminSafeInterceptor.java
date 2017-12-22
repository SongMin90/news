package com.songm.news.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class AdminSafeInterceptor extends MethodFilterInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5102660938935603601L;

	protected String doIntercept(ActionInvocation invocation) throws Exception {
//		User user = (User) ActionContext.getContext().getSession().get("user");
//		if(user.getUser_state() == 0) {
			return invocation.invoke();
//		} else {
//			return Constants.TO_403;
//		}
	}

}
