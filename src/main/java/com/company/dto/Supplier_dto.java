package com.company.dto;

import java.io.Serializable;

public class Supplier_dto implements Serializable {

	private Integer idSupplier;

	private String fullNameSupplier;

	private String address;

	public Integer getIdSupplier() {
		return idSupplier;
	}

	public void setIdSupplier(Integer idSupplier) {
		this.idSupplier = idSupplier;
	}

	public String getFullNameSupplier() {
		return fullNameSupplier;
	}

	public void setFullNameSupplier(String fullNameSupplier) {
		this.fullNameSupplier = fullNameSupplier;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	

}
