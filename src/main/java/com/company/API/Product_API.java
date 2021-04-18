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

import com.company.dto.Product_dto;
import com.company.service.Product_Service;

@RestController
@RequestMapping("/product")
@CrossOrigin
public class Product_API {
	@Autowired
	private Product_Service product_Service;

	@PostMapping("/")
	public Product_dto createProduct(@RequestBody Product_dto product_dto) {
		return product_Service.save(product_dto);
	}

	@PutMapping("/{id}")
	public Product_dto updateProduct(@RequestBody Product_dto product_dto, @PathVariable("id") Integer id) {
		product_dto.setIdProduct(id);
		return product_Service.save(product_dto);
	}

	@DeleteMapping("/")
	public void deleteProduct(@RequestBody Integer[] id) {
		product_Service.delete(id);
	}

	@GetMapping("/")
	public List<Product_dto> product_dtos() {
		return product_Service.findAll(PageRequest.of(0, 20));
	}

	@GetMapping("/{id}")
	public Product_dto findOneProduct(@RequestBody @PathVariable("id") Integer id) {
		return product_Service.findOneById(id);

	}
}
