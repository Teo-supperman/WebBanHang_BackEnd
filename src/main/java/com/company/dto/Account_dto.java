package com.company.dto;

import java.io.Serializable;

public class Account_dto implements Serializable {

	private Integer idAccount;
	private Integer numberPhone;
	private String password;

	public int getNumberPhone() {
		return numberPhone;
	}

	public void setNumberPhone(int numberPhone) {
		this.numberPhone = numberPhone;
	}

	public Integer getIdAccount() {
		return idAccount;
	}

	public void setIdAccount(Integer idAccount) {
		this.idAccount = idAccount;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Account_dto [idAccount=" + idAccount + ", numberPhone=" + numberPhone + ", password=" + password + "]";
	}

}
