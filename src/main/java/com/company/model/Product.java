package com.company.model;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Data
@AllArgsConstructor
public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idProduct;

	@Column(columnDefinition = "nvarchar(255)")
	@NotNull(message = "What is the product name?")
	private String fullName;

	private LocalDate dateOfProduction;

	@Column(columnDefinition = "nvarchar(255)")
	private String Description;

	private float price;
	private int amount;
	private String url;
	private String status;
	
	@ManyToOne
	@JoinColumn(name = "idSupplier")
	private Supplier supplier;
	
	@ManyToOne
	@JoinColumn(name = "idCategory")
	private Category category;

}
