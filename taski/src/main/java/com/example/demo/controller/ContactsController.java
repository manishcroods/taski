package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Contacts;
import com.example.demo.service.ContactsService;

@Controller
public class ContactsController {
	
	@Autowired
	ContactsService contactsService;
	
	@GetMapping("/addcontacts")
	public String allContacts(Model m)
	{
		 System.out.println("contacts page ");
		 return"addcontacts";
	}
	
	@PostMapping("/addcontacts")
	public String saveContacts(@ModelAttribute Contacts contacts)
	{
		System.out.println("add contact page ");
		contacts=contactsService.saveContacts(contacts);
		return "redirect:/contacts";
		
	}
	
	
	@GetMapping("/contacts")
	public String getAllContacts(Model m)
	{
		 System.out.println("contacts page ");
		 m.addAttribute("contactslist",contactsService.findAllContacts());
		 return"contacts";
	}
	
	@GetMapping("/contacts/delete/{id}")
	public String deleteContacts(@PathVariable("id") long contactsid) 
	{
		
		System.out.println("delete process strated");
		contactsService.deleteContacts(contactsid);
		System.out.println("DELETE PAGE CALLED");
		return "redirect:/contacts";

}
	
	@GetMapping("contacts/edit/{id}")
	public ModelAndView editContacts(@PathVariable("id") long contactid) 
	{
		System.out.println("edit contacts started");
		ModelAndView mv=new ModelAndView("/editcontacts");
		System.out.println("jsp page called");
		mv.addObject("contact",contactsService.editContacts(contactid));
		System.out.println("mv:"+mv);
		return mv;
	}
}
