package com.company.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import javax.transaction.Transactional;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Data
@AllArgsConstructor
public class OrderDetails implements Serializable {
	
	@EmbeddedId
	private OrderDetailsID orderDetailsID;

	@ManyToOne
	@MapsId("idProduct")
	@JoinColumn(name = "idProduct")
	private Product product;

	@ManyToOne
	@MapsId("idOrder")
	@JoinColumn(name = "idOrder")
	private Order1 order;

	private int amount;

	private float price;

}