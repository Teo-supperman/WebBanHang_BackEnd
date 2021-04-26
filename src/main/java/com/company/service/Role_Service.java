package com.company.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.company.dto.Role_dto;

public interface Role_Service {
	public Role_dto save(Role_dto role_dto);// save and update

	public void delete(Integer[] id);

	public Role_dto findOneById(int id);

	public List<Role_dto> findAll(Pageable pageable);
	public List<Role_dto> findAll();

	
}
