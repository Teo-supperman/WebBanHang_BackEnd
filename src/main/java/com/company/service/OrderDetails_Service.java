package com.company.service;

import java.util.List;

import com.company.model.OrderDetails;

public interface OrderDetails_Service {
	public OrderDetails add(OrderDetails orderDetails);

	public OrderDetails update(OrderDetails orderDetails);

	public OrderDetails remove(OrderDetails orderDetails);

	public List<OrderDetails> findAll();

	public List<OrderDetails> findAllById(int id);

	public OrderDetails findAllByIdProductAndIdUser(int idUser, int idProductF);
}
