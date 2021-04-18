package com.company.service;

import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import com.company.dto.Account_dto;
import com.company.dto.Category_dto;
import com.company.model.Account;

public interface Account_Service {

	public List<Account_dto> findAll(Pageable of);

	public void delete(Integer[] id);

	public Account_dto save(Account_dto account_dto);

	public Account_dto findOneById(Integer id);

}
