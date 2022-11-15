package ezen.store.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import ezen.store.beans.Mb_Bean;


//로그인인지 아닌지 확인하여 통과여부 결정 하기 위하여
public class CheckLoginInterceptor implements HandlerInterceptor{

	// 처리대상 
	private Mb_Bean loginMbBean;
	
	public CheckLoginInterceptor(Mb_Bean loginMbBean) {
		this.loginMbBean = loginMbBean;		
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if(loginMbBean.isMblogin() == false) {
			String contextPath = request.getContextPath();
			
			response.sendRedirect(contextPath + "/member/Mb_not_login");
		
			return false;
		}
			
		return true;
	}
}
