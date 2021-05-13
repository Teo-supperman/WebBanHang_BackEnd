package com.company.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.Account.Account;
import com.company.model.Account.Role;

public interface Account_Repository extends JpaRepository<Account, Integer> {

	public Account findByIdAccount(Integer idAccount);
	public Account findByName(String name);
	public List<Account> findByRole(Role role);

}
