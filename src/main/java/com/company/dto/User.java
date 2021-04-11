package com.company.dto;

import java.io.Serializable;
import java.time.LocalDate;

public class User implements Serializable {

	private Integer idUser;

	private String fullNameUser;

	private LocalDate birthDay;

	private int identityCard;

	private String Address;

	private String status;

	private Account_dto account;

}
