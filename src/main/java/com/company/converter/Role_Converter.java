package com.company.converter;

import org.springframework.stereotype.Component;

import com.company.dto.Role_dto;
import com.company.model.Account.Role;

@Component
public class Role_Converter {
	public Role role(Role_dto role_dto) {
		Role role = new Role();
		role.setIdRole(role_dto.getIdRole());
		role.setName(role_dto.getName());
		return role;
	}

	public Role_dto role_dto(Role role) {
		Role_dto role_dto = new Role_dto();
		role_dto.setIdRole(role.getIdRole());
		role_dto.setName(role.getName());
		return role_dto;
	}

	public Role role(Role_dto role_dto, Role role) {
		role.setIdRole(role_dto.getIdRole());
		role.setName(role_dto.getName());
		return role;
	}
}
