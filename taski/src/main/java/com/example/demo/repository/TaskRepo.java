package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Task;
import com.example.demo.model.User;

@Repository
public interface TaskRepo extends JpaRepository<Task,Long>{

	@Query(value = "select* from tbl_task where status!='completed';" , nativeQuery = true)
	public List<Task> findAllRunningTask();
	
	@Query(value = "select* from tbl_task where status='completed';" , nativeQuery = true)
	public List<Task> findAllCompletedTask();
	
	@Query(value = "update tbl_task set status='running'  where task_id=?1;" , nativeQuery = true)
	public void updateTask(long taskid);
	
	@Query(value = "update tbl_task set status='completed'  where task_id=?1;" , nativeQuery = true)
	public void updateRunningTask(long taskid);
	
	public List<Task> findByUserAndStatus(User u,String status);
		
	
}
