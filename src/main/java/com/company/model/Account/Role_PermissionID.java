package com.company.model.Account;

import java.io.Serializable;

import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Data;

@Embeddable
@Data
@AllArgsConstructor
public class Role_PermissionID implements Serializable{
	private int idPermission;
	private int idRole;
}
