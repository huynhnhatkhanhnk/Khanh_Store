package com.khanh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.khanh.interceptor.AuthInterceptor;
import com.khanh.interceptor.GlobalInterceptor;

@Configuration
public class InterConfig implements WebMvcConfigurer{
	@Autowired
	GlobalInterceptor global;
	
	@Autowired
	AuthInterceptor auth;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(global)
			.addPathPatterns("/**")
			.excludePathPatterns("/assets/**");
		
		registry.addInterceptor(auth)
			.addPathPatterns("/account/edit", "/account/chgpwd", "/order/**", "/admin/**")
			.excludePathPatterns("/assets/**", "/admin/home/index");
	}
}