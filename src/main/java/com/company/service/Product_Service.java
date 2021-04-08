package com.company.service;

import java.util.List;

import com.company.model.Product;

public interface Product_Service {
	public Product add(Product product);

	public Product update(Product product);

	public Product remove(Product product);

	public List<Product> findAll();

	public List<Product> findAllById(int id);
}
