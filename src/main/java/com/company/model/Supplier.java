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

}
