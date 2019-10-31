package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Task;

@Repository
public interface TaskRepo extends JpaRepository<Task,Long>{

	@Query(value = "select* from tbl_task where status='running';" , nativeQuery = true)
	public List<Task> findAllRunningTask();
	
	@Query(value = "select* from tbl_task where status='completed';" , nativeQuery = true)
	public List<Task> findAllCompletedTask();
	
}
