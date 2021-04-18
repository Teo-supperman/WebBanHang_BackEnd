package com.company.API;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.company.dto.Product_dto;
import com.company.service.Category_Service;
import com.company.service.Product_Service;

@RestController
@RequestMapping("/home")
@CrossOrigin
public class Home_API {
	@Autowired
	private Product_Service product_Service;
	@Autowired
	private Category_Service category_Service;

	@GetMapping("/")
	public List<Product_dto> product_dtos() {
		return product_Service.findAll(PageRequest.of(0, 5));
	}
}
