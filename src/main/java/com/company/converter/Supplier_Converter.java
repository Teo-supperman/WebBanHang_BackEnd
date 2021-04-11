package com.company.converter;

import org.springframework.stereotype.Component;

import com.company.dto.Supplier_dto;
import com.company.model.Supplier;

@Component
public class Supplier_Converter {
	public Supplier supplier(Supplier_dto supplier_dto) {
		Supplier supplier = new Supplier();
		supplier.setFullNameSupplier(supplier_dto.getFullNameSupplier());
		supplier.setAddress(supplier_dto.getAddress());
		return supplier;
	}

	public Supplier_dto supplier_dto(Supplier supplier) {
		Supplier_dto supplier_dto = new Supplier_dto();
		supplier_dto.setIdSupplier(supplier.getIdSupplier());
		supplier_dto.setFullNameSupplier(supplier.getFullNameSupplier());
		supplier_dto.setAddress(supplier.getAddress());
		return supplier_dto;
	}

	public Supplier supplier(Supplier supplier, Supplier_dto supplier_dto) {
		supplier.setFullNameSupplier(supplier_dto.getFullNameSupplier());
		supplier.setAddress(supplier_dto.getAddress());
		return supplier;
	}
}
