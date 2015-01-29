package com.mercury.finance.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping("/frontpage")
	public String loginPage(){
		return "frontpage";
	}
	
	@RequestMapping("/stockinfo")
	public String stockPage(){
		return "stockinfo";
	}
//	@RequestMapping("/main")
//	public ModelAndView mainPage(HttpServletRequest request){
//		String username = request.getParameter("username");
//		String pw = request.getParameter("password");
//		ModelAndView mav=new ModelAndView();
//		return mav;
//	}
}

