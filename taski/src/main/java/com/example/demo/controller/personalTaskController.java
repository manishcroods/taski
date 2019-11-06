package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class personalTaskController 
{
	
	@GetMapping("/addpersonaltask")
	public ModelAndView personalTask() 
	{
		System.out.println(" personal task page shown");
		ModelAndView mv=new ModelAndView("addpersonaltask");
		return mv;
	}
	
	@GetMapping("/runningpersonaltask")
	public String runnigPersonalTask() 
	{
		System.out.println("running personal task page");
		return "runningpersonaltask";
	}
	
	@GetMapping("/completedpersonaltask")
	public String completedPersonalTask() 
	{
		System.out.println("running completed task page");
		return "completedpersonaltask";
	}

}
