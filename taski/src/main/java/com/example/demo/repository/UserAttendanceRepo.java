package com.example.demo.repository;

import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.User;
import com.example.demo.model.UserAttendance;

@Repository
public interface UserAttendanceRepo extends JpaRepository<UserAttendance, Long> {

	public UserAttendance findByDateAndUser(Date currentdate,User u) ; 
}
