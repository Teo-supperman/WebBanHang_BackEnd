package com.company.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.Account;

public interface Account_Repository extends JpaRepository<Account, String> {

}
