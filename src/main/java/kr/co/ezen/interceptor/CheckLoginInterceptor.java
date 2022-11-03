package kr.co.ezen.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.ezen.beans.Mb_Bean;


//로그인인지 아닌지 확인하여 통과여부 결정 하기 위하여
public class CheckLoginInterceptor implements HandlerInterceptor{

	// 처리대상 
	private Mb_Bean loginUserDataBean;
	
	public CheckLoginInterceptor(Mb_Bean loginUserDataBean) {
		this.loginUserDataBean = loginUserDataBean;		
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if(loginUserDataBean.isMblogin() == false) {
			String contextPath = request.getContextPath();
			
			response.sendRedirect(contextPath + "/member/not_login");
		
			return false;
		}
			
		return true;
	}
}
