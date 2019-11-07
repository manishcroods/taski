package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Task;
import com.example.demo.model.User;
import com.example.demo.repository.TaskRepo;
import com.example.demo.repository.UserRepo;

@Controller
public class HomeController {
	
	@Autowired
	UserRepo userrepo;
	
	@Autowired
	TaskRepo taskrepo;
	
	@GetMapping("/dashboard")
	public ModelAndView dashboard(@SessionAttribute("user") User u ) 
	{
		ModelAndView modelAndView = new ModelAndView("dashboard");
		List<Task> task=taskrepo.findByUserAndStatus(u, "running");
		List<Task> completedTask=taskrepo.findByUserAndStatus(u, "completed");
		modelAndView.addObject("personaltasklist", task);
		modelAndView.addObject("completedtasklist", completedTask);
		System.out.println("username:"+u.getEmail());
		return modelAndView;
	}
	

	@GetMapping("/login")
	public ModelAndView login() 
	{
		System.out.println("login page");
		ModelAndView mv=new ModelAndView("login");
		return mv;
		
	}
	@PostMapping("/login")
	public 	String loginAccess(@RequestParam String email ,String password ,HttpSession session) 
	{
		System.out.println("log in page post method");
		User user= new User();
		user.setEmail(email);
		user.setPassword(password);
		
		System.out.println("user data:"+user);
		
		user=userrepo.findByEmailAndPassword(email, password);
		System.out.println("user check method:"+user);
		
		if (user!=null) 
		{
			session.setAttribute("user", user);
			System.out.println("login granted");
			return "redirect:/dashboard";
		} else 
		{
			System.out.println("error page");
			return "redirect:/error";

		}
	
	}
	
	@GetMapping("/logout")
	public ModelAndView logout() 
	{
		System.out.println("logout page");
		ModelAndView mv=new ModelAndView("login");
		return mv;
		
	}
}
