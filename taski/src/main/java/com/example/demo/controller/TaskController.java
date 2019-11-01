package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Task;
import com.example.demo.service.CategoryService;
import com.example.demo.service.TaskService;
import com.example.demo.service.UserService;

@Controller
public class TaskController {

	@Autowired
	TaskService taskservice;
	
	@Autowired
	CategoryService categoryService; 
	
	@Autowired
	UserService userservice;

	
	@GetMapping("/addtask")
	public ModelAndView saveTask() 
	{
		System.out.println("showing task page");
		ModelAndView mv=new ModelAndView("addtask");
		mv.addObject("categorylist", categoryService.findAllCategory());
		mv.addObject("userlist",userservice.findAllUser());
		return mv;
	}
	
	@PostMapping("/savetask")
	@ResponseBody
	public String saveTask(@ModelAttribute Task task) 
	{
		System.out.println("saving task");
		taskservice.saveTask(task);
		return "redirect:/addtask";
	}

	
/* task list */
	@GetMapping("/task")
	public String findAllTask(Model m) 
	{
		System.out.println("task page");
		m.addAttribute("tasklist", taskservice.findAllTask());  
		return "task";
	}

	
/* running task list */
	@GetMapping("/runningtask")
	public String findRunningTask(Model m) 
	{
		System.out.println("task page");
		m.addAttribute("runningtasklist", taskservice.findAllRunningTask());  
		return "runningtask";
	}
	
	
/* completed task list */
	@GetMapping("/completedtask")
	public String findCompletedTask(Model m) 
	{
		System.out.println("fimding all completed task list");
		m.addAttribute("completedtasklist",taskservice.findAllCompletedTask() );
		return "completedtask";
	}
	
	
/* delete task */
	@GetMapping("/task/delete/{id}")
	public String deleteTask(@PathVariable("id") long taskid ) 
	{
		System.out.println("deleting task");
		taskservice.deleteTask(taskid);
		return "redirect:runningtask";
		
	}
	
	
/* edit task */
	@GetMapping("/task/edit/{id}")
	public ModelAndView editTask(@PathVariable("id") long taskid)
	{
		System.out.println("edit process started");
		ModelAndView mv=new ModelAndView();
		mv.addObject("task", taskservice.findByTaskid(taskid));
		return mv;
		
	}
	
	
/* update task status */
	@GetMapping("/task/updatestatus/{id}")
	public String updateTaskStatus(@PathVariable("id") long taskid) 
	{
		System.out.println("edit status of task");
		taskservice.updateTaskStatus(taskid);
		return "redirect:/task";
		
	}
	
	@GetMapping("/task/{id}")
	public ModelAndView viewTask(@PathVariable("id") long taskid)
	{
		System.out.println("showing task ");
		ModelAndView mv=new ModelAndView("viewtask");
		return mv.addObject("tasklist",taskservice.findById(taskid));
		
	}
}
