package com.company.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.model.Account.Permission;

public interface Permission_Repository extends JpaRepository<Permission, Integer>{

}
