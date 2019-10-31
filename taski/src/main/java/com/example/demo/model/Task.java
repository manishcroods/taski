package com.example.demo.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "tbl_task")
@Data
public class Task {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long taskId;
	
	private String title;
	
	private String taskDescription;
	
	private Date created;
	
	private String status;
	
	private String taskType;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="category_id",referencedColumnName="categoryId")
	private Category category;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="user_id",referencedColumnName="userId")
	private User user;
	
	
}
