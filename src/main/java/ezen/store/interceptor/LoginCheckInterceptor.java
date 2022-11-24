package ezen.store.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import ezen.store.beans.Mb_Bean;


//
public class LoginCheckInterceptor implements HandlerInterceptor{


	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		
		HttpSession session = request.getSession();
		
		String mb_id = null;
		
		if(!session.getAttribute("mb_id").equals(null)) {
		mb_id = (String) session.getAttribute("mb_id");
		}

		
		String requestUrl = request.getRequestURL().toString();
		
			// 세션 없어도 되는 경우
			if(requestUrl.contains("/BkList")){ 
				
				return true;
			}
			
			if(requestUrl.contains("/BkSelect")){ 
				
				return true;
			}
	
			if(requestUrl.contains("/loginCheck")){ 
				
				return true;
			}
	
			if(requestUrl.contains("/checkUserId")){ 
				
				return true;
			}
	
			if(requestUrl.contains("/RvList")){ 
				
				return true;
			}
	
			if(requestUrl.contains("/Mblogin")){ 
				
				return true;
			}
			
			if(requestUrl.contains("/Mbinsert")){ 
				
				return true;
			}

		if(mb_id!=null) {
			
			
			String Referer = request.getHeader("Referer");
			
			if(mb_id=="admin") {
				return true;
			}else {
				
				if(requestUrl.contains("/BkInsert")){ 
					response.sendRedirect(Referer);
					
					return false;
				}
				
				if(requestUrl.contains("/BkUpdate")){ 
					response.sendRedirect(Referer);
					
					return false;
				}
				
				if(requestUrl.contains("/CheckBkNum")){ 
					response.sendRedirect(Referer);
					
					return false;
				}
				
				if(requestUrl.contains("/BkDelete")){ 
					response.sendRedirect(Referer);
					
					return false;
				}
				
				if(requestUrl.contains("/BkUpdate")){ 
					response.sendRedirect(Referer);
					
					return false;
					
				} else {
			
				return true;
			
		        }
			}
		}
		
			response.sendRedirect("/member/Mblogin");
			//여기서 return 값은 원래 컨트롤러 요청 uri로 돌아가도 되냐 안되냐를 의미함.
			return false;
			
		}
			
			
		
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, 
		
		Object handler, ModelAndView modelAndView) throws Exception {
		
		
		
		
	
	}
}
