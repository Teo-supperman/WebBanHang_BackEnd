package com.company.RestController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.company.dto.Supplier_dto;
import com.company.service.Supplier_Service;

@RestController
@RequestMapping("/supplier")
public class Supplier_RestController {
	@Autowired
	private Supplier_Service supplier_Service;

	@PostMapping("/")
	public Supplier_dto createCategory(@RequestBody Supplier_dto supplier_dto) {
		return supplier_Service.save(supplier_dto);
	}

	@PutMapping("/{id}")
	public Supplier_dto updateCategory(@RequestBody Supplier_dto supplier_dto, @PathVariable("id") Integer id) {
		supplier_dto.setIdSupplier(id);
		return supplier_Service.save(supplier_dto);
	}

	@DeleteMapping("/")
	public void deleteCategory(@RequestBody Integer[] id) {
		supplier_Service.delete(id);
	}

	@GetMapping("/")
	public List<Supplier_dto> category_dtos() {
		return supplier_Service.findAll(PageRequest.of(0, 5));
	}

	@GetMapping("/{id}")
	public Supplier_dto findOneCategory(@RequestBody @PathVariable("id") Integer id) {
		return supplier_Service.findOneById(id);

	}

}
