package com.company.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.company.dto.Role_dto;
import com.company.model.Account.Permission;
import com.company.model.Account.Role;

public interface Role_Service {
	public Role_dto save(Role_dto role_dto);// save and update

	public void delete(Integer[] id);

	public Role_dto findOneById(int id);

	public List<Role_dto> findAll(Pageable pageable);
	public List<Role_dto> findAll();
	
	public  List<Permission> ListPermissionOfRole(Role role);

	
}
