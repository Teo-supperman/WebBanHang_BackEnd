package com.company.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.Account.User;

public interface User_Repository extends JpaRepository<User, Integer> {

}
