package com.mercury.finance.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mercury.finance.model.Trader;
import com.mercury.finance.service.TraderDetailsService;

@Controller
public class TraderController {
	TraderDetailsService traders;
	@RequestMapping("/test")
	public ModelAndView insertTrader(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
//		String name = request.getParameter("name");
//		Trader trader = new Trader();
//		trader.setBalance(3000);
//		trader.setEmail("zzyjan@gmail.com");
//		trader.setFname("Jason");
//		trader.setLname("Liu");
//		trader.setRole("Admin");
//		traders.saveTrader(trader);
		mav.setViewName("helloworld");//default forward
		mav.addObject("msg", "Hello Welcom to Spring MVC!");
		return mav;
	}
}
