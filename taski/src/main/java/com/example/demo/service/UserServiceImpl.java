package com.example.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepo;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepo userrepo;
	
	@Override
	public User saveUser(User user) 
	{
		return userrepo.save(user);
	}
	
	@Override
	public List<User> findAllUser()
	{
		return userrepo.findAll();
	}
	
	@Override
	public void deleteUserById(long userid) 
	{
		userrepo.deleteById(userid);
	}
	
	@Override
	public User findById(long userid)
	{
		return userrepo.findById(userid).orElse(null);
	}
	
}
