package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Category;
import com.example.demo.model.User;
import com.example.demo.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	CategoryService categoryService;

	
	@PostMapping("/savecategory")
	public String saveCategory(@ModelAttribute Category category ,@SessionAttribute("user") User u) 
	{
		System.out.println("category save model");
		category.setCreatedBy(u);
		category=categoryService.saveCategory(category);
		System.out.println("category saved");
		return "redirect:/category";
	}
	
	
	@GetMapping("/category")
	public String getAllCategory(Model m) {
		System.out.println("category page");
		m.addAttribute("categorylist", categoryService.findAllCategory());
		return "category";
	}

	@GetMapping("/category/delete/{id}")
	public String deleteCategory(@PathVariable("id") long categoryid) {
		System.out.println("delete category started");
		categoryService.deleteCategory(categoryid);
		return "redirect:/category	";
	}
	
	@GetMapping("/category/edit/{id}")
	public ModelAndView editCategory(@PathVariable("id") long categoryid)
	{
		System.out.println("edit controller started");
		ModelAndView mv=new ModelAndView("/editcategory");
		mv.addObject("category",categoryService.findById(categoryid));
		return mv;
	}
	
}
