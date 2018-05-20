package com.Alice.web;

import com.Alice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LoginController{
	private UserService userService;


	@RequestMapping(value = "/login")
	public ModelAndView loginPage(){
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
