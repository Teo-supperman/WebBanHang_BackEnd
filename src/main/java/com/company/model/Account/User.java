package com.company.model.Account;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Data;

@Entity
@Data
@AllArgsConstructor
public class User implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idUser;

	@Column(columnDefinition = "nvarchar(255)")
	@Pattern(regexp = "^[a-zA-Z0-9].*", message = "What your name?")
	private String fullNameUser;

	private LocalDate birthDay;
	@Column(columnDefinition = "nvarchar(255)")
	@Pattern(regexp = "^[0-9]{8,}", message = "identityCard >8")
	private int identityCard;

	@Column(columnDefinition = "nvarchar(255)")
	private String Address;

	@Column(columnDefinition = "nvarchar(255)")
	private String status;


}
