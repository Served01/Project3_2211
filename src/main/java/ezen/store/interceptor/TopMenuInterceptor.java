package ezen.store.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;

import ezen.store.beans.BoardInfoBean;
import ezen.store.beans.Mb_Bean;
import ezen.store.service.TopMenuService;

/* 4개의 게시판 메뉴가 있는데, 상단 메뉴로서 어떠한 주소가 요청하여도 다 동작해야 하므로  
 * 인터셉터로 구현하면 한번에 처리가 가능합니다.  
 * 예외> 인터넵터에서는 자동 주입이 안되므로 생성자를 이용하여 객체가 생성될 때
 * 객체 주소값을 주입하도록 합니다.
 * 
 */
public class TopMenuInterceptor implements HandlerInterceptor{
	

	private TopMenuService topMenuService;
	@SuppressWarnings("unused")
	private Mb_Bean login_mb_Bean;
	
	// 인터넵터에서는 자동 주입이 안되므로 생성자를 이용하여 객체가 생성될 때
	//  객체 주소값을 주입하도록 합니다.
	public TopMenuInterceptor(TopMenuService topMenuService, Mb_Bean login_mb_Bean) {
		this.topMenuService = topMenuService;
		this.login_mb_Bean = login_mb_Bean;		
	}


	@Override
		public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
				throws Exception {
			
		List<BoardInfoBean> topMenuList = topMenuService.getTopMenuList();
		
		//                      objectName     value
		request.setAttribute("topMenuList", topMenuList); 
		request.setAttribute("login_mb_Bean", login_mb_Bean); 
		
			return true;
		}
}
