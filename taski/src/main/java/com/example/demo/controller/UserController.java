package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.User;
import com.example.demo.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userserviceImpl;

	@Autowired
	PasswordEncoder passwordEncoder;
	
	@PostMapping("/saveuser")
	@ResponseBody
	public User saveUser(@ModelAttribute User user) 
	{
		if (user.getPassword()!=null) 
		{
			System.out.println("user added in list"+user);
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			return userserviceImpl.saveUser(user);
			
		} else {
			
			long userid=user.getUserId();
			User u1=userserviceImpl.findById(userid);
			u1.setUserName(user.getUserName());
			u1.setEmail(user.getEmail());
			System.out.println("user updating in list***"+u1);
			return userserviceImpl.saveUser(u1);
		}
		
		
		
	}

	@PostMapping("/adduser")
	public String adduser(@RequestParam String password, String userName, String email) {
		System.out.println("adding user in list");

		User u = new User();
		u.setPassword(passwordEncoder.encode(password));
		u.setUserName(userName);
		u.setEmail(email);
		userserviceImpl.saveUser(u);
		System.out.println("user added in list");
		System.out.println("user added password:"+password);
		return "redirect:/user";

	}

	@GetMapping("/saveuser")
	public String saveUser() {
		System.out.println("add user page ");
		return "adduser";
	}

	@GetMapping("/user")
	public String allUserList(Model m) {
		System.out.println("user page ");
		m.addAttribute("userlist", userserviceImpl.findAllUser());
		System.out.println("user list" + userserviceImpl.findAllUser());
		return "user";
	}

	@GetMapping("/user/delete/{id}")
	@ResponseBody
	public String deleteUser(@PathVariable("id") long userid) {

		System.out.println("delete user started");
		userserviceImpl.deleteUserById(userid);
		System.out.println("user deleted");
		return "Success";

	}

	/*
	 * @GetMapping("/user/edit/{id}") public ModelAndView
	 * editUser(@PathVariable("id") long userid) {
	 * 
	 * System.out.println("edit user model"); ModelAndView mv = new
	 * ModelAndView("/edituser");
	 * System.out.println("edit user data:"+userserviceImpl.findById(userid));
	 * mv.addObject("user", userserviceImpl.findById(userid)); return mv; }
	 */
	
	@GetMapping("/user/edit/{id}")
	@ResponseBody
	public User editUser(@PathVariable("id") long userid) {

		System.out.println("edit user model");
		System.out.println("edit user data:"+userserviceImpl.findById(userid));
		return userserviceImpl.findById(userid);
		
	}
	
	
}
