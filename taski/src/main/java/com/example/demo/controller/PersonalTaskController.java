package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Task;
import com.example.demo.model.User;
import com.example.demo.repository.TaskRepo;

@Controller
public class PersonalTaskController {
	@Autowired
	TaskRepo taskrepo;

	@GetMapping("/addpersonaltask")
	public ModelAndView personalTask() {
		System.out.println(" personal task page shown");
		ModelAndView mv = new ModelAndView("addpersonaltask");
		return mv;
	}

	@GetMapping("/runningpersonaltask")
	public ModelAndView runnigPersonalTask(@SessionAttribute("user") User u) {
		System.out.println("running personal task page");
		List<Task> task = taskrepo.findByUserAndStatus(u, "running");
		ModelAndView mv = new ModelAndView("runningtask");
		mv.addObject("runningtasklist", task);
		return mv;
	}

	@GetMapping("/completedpersonaltask")
	public ModelAndView completedPersonalTask(@SessionAttribute("user") User u) 
	{
		System.out.println("completd personal task page");
		List<Task> task = taskrepo.findByUserAndStatus(u, "completed");
		ModelAndView mv = new ModelAndView("completedtask");
		mv.addObject("completedtasklist", task);
		return mv;
	}

}
