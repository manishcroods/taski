package com.example.demo.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "tbl_category")
@Data
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long categoryId;
	
	private String categoryName;
	
	private Date created;
}
