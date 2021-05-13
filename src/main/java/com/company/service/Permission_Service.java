package com.company.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.company.dto.Permission_dto;

public interface Permission_Service {
	public Permission_dto save(Permission_dto permission_dto);// save and update

	public void delete(Integer[] id);

	public Permission_dto findOneById(int id);

	public List<Permission_dto> findAll(Pageable pageable);

	public List<Permission_dto> findAll();
}
