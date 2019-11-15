package com.example.demo.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.CompanyDetails;
import com.example.demo.model.Task;
import com.example.demo.model.User;
import com.example.demo.model.UserAttendance;
import com.example.demo.repository.CompanyDetailsRepo;
import com.example.demo.repository.TaskRepo;
import com.example.demo.repository.UserAttendanceRepo;
import com.example.demo.repository.UserRepo;
import com.example.demo.service.CompanyDetailsService;
import com.example.demo.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	UserRepo userrepo;
	
	@Autowired
	TaskRepo taskrepo;
	
	@Autowired
	CompanyDetailsService companyDetailsService;
	
	@Autowired
	CompanyDetailsRepo companyDetailsRepo;
	
	@Autowired
	UserService userservice;
	
	@Autowired
	UserAttendanceRepo userAttendanceRepo;
	
	@GetMapping("/dashboard")
	public ModelAndView dashboard(@SessionAttribute("user") User u ) 
	{
		System.out.println("user details:"+u);
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
		ModelAndView mv=new ModelAndView("logout");
		return mv;
		
	}
	
	@GetMapping("/setting")
	public String setting(@SessionAttribute("user") User u ,Model m ) 
	{
		System.out.println("user type:"+u.getUserType());
		
		if (u.getUserType().equalsIgnoreCase("admin")) 
		{
			System.out.println("settinf page showd");
			m.addAttribute("companylist", companyDetailsRepo.findAll());
			return "setting";
		}else {
			System.out.println("not admin so showing dashboard page ");
			return "redirect:/dashboard";
		}
		
	}
	
	@PostMapping("/savedetailes")
	public String saveTask(@ModelAttribute CompanyDetails cd ,@SessionAttribute("user") User u) 
	{
		System.out.println("CompanyDetails:" + cd);
		companyDetailsService.saveCompanydetails(cd);
		return "redirect:/setting";
	}
	
	@GetMapping("/company/findbyid/{id}")
	@ResponseBody
	public CompanyDetails findById(@PathVariable("id") long companyid) 
	{
		System.out.println("find company by id");
		return companyDetailsService.findById(companyid);
	}

	@GetMapping("company/delete/{id}")
	public String  deleteCompany(@PathVariable("id") long companyid)
	{
		System.out.println("deleting comapny details");
		companyDetailsRepo.deleteById(companyid);
		return "redirect:/setting";
		
	}
	
	@GetMapping("/changepassword")
	public ModelAndView chnagePassword() 
	{
		System.out.println("changing password");
		ModelAndView mv= new ModelAndView("changepassword");
		return mv;
		
	}
	
	@PostMapping("/checkoldpassword")
	@ResponseBody
	public String checkolpassword(@RequestParam String oldpassword ,@RequestParam String newpassword, @SessionAttribute("user") User u ) 
	{
		System.out.println("checking old password"+u.getPassword());
		
		if (u.getPassword().equalsIgnoreCase(oldpassword)) 
		{
			u.setPassword(newpassword);
			userservice.saveUser(u);	
			return "your password updated succussful";
		} else{
			return "old password is wrong";
		}
	}
	
	@PostMapping("/saveattendance")
	@ResponseBody
	public String saveattendance(@ModelAttribute UserAttendance ua ,@SessionAttribute("user") User u) 
	{
		System.out.println("attemdance details:" + ua);
		ua.setUser(u);
		userAttendanceRepo.save(ua);
		return "succussfull";
	}
	
	@PostMapping("/saveintime")
	@ResponseBody
	public String saveintime(@SessionAttribute("user") User u) 
	{
	
		UserAttendance ua=new UserAttendance();
		Date currentdate=new Date();
		
		if (userAttendanceRepo.findByDateAndUser(currentdate, u)==null) 
		{
			ua.setDate(new Date());
			ua.setUser(u);
			ua.setInTime(new Date());
			System.out.println("user full details after in time:"+ua);
			userAttendanceRepo.save(ua);
			return "succussfull";
		} else {
				return "failed";
		}
	}
	
	@PostMapping("/saveouttime")
	@ResponseBody
	public String saveouttime(@SessionAttribute("user") User u) 
	{
		UserAttendance ua=new UserAttendance();
		Date currentdate=new Date();
		
		if (userAttendanceRepo.findByDateAndUser(currentdate, u)!=null) 
		{
			ua=userAttendanceRepo.findByDateAndUser(currentdate, u);
			ua.setOutTime(new Date());
			System.out.println("attemdance details:" + ua);
			userAttendanceRepo.save(ua);
			return "succussfull";
		} else{
			return "failed";
		}
		
	}
	
}
