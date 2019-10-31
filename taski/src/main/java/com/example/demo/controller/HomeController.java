package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@GetMapping("/dashboard")
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView("dashboard");
		return modelAndView;
	}
	

}
