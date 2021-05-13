package com.company.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.company.Repository.RandP_Repository;
import com.company.Repository.Role_Repository;
import com.company.converter.Permission_Converter;
import com.company.converter.Role_Converter;
import com.company.dto.Permission_dto;
import com.company.dto.Role_Permission_dto;
import com.company.dto.Role_dto;
import com.company.model.Account.Permission;
import com.company.model.Account.Role;
import com.company.model.Account.Role_Permission;
import com.company.service.Role_Service;

@Service
public class Role_Service_Implement implements Role_Service {
	@Autowired
	private Role_Repository role_Repository;
	@Autowired
	private RandP_Repository randp_Repository;
	@Autowired
	private Role_Converter role_Converter;
	@Autowired
	private Permission_Converter permission_Converter;

	@Override
	public Role_dto save(Role_dto role_dto) {
		Role role = new Role();
		if (role_dto.getIdRole() != null) {
			// Role oldRole = role_Repository.findByIdRole(role_dto.getIdRole());
			// role = role_Converter.role(role_dto, oldRole);
		} else {
			role = role_Converter.role(role_dto);
		}
		role = role_Repository.save(role);
		return role_Converter.role_dto(role);
	}

	@Override
	public void delete(Integer[] id) {
		// TODO Auto-generated method stub
		for (Integer integer : id) {
			role_Repository.deleteById(integer);
		}

	}

	@Override
	public Role_dto findOneById(int id) {
		Role_dto role_dto = new Role_dto();
		role_dto.setIdRole(id);
		if (role_dto.getIdRole() != null) {
			Role role = role_Repository.findByIdRole(role_dto.getIdRole());
			role_dto = role_Converter.role_dto(role);
			return role_dto;
		}
		return null;
	}

	@Override
	public List<Role_dto> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		List<Role_dto> role_dtos = new ArrayList<>();
		List<Role> roles = role_Repository.findAll(pageable).getContent();
		for (Role role : roles) {
			Role_dto role_dto = role_Converter.role_dto(role);
			role_dtos.add(role_dto);
		}
		return role_dtos;
	}

	@Override
	public List<Role_dto> findAll() {
		List<Role_dto> role_dtos = new ArrayList<>();
		List<Role> roles = role_Repository.findAll();
		for (Role role : roles) {
			Role_dto role_dto = role_Converter.role_dto(role);
			role_dtos.add(role_dto);
		}
		return role_dtos;
	}

	@Override
	public List<Permission> ListPermissionOfRole(Role role) {
		// TODO Auto-generated method stub
		List<Permission> permissions = new ArrayList<Permission>();
		List<String> listRoleName = new ArrayList<String>();
		List<Role_Permission> listRandP = randp_Repository.findByRole(role);
		for (Role_Permission role_Permission : listRandP) {
			Permission permission = role_Permission.getPermission();

			permissions.add(permission);
		}
		return permissions;
	}

}
