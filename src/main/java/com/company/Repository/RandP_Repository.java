package com.company.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.Account.Role;
import com.company.model.Account.Role_Permission;

public interface RandP_Repository extends JpaRepository<Role_Permission, Integer> {

	List<Role_Permission> findByRole(Role role);

}
