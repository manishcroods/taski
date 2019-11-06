package com.example.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.model.Task;
import com.example.demo.repository.TaskRepo;

@Service
@Transactional
public class TaskServiceImpl implements TaskService {
	
	@Autowired
	TaskRepo taskrepo;
	
	@Override
	public Task saveTask(Task task) 
	{
		return taskrepo.save(task);
	}
	
	@Override
	public List<Task> findAllTask()
	{
		return taskrepo.findAll();
	}
	
	@Override
	public List<Task> findAllRunningTask()
	{
		return taskrepo.findAllRunningTask();
	}
	
	@Override
	public List<Task> findAllCompletedTask()
	{
		return taskrepo.findAllCompletedTask();
	}
	
	@Override
	public void deleteTask(long taskid) 
	{
		taskrepo.deleteById(taskid);
	}
	
	@Override
	public Task findByTaskid(long taskid) 
	{
		return taskrepo.findById(taskid).orElse(null);
	}
	
	@Override
	public void updateTaskStatus(long taskid) {
		taskrepo.updateTask(taskid);
	}
	
	@Override
	public Task findById(long taskid) 
	{
		return taskrepo.findById(taskid).orElse(null);
		
	}
	
	@Override
	public void updateRuuningTask(long taskid) 
	{
		Task t=taskrepo.findById(taskid).orElse(null);
		t.setStatus("completed");
		taskrepo.save(t);
		
	}
	
	@Override
	public void restoreTask(long taskid) 
	{
		Task t=taskrepo.findById(taskid).orElse(null);
		t.setStatus("running");
		taskrepo.save(t);
		
	}
	
	
	
}
