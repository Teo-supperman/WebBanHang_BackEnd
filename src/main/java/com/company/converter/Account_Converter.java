package com.company.converter;

import org.springframework.stereotype.Component;

import com.company.dto.Account_dto;
import com.company.model.Account.Account;

@Component
public class Account_Converter {
	public Account account(Account_dto account_dto) {
		Account account = new Account();
		account.setName(account_dto.getName());
		account.setPassword(account_dto.getPassword());
		account.setRole(account_dto.getRole());
		account.setAccountNonExpired(account_dto.isAccountNonExpired());
		account.setAccountNonLocked(account_dto.isAccountNonLocked());
		account.setCredentialsNonExpired(account_dto.isCredentialsNonExpired());
		account.setEnabled(account_dto.isEnabled());
		return account;
	}

	public Account_dto account_dto(Account account) {
		Account_dto account_dto = new Account_dto();
		account_dto.setName(account.getName());
		account_dto.setPassword(account.getPassword());
		account_dto.setRole(account.getRole());
		account_dto.setAccountNonExpired(account.isAccountNonExpired());
		account_dto.setAccountNonLocked(account.isAccountNonLocked());
		account_dto.setCredentialsNonExpired(account.isCredentialsNonExpired());
		account_dto.setEnabled(account.isEnabled());
		return account_dto;
	}

	public Account account(Account_dto account_dto,Account account) {
		account.setName(account_dto.getName());
		account.setPassword(account_dto.getPassword());
		account.setRole(account_dto.getRole());
		account.setAccountNonExpired(account_dto.isAccountNonExpired());
		account.setAccountNonLocked(account_dto.isAccountNonLocked());
		account.setCredentialsNonExpired(account_dto.isCredentialsNonExpired());
		account.setEnabled(account_dto.isEnabled());
		return account;
	}

}
