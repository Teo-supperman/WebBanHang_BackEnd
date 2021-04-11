package com.company.service.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.Repository.Product_Repository;
import com.company.model.Product;

@Service
public class Product_Service implements com.company.service.Product_Service {
	@Autowired
	private Product_Repository product_Repository;

	@Override
	public Product add(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product update(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product remove(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product findAllById(int id) {
		// TODO Auto-generated method stub
		return product_Repository.getById(id);
	}

}
