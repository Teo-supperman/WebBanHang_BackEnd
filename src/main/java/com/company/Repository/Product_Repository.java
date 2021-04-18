package com.company.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.Product;

public interface Product_Repository extends JpaRepository<Product, Integer> {

	Product findByIdProduct(Integer idProduct);

	

}
