package com.company.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.Repository.Account_Repository;
import com.company.converter.Account_Converter;
import com.company.converter.Role_Converter;
import com.company.dto.Account_dto;
import com.company.dto.Role_dto;
import com.company.model.Account.Account;
import com.company.model.Account.Role;
import com.company.service.Account_Service;

@Service
public class Account_Service_Implement implements Account_Service {
	@Autowired
	private Account_Repository account_Repository;
	@Autowired
	private Account_Converter account_Converter;
	@Autowired
	private Role_Service_Implement role_Service_Implement;
	@Autowired
	private Role_Converter role_Converter;
	

	@Override
	public List<Account_dto> findAll() {
		List<Account_dto> account_dtos = new ArrayList<>();
		List<Account> accounts = account_Repository.findAll();
		for (Account account : accounts) {
			Account_dto account_dto = account_Converter.account_dto(account);
			account_dtos.add(account_dto);
		}
		return account_dtos;
	}

	/*
	 * @Override public UserDetails loadUserByUsername(String username) throws
	 * UsernameNotFoundException { return null;
	 * 
	 * }
	 */
	@Override
	public void delete(Integer[] id) {
		// TODO Auto-generated method stub
		for (Integer integer : id) {
			account_Repository.deleteById(integer);
		}
	}

	@Override
	public Account_dto save(Account_dto account_dto) {
		return account_dto;
		
	}

	@Override
	public Account_dto findOneById(Integer id) {
		// TODO Auto-generated method stub
		Account_dto account_dto = new Account_dto();
		account_dto.setId(id);
		if (account_dto.getId() != null) {
			Account account = account_Repository.findByIdAccount(account_dto.getId());
			account_dto = account_Converter.account_dto(account);
			return account_dto;
		}
		return null;
	}

	@Override
	public Account_dto findOneByName(String name) {
		// TODO Auto-generated method stub
		Account_dto account_dto = new Account_dto();
		account_dto.setName(name);
		if (account_dto.getName() != null) {
			Account account = account_Repository.findByName(account_dto.getName());
			account_dto = account_Converter.account_dto(account);
			return account_dto;
		}
		return null;
	}

	@Override
	public List<Account_dto> findByIdRole(Integer idRole) {
		// TODO Auto-generated method stub
		Role_dto role_dto = new Role_dto();
		role_dto = role_Service_Implement.findOneById(idRole);
		List<Account_dto> account_dtos = new ArrayList<Account_dto>();
		Role role = role_Converter.role(role_dto);
		List<Account> accounts = account_Repository.findByRole(role);
		for (Account account : accounts) {
			Account_dto account_dto = account_Converter.account_dto(account);
			account_dtos.add(account_dto);
		}
		return account_dtos;
	}


}
