package com.company.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.Category;

public interface Category_Repository extends JpaRepository<Category, Integer> {
	Category findByIdCategory(Integer idCategory);
}
