package com.example.demo.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="tbl_user")
@Data
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long userId;
	
	private String userName;
	
	private String role;
	
	private String email;
	
	private String password;
	
	private Date joinedTime;
	
	
}
