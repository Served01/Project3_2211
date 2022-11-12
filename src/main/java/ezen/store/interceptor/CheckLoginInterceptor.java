package ezen.store.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;


//로그인인지 아닌지 확인하여 통과여부 결정 하기 위하여
public class CheckLoginInterceptor implements HandlerInterceptor{

	// 처리대상 
	/*private Mb_Bean loginMbDataBean;
	
	public CheckLoginInterceptor(Mb_Bean loginMbDataBean) {
		
		this.loginMbDataBean = loginMbDataBean;		
		
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		if(loginMbDataBean.isMblogin() == false) {
			String contextPath = request.getContextPath();
			
			response.sendRedirect(contextPath + "/user/not_login");
		
			return false;
		}
			
		return true;
	}
	*/
}
