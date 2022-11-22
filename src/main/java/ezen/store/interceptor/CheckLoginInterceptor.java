package ezen.store.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import ezen.store.beans.Mb_Bean;

public class CheckLoginInterceptor implements HandlerInterceptor {

	private Mb_Bean loginMbBean;

	public CheckLoginInterceptor(Mb_Bean loginMbBean) {
		this.loginMbBean = loginMbBean;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		if (loginMbBean.isMblogin() == false) {
			String contextPath = request.getContextPath();

			response.sendRedirect(contextPath + "/member/Mbnotlogin");

			return false;
		}

		return true;
	}
}
