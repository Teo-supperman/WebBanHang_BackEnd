package com.company.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.Repository.Product_Repository;
import com.company.converter.Category_Converter;
import com.company.converter.Product_Converter;
import com.company.dto.Category_dto;
import com.company.dto.Product_dto;
import com.company.model.Category;
import com.company.model.Product;
import com.company.service.Product_Service;

@Service
public class Product_Service_Implement implements Product_Service {
	@Autowired
	private Product_Repository product_Repository;
	@Autowired
	private Product_Converter product_Converter;
	@Autowired
	private Category_Service_Implement category_Service_Implement;
	@Autowired
	private Category_Converter category_Converter;
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
	public List<Product_dto> findAll() {
		// TODO Auto-generated method stub
		List<Product_dto> product_dtos = new ArrayList<>();
		List<Product> products = product_Repository.findAll();
		for (Product product : products) {
			Product_dto product_dto = product_Converter.product_dto(product);
			product_dtos.add(product_dto);
		}
		return product_dtos;
	}

	@Override
	public List<Product_dto> findByIdCategory(Integer idCategory) {
		Category_dto category_dto = new Category_dto();
		category_dto = category_Service_Implement.findOneById(idCategory);
		List<Product_dto> product_dtos = new ArrayList<Product_dto>();
		Category category = category_Converter.category(category_dto);
		
		List<Product> products = product_Repository.findByCategory(category);
		for (Product product : products) {
			Product_dto product_dto = product_Converter.product_dto(product);
			product_dtos.add(product_dto);
		}
		return product_dtos;
	}

}
