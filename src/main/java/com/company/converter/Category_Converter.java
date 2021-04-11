package com.company.converter;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;

import com.company.dto.Category_dto;
import com.company.model.Category;

@Component
public class Category_Converter {
	public Category category(Category_dto category_dto) {
		Category category = new Category();
		category.setFullNameCategory(category_dto.getFullNameCategory());
		return category;
	}

	public Category_dto category_dto(Category category) {
		Category_dto category_dto = new Category_dto();
		category_dto.setFullNameCategory(category.getFullNameCategory());
		return category_dto;
	}

	public Category category(Category_dto category_dto, Category category) {
		category.setFullNameCategory(category_dto.getFullNameCategory());
		return category;
	}
}
