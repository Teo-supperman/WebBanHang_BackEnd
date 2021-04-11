package com.company.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.Supplier;

public interface Supplier_Repository extends JpaRepository<Supplier, Integer> {

	Supplier findByIdSupplier(Integer idSupplier);

}
