package com.my.web.controller;  
  
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
   
@Controller  
@RequestMapping("/user")  
public class LoginController {
	
	private final static Logger logger = Logger.getLogger(LoginController.class);
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)  
	public ModelAndView getLogin() { 
		
		logger.debug("访问登录页");
		
	 	ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/login/login");
	    return modelAndView;  
	}  
      
   
}