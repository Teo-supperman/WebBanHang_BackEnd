package com.company.service;

import java.util.List;

import com.company.model.User;

public interface User_Service {
	public User add(User user);

	public User update(User user);

	public User remove(User user);

	public List<User> findAll();

	public List<User> findAllById(int id);
}
