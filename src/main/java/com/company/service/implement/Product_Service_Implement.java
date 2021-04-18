package com.company.service.implement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.company.Repository.Product_Repository;
import com.company.converter.Product_Converter;
import com.company.dto.Product_dto;
import com.company.model.Product;
import com.company.service.Product_Service;

@Service
public class Product_Service_Implement implements Product_Service {
	@Autowired
	private Product_Repository product_Repository;
	@Autowired
	private Product_Converter product_Converter;

	@Override
	public Product_dto save(Product_dto product_dto) {
		Product product = new Product();
		if (product_dto.getIdProduct() != null) {
			Product oldProduct = product_Repository.findByIdProduct(product_dto.getIdProduct());
			product = product_Converter.product(product_dto, oldProduct);

		} else {
			product = product_Converter.product(product_dto);
		}
		product = product_Repository.save(product);
		return product_Converter.product_dto(product);
	}

	@Override
	public void delete(Integer[] id) {
		// TODO Auto-generated method stub
		for (Integer integer : id) {
			product_Repository.deleteById(integer);
		}

	}

	@Override
	public Product_dto findOneById(int id) {
		// TODO Auto-generated method stub
		Product_dto product_dto = new Product_dto();
		product_dto.setIdProduct(id);
		if (product_dto.getIdProduct() != null) {
			Product product = product_Repository.findByIdProduct(product_dto.getIdProduct());
			product_dto = product_Converter.product_dto(product);
			return product_dto;
		}
		return null;
	}

	@Override
	public Product_dto findByIdSupplier(int id) {
		// TODO Auto-generated method stub
		Product_dto product_dto = new Product_dto();

		return null;
	}

	@Override
	public Product_dto findByIdCategory(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product_dto> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		List<Product_dto> product_dtos = new ArrayList<>();
		List<Product> products = product_Repository.findAll(pageable).getContent();
		for (Product product : products) {
			Product_dto product_dto = product_Converter.product_dto(product);
			product_dtos.add(product_dto);
		}
		return product_dtos;
	}

}
