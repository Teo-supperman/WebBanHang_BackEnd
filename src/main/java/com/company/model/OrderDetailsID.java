package com.company.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Embeddable
@Data
@AllArgsConstructor
public class OrderDetailsID implements Serializable {
	private int idOrder;
	private int idProduct;
}
