package com.company.dto;

import java.io.Serializable;
import java.time.LocalDate;

public class Product implements Serializable {

	private Integer idProduct;

	private String fullName;

	private LocalDate dateOfProduction;

	private String Description;

	private float price;
	private int amount;
	private String url;
	private String status;

	private Supplier_dto supplier;

	private Category_dto category;

}
