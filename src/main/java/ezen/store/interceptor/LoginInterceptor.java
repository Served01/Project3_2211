package ezen.store.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import ezen.store.beans.Mb_Bean;

/* 4개의 게시판 메뉴가 있는데, 상단 메뉴로서 어떠한 주소가 요청하여도 다 동작해야 하므로  
 * 인터셉터로 구현하면 한번에 처리가 가능합니다.  
 * 예외> 인터넵터에서는 자동 주입이 안되므로 생성자를 이용하여 객체가 생성될 때
 * 객체 주소값을 주입하도록 합니다.
 * 
 */
public class LoginInterceptor implements HandlerInterceptor{
	

	private Mb_Bean loginShowBean;
	
	// 인터넵터에서는 자동 주입이 안되므로 생성자를 이용하여 객체가 생성될 때
	//  객체 주소값을 주입하도록 합니다.
	public LoginInterceptor(Mb_Bean loginShowBean) {
		this.loginShowBean = loginShowBean;		
	}

		//로그인 상태인지 확인하는 핸들러[전처리기](클라이언트->컨트롤러 요청중에 가로챔)
		@Override
		public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
				throws Exception {
			
		request.setAttribute("loginShowBean", loginShowBean); 
		
			return true;
		}
	
		//로그인 상태인지 확인하는 핸들러[후처리기](컨트롤러->클라이언트 요청중 가로챔)
//	 	@Override
//	    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//	            ModelAndView modelAndView) throws Exception {
	
//		 request.setAttribute("login_mb_Bean", login_mb_Bean); 
//		 return; 
//	    }
//}

}
