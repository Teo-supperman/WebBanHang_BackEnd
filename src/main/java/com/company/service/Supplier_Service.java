package com.company.service;

import java.util.List;

import com.company.model.Supplier;

public interface Supplier_Service {
	public Supplier add(Supplier supplier);

	public Supplier update(Supplier supplier);

	public Supplier remove(Supplier supplier);

	public List<Supplier> findAll();

	public List<Supplier> findAllById(int id);
}
