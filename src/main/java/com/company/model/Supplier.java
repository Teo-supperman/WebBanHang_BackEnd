package com.company.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Data
@AllArgsConstructor
public class Supplier implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idSupplier;

	@Column(columnDefinition = "nvarchar(255)")
	private String fullNameSupplier;

	@Column(columnDefinition = "nvarchar(255)")
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
