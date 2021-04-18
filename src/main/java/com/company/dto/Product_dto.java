package com.company.dto;

import java.io.Serializable;
import java.time.LocalDate;

import com.company.model.Category;
import com.company.model.Supplier;

public class Product_dto implements Serializable {

	private Integer idProduct;

	private String fullName;

	private LocalDate dateOfProduction;

	private String Description;

	private float price;
	private int amount;
	private String url;
	private String status;

	private Supplier supplier;

	private Category category;

	public Integer getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(Integer idProduct) {
		this.idProduct = idProduct;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public LocalDate getDateOfProduction() {
		return dateOfProduction;
	}

	public void setDateOfProduction(LocalDate dateOfProduction) {
		this.dateOfProduction = dateOfProduction;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
