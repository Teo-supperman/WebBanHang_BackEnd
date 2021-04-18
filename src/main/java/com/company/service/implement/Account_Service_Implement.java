package com.company.service.implement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.company.Repository.Account_Repository;
import com.company.converter.Account_Converter;
import com.company.dto.Account_dto;
import com.company.model.Account;
import com.company.service.Account_Service;

@Service
public class Account_Service_Implement implements Account_Service {
	@Autowired
	private Account_Repository account_Repository;
	@Autowired
	private Account_Converter account_Converter;

	@Override
	public void delete(Integer[] id) {
		for (Integer integer : id) {
			account_Repository.deleteById(integer);
		}

	}

	@Override
	public Account_dto save(Account_dto account_dto) {
		Account account = new Account();
		if (account_dto.getIdAccount() != null) {
			Account oldAccount = account_Repository.findByIdAccount(account_dto.getIdAccount());
			account = account_Converter.account(oldAccount, account_dto);
		} else {
			account = account_Converter.account(account_dto);
		}
		account = account_Repository.save(account);
		return account_Converter.account_dto(account);
	}

	@Override
	public Account_dto findOneById(Integer id) {
		// TODO Auto-generated method stub
		Account_dto account_dto = new Account_dto();
		account_dto.setIdAccount(id);
		if (account_dto.getIdAccount() != null) {
			Account account = account_Repository.findByIdAccount(account_dto.getIdAccount());
			account_dto = account_Converter.account_dto(account);
			return account_dto;
		}
		return null;
	}

	@Override
	public List<Account_dto> findAll(Pageable of) {
		List<Account_dto> account_dtos = new ArrayList<>();
		List<Account> accounts = account_Repository.findAll(of).getContent();
		for (Account account : accounts) {
			Account_dto account_dto = account_Converter.account_dto(account);
			account_dtos.add(account_dto);
		}
		return account_dtos;
	}

}
