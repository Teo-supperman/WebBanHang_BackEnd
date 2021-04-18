package com.company.converter;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;

import com.company.dto.Category_dto;
import com.company.dto.Product_dto;
import com.company.model.Category;
import com.company.model.Product;

@Component
public class Product_Converter {
	public Product product(Product_dto product_dto) {
		Product product = new Product();
		product.setIdProduct(product_dto.getIdProduct());
		product.setFullName(product_dto.getFullName());
		product.setDateOfProduction(product_dto.getDateOfProduction());
		product.setDescription(product_dto.getDescription());
		product.setPrice(product_dto.getPrice());
		product.setAmount(product_dto.getAmount());
		product.setUrl(product_dto.getUrl());
		product.setStatus(product_dto.getStatus());
		product.setSupplier(product_dto.getSupplier());
		product.setCategory(product_dto.getCategory());
		return product;
	}

	public Product_dto product_dto(Product product) {
		Product_dto product_dto = new Product_dto();
		product_dto.setIdProduct(product.getIdProduct());
		product_dto.setFullName(product.getFullName());
		product_dto.setDateOfProduction(product.getDateOfProduction());
		product_dto.setDescription(product.getDescription());
		product_dto.setPrice(product.getPrice());
		product_dto.setAmount(product.getAmount());
		product_dto.setUrl(product.getUrl());
		product_dto.setStatus(product.getStatus());
		product_dto.setSupplier(product.getSupplier());
		product_dto.setCategory(product.getCategory());
		return product_dto;
	}

	public Product product(Product_dto product_dto, Product product) {
		product.setIdProduct(product_dto.getIdProduct());
		product.setFullName(product_dto.getFullName());
		product.setDateOfProduction(product_dto.getDateOfProduction());
		product.setDescription(product_dto.getDescription());
		product.setPrice(product_dto.getPrice());
		product.setAmount(product_dto.getAmount());
		product.setUrl(product_dto.getUrl());
		product.setStatus(product_dto.getStatus());
		product.setSupplier(product_dto.getSupplier());
		product.setCategory(product_dto.getCategory());
		return product;
	}
}
