package com.company.service;

import java.util.List;

import com.company.model.Order1;

public interface Order_Service {
	public Order1 add(Order1 order1);

	public Order1 update(Order1 order1);

	public Order1 remove(Order1 order1);

	public List<Order1> findAll();

	public List<Order1> findAllById(int id);
}
