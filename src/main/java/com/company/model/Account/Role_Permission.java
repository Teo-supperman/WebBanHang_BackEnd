package com.company.model.Account;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Data
@AllArgsConstructor
public class Role_Permission implements Serializable {
	@EmbeddedId
	private Role_PermissionID orderDetailsID;

	@ManyToOne
	@MapsId("idRole")
	@JoinColumn(name = "idRole")
	private Role role;

	@ManyToOne
	@MapsId("idPermission")
	@JoinColumn(name = "idPermission")
	private Permission permission;

	public Role_PermissionID getOrderDetailsID() {
		return orderDetailsID;
	}

	public void setOrderDetailsID(Role_PermissionID orderDetailsID) {
		this.orderDetailsID = orderDetailsID;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Permission getPermission() {
		return permission;
	}

	public void setPermission(Permission permission) {
		this.permission = permission;
	}

}
