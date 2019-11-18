package com.example.demo.configuration;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepo;
import com.example.demo.service.UserService;

@Component
public class CustomizeAuthenticationSuccessHandler implements AuthenticationSuccessHandler 
{
	@Autowired
	UserService userService;
	
	@Autowired
	UserRepo userRepo;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException 
	{
		System.out.println("login authentication ");
        response.setStatus(HttpServletResponse.SC_OK);
        
        Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
       
        HttpSession session = request.getSession(false);
       
		System.out.println("login session ");

	            String username=authentication.getName();
	    		System.out.println("login username "+username);
	            User u=userRepo.findByUserName(username);
	            
	            if(u==null) 
	            {
	            	System.out.println("login u  nulllll");
	            }
	            
	            session.setAttribute("user", u);
	        

        response.sendRedirect("/dashboard");
        
		/*
		 * if (roles.contains("ROLE_ADMIN")) { response.sendRedirect("/dashboard");
		 * 
		 * }else if (roles.contains("ROLE_USER")) { response.sendRedirect("/dashboard");
		 * 
		 * }
		 */
        	
        }
	}
