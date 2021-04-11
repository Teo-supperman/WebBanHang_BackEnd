package com.company.dto;

import java.io.Serializable;
import java.time.LocalDate;

public class Order1 implements Serializable {

	private Integer idOrder;
	private LocalDate dateOfBill;

	private User user;

}
