package com.company.service;

import java.util.List;

import com.company.model.Category;

public interface Category_Service {
	public Category add(Category category);

	public Category update(Category category);

	public Category remove(Category category);

	public List<Category> findAll();

	public List<Category> findAllById(int id);
}
