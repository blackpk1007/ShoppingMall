package com.shopping.mall.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Logininterceptor implements HandlerInterceptor{
	
	private Logger logger = LoggerFactory.getLogger(Logininterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		
		logger.info("[interceptor] : preHandle");
		
		if(request.getRequestURI().contains("/login/loginform") || request.getRequestURI().contains("/login/ajaxlogin") || 
		   request.getRequestURI().contains("/login/registerform") || request.getRequestURI().contains("/main") ||
		   request.getRequestURI().contains("/category") ||
		   request.getSession().getAttribute("login") != null){ 
			return true;
		}
		
		if(request.getRequestURI().contains("/mypage/mypagecart") || request.getSession().getAttribute("login") == null) {
			response.sendRedirect("/login/loginform");
			return false;
		}
		return false;
	}
	// view단으로 forward 되기 전에 수행
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
		logger.info("[interceptor] : postHandle");
	}
	
	// view까지 처리 끝난 후 실행
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
		logger.info("[interceptor] : afterCompletion");		
	}
}
