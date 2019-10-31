package com.example.demo.service;

import java.util.List;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Category;
import com.example.demo.repository.CategoryRepo;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	CategoryRepo categoryrepo;
	
	@Override
	public Category saveCategory(Category category)
	{
		return categoryrepo.save(category);
	}
	
	@Override
	public List<Category> findAllCategory()
	{
		return categoryrepo.findAll();
	}

	@Override
	public void deleteCategory(long categoryid) {
		categoryrepo.deleteById(categoryid);
	}
	
	@Override
	public Category findById(long categoryid) 
	{
		return categoryrepo.findById(categoryid).orElse(null);
	}
	}
