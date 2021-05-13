package com.company.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.company.dto.Category_dto;

public interface Category_Service {
	public Category_dto save(Category_dto Category_dto);// save and update

	public void delete(Integer[] id);

	public Category_dto findOneById(int id);

	public List<Category_dto> findAll();

}
