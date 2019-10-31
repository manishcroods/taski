package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Task;

public interface TaskService {

	public Task saveTask(Task task);
	
	public List<Task> findAllTask();
	
	public List<Task> findAllRunningTask();
	
	public List<Task> findAllCompletedTask();
	
	public void deleteTask(long taskid);
	
	public Task findByTaskid(long taskid);
	
}
