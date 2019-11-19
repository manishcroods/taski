package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.UserLog;

@Repository
public interface UserLogRepo extends JpaRepository<UserLog,Long> {

}
