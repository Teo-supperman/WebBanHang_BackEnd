package com.company.dto;

import java.io.Serializable;

public class Category_dto implements Serializable {

	private Integer idCategory;
	private String fullNameCategory;

	public String getFullNameCategory() {
		return fullNameCategory;
	}

	public void setFullNameCategory(String fullNameCategory) {
		this.fullNameCategory = fullNameCategory;
	}

	public Integer getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(Integer idCategory) {
		this.idCategory = idCategory;
	}

	@Override
	public String toString() {
		return "Category_dto [idCategory=" + idCategory + ", fullNameCategory=" + fullNameCategory + "]";
	}

}
