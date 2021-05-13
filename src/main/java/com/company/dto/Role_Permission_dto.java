package com.company.dto;

import com.company.model.Account.Role;

public class Role_Permission_dto {
	private Permission_dto permission;
	private Role role;

	public Permission_dto getPermission() {
		return permission;
	}

	public void setPermission(Permission_dto permission) {
		this.permission = permission;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

}
