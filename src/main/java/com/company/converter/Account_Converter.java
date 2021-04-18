package com.company.converter;

import org.springframework.stereotype.Component;

import com.company.dto.Account_dto;
import com.company.model.Account;

@Component
public class Account_Converter {
	public Account account(Account_dto account_dto) {
		Account account = new Account();
		account.setNumberPhone(account_dto.getNumberPhone());
		account.setPassword(account_dto.getPassword());
		return account;
	}

	public Account_dto account_dto(Account account) {
		Account_dto account_dto = new Account_dto();
		account_dto.setNumberPhone(account.getNumberPhone());
		account_dto.setPassword(account.getPassword());
		return account_dto;
	}

	public Account account(Account account, Account_dto account_dto) {
		account.setNumberPhone(account_dto.getNumberPhone());
		account.setPassword(account_dto.getPassword());
		return account;
	}

}
