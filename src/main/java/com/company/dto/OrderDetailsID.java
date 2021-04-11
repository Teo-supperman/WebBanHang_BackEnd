package com.company.dto;

import java.io.Serializable;

import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


public class OrderDetailsID implements Serializable {
	private int idOrder;
	private int idProduct;
}
