package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SettingController {
	
	@GetMapping("/setting")
	public String settingPage() 
	{
		System.out.println("showing setting page");
		return "setting";
	}

}
