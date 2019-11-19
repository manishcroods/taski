package com.example.demo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.model.UserLog;
import com.example.demo.repository.UserLogRepo;


@Service
@Transactional
public class UserLogServiceImpl implements UserLogService 
{
	@Autowired
	UserLogRepo userLogRepo;
	
	@Override
	public void saveUserLog(UserLog ul) {
		userLogRepo.save(ul);
	}
	
}
