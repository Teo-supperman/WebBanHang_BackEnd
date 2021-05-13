package com.company.converter;

import org.springframework.stereotype.Component;

import com.company.dto.Permission_dto;
import com.company.model.Account.Permission;

@Component
public class Permission_Converter {
	public Permission permission(Permission_dto permission_dto) {
		Permission permission = new Permission();
		permission.setIdPermission(permission_dto.getIdPermission());
		permission.setName(permission_dto.getName());
		return permission;
	}

	public Permission_dto permission_dto(Permission permission) {
		Permission_dto permission_dto = new Permission_dto();
		permission_dto.setIdPermission(permission.getIdPermission());
		permission_dto.setName(permission.getName());
		return permission_dto;
	}

	public Permission permission(Permission_dto permission_dto, Permission permission) {
		permission.setIdPermission(permission_dto.getIdPermission());
		permission.setName(permission_dto.getName());
		return permission;
	}
}
