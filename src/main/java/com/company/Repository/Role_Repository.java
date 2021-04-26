package com.company.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.Account.Role;

public interface Role_Repository extends JpaRepository<Role, Integer>{

	public Role findByIdRole(Integer idRole);

}
