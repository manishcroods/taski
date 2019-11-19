package com.example.demo.configuration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.example.demo.model.ClientInfo;
import com.example.demo.model.User;
import com.example.demo.model.UserLog;
import com.example.demo.repository.UserLogRepo;
import com.example.demo.repository.UserRepo;
import com.example.demo.service.UserService;

@Component
public class CustomizeAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
	@Autowired
	UserService userService;

	@Autowired
	UserRepo userRepo;

	@Autowired
	HttpServletRequest request;

	@Autowired
	HttpSession session;

	@Autowired
	UserLogRepo userLogRepo;

	@Autowired
	GetClientInfo getClientInfo;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException 
	{
		System.out.println("login authentication ");
		response.setStatus(HttpServletResponse.SC_OK);

		HttpSession session = request.getSession(false);

		System.out.println("login session ");

		String username = authentication.getName();
		System.out.println("login username " + username);
		User u = userRepo.findByUserName(username);

		if (u == null) {
			System.out.println("login u  nulllll");
		}

		session.setAttribute("user", u);

//*****---- user log info ----******//

		System.out.println("request data from login" + request.getHeader("user-agent"));

		User user = (User) session.getAttribute("user");

		ClientInfo clientInfo = getClientInfo.printClientInfo(request);
		clientInfo.setUser(user);
		System.out.println("client info details:::" + clientInfo);

		UserLog ul = new UserLog();
		ul.setBrowser(clientInfo.getClientBrowser());
		ul.setUser(user);
		ul.setLogType("log-in");
		ul.setUserIP(clientInfo.getClientIpAddr());
		ul.setUserOS(clientInfo.getClientOS());
		System.out.println("userlog details:::" + ul);

		userLogRepo.save(ul);

		response.sendRedirect("/dashboard");

	}

}
