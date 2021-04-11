package com.company.service.implement;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.company.Repository.Supplier_Repository;
import com.company.converter.Supplier_Converter;
import com.company.dto.Supplier_dto;
import com.company.model.Supplier;
import com.company.service.Supplier_Service;

@Service
public class Supplier_Service_Implement implements Supplier_Service {
	@Autowired
	private Supplier_Repository supplier_Repository;
	@Autowired
	private Supplier_Converter supplier_Converter;

	@Override
	public Supplier_dto save(Supplier_dto supplier_dto) {
		Supplier supplier = new Supplier();
		if (supplier_dto.getIdSupplier() != null) {
			Supplier oldSupplier = supplier_Repository.findByIdSupplier(supplier_dto.getIdSupplier());
			supplier = supplier_Converter.supplier(oldSupplier, supplier_dto);
		} else {
			supplier = supplier_Converter.supplier(supplier_dto);
		}
		supplier = supplier_Repository.save(supplier);
		return supplier_Converter.supplier_dto(supplier);
	}

	@Override
	public void delete(Integer[] id) {
		for (Integer integer : id) {
			supplier_Repository.deleteById(integer);
		}

	}

	@Override
	public Supplier_dto findOneById(int id) {
		// TODO Auto-generated method stub
		Supplier_dto supplier_dto = new Supplier_dto();
		supplier_dto.setIdSupplier(id);
		if (supplier_dto.getIdSupplier() != null) {
			Supplier supplier = supplier_Repository.findByIdSupplier(supplier_dto.getIdSupplier());
			supplier_dto = supplier_Converter.supplier_dto(supplier);
			return supplier_dto;
		}
		return null;
	}

	@Override
	public List<Supplier_dto> findAll(Pageable pageable) {
		List<Supplier_dto> supplier_dtos = new ArrayList<>();
		List<Supplier> suppliers = supplier_Repository.findAll(pageable).getContent();
		for (Supplier supplier : suppliers) {
			Supplier_dto supplier_dto = supplier_Converter.supplier_dto(supplier);
			supplier_dtos.add(supplier_dto);
		}
		return supplier_dtos;
	}

}
