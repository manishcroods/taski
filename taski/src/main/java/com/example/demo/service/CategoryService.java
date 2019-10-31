package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Category;

public interface CategoryService {

	public Category saveCategory(Category category);
	
	public List<Category> findAllCategory();

	public void deleteCategory(long categoryid);
	
	public Category findById(long categoryid) ;
}
