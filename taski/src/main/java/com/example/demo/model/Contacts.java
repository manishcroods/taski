package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "tbl_contacts")
@Data
public class Contacts {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long contactsId;
	
	private String contactName;
	
	private String email;
	
	private long mobile;
	
	
}
