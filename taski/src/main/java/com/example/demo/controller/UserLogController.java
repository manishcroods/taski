package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserLogController 
{
	@Autowired
	private HttpServletRequest request;
	
	@GetMapping("/input")
	public String getHeadesrInfo() {
		return request.getHeader("user-agent");
	}
}
