package com.example.demo.configuration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Component;

import com.example.demo.model.ClientInfo;
import com.example.demo.model.User;
import com.example.demo.model.UserLog;
import com.example.demo.repository.UserLogRepo;
import com.example.demo.repository.UserRepo;
import com.example.demo.service.UserService;

@Component
public class CustomizeLogOutSuccessHandler implements LogoutSuccessHandler {

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
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException 
	{
		System.out.println("log out succussfull handller ");
		User user = null;
		User u = new User();
		if (authentication != null) {
			System.out.println(authentication.getName());
			String username = authentication.getName();
			System.out.println("login username " + username);
			u = userRepo.findByUserName(username);
		}
// perform other required operation
		String URL = request.getContextPath() + "/login";
		response.setStatus(HttpStatus.OK.value());

//*****---- user log-out  info ----******//

		System.out.println("request data from login" + request.getHeader("user-agent"));

		System.out.println("user name in session after log out:" + user);

		ClientInfo clientInfo = getClientInfo.printClientInfo(request);
		clientInfo.setUser(user);
		System.out.println("client info details:::" + clientInfo);

		UserLog ul = new UserLog();
		ul.setBrowser(clientInfo.getClientBrowser());
		ul.setUser(u);
		ul.setLogType("log-out");
		ul.setUserIP(clientInfo.getClientIpAddr());
		ul.setUserOS(clientInfo.getClientOS());
		System.out.println("userlog details:::" + ul);

		userLogRepo.save(ul);

		response.sendRedirect(URL);

	}

}
