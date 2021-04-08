package com.company.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Data
@AllArgsConstructor
public class Account implements Serializable {

	@Id
	@Pattern(regexp = "^[0-9].*", message = "You'll use this when you log in and if you ever need to reset your password")
	private int idAccount;
	@Pattern(regexp = "^[a-zA-Z0-9].*", message = "Enter a combination of at least six numbers, letters and punctuation marks(such as ! and &)")
	private String password;

}
