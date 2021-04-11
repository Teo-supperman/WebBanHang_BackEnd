package com.company.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.company.dto.Supplier_dto;

public interface Supplier_Service {
	public Supplier_dto save(Supplier_dto supplier_dto);// save and update

	public void delete(Integer[] id);

	public Supplier_dto findOneById(int id);

	public List<Supplier_dto> findAll(Pageable pageable);
}
