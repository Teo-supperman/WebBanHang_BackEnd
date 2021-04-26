package com.company.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.company.dto.Product_dto;

public interface Product_Service {
	public Product_dto save(Product_dto product_dto);// save and update

	public void delete(Integer[] id);

	public Product_dto findOneById(int id);

	public Product_dto findByIdSupplier(int id);

	public List<Product_dto> findAll(Pageable pageable);
	public List<Product_dto> findByIdCategory(Integer idCategory);
}
