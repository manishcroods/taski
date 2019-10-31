package com.example.demo.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "tbl_attendance")
@Data
public class Attendance {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long attendanceId;
	
	private Date inTime;
	
	private Date outTime;

}
