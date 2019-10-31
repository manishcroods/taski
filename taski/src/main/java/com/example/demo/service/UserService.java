package com.example.demo.service;

import java.util.List;

import com.example.demo.model.User;

public interface UserService {

	public User saveUser(User user) ;
	
	public List<User> findAllUser();
	
	public void deleteUserById(long userid);
	
	public User findById(long userid);
}
