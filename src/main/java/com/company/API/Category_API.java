package com.company.API;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.company.dto.Category_dto;
import com.company.service.Category_Service;

@RestController
@RequestMapping("/category")
@CrossOrigin
public class Category_API {
	@Autowired
	private Category_Service category_Service;
	@PostMapping("/")
	public Category_dto createCategory(@RequestBody Category_dto category_dto) {
		return category_Service.save(category_dto);
	}

	@PutMapping("/{id}")
	public Category_dto updateCategory(@RequestBody Category_dto category_dto, @PathVariable("id") Integer id) {
		category_dto.setIdCategory(id);
		return category_Service.save(category_dto);
	}

	@DeleteMapping("/")
	public void deleteCategory(@RequestBody Integer[] id) {
		category_Service.delete(id);
	}
	@GetMapping("/")
	public List<Category_dto> category_dtos() {
		return category_Service.findAll(PageRequest.of(0, 5));
	}

	@GetMapping("/{id}")
	public Category_dto findOneCategory(@RequestBody @PathVariable("id") Integer id) {
		return category_Service.findOneById(id);

	}
}
