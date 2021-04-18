package com.company.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.company.Repository.Category_Repository;
import com.company.converter.Category_Converter;
import com.company.dto.Category_dto;
import com.company.model.Category;
import com.company.service.Category_Service;

@Service
public class Category_Service_Implement implements Category_Service {
	@Autowired
	private Category_Repository category_Repository;

	@Autowired
	private Category_Converter category_Converter;

	@Override
	public Category_dto save(Category_dto category_dto) {
		Category category = new Category();
		if (category_dto.getIdCategory() != null) {
			Category oldCategory = (Category) category_Repository.findByIdCategory(category_dto.getIdCategory());
			category = category_Converter.category(category_dto, oldCategory);
		} else {
			category = category_Converter.category(category_dto);
		}

		category = category_Repository.save(category);
		return category_Converter.category_dto(category);
	}

	@Override
	public Category_dto findOneById(int id) {
		Category_dto category_dto = new Category_dto();
		category_dto.setIdCategory(id);
		if (category_dto.getIdCategory() != null) {
			Category category = category_Repository.findByIdCategory(category_dto.getIdCategory());
			category_dto = category_Converter.category_dto(category);
			return category_dto;
		}
		return null;
	}

	@Override
	public void delete(Integer[] id) {
		for (Integer integer : id) {
			category_Repository.deleteById(integer);
		}
	}

	@Override
	public List<Category_dto> findAll(Pageable pageable) {
		List<Category_dto> category_dtos = new ArrayList<>();
		List<Category> categories = category_Repository.findAll(pageable).getContent();
		for (Category category : categories) {
			Category_dto category_dto = category_Converter.category_dto(category);
			category_dtos.add(category_dto);
		}
		return category_dtos;
	}

}
