package com.company.API;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.company.dto.Account_dto;
import com.company.dto.Category_dto;
import com.company.service.Account_Service;

@RestController
@RequestMapping("/account")
public class Account_API {
	@Autowired
	private Account_Service account_Service;
	@PostMapping("/")
	public Account_dto create(@RequestBody Account_dto account_dto) {
		return account_Service.save(account_dto);
	}

	@PutMapping("/{id}")
	public Account_dto update(@RequestBody Account_dto account_dto, @PathVariable("id") Integer id) {
		account_dto.setIdAccount(id);
		return account_Service.save(account_dto);
	}

	@DeleteMapping("/")
	public void delete(@RequestBody Integer[] id) {
		account_Service.delete(id);
	}

	@GetMapping("/")
	public List<Account_dto> account_dtos() {
		return account_Service.findAll(PageRequest.of(0, 5));
	}

	@GetMapping("/{id}")
	public Account_dto findOne(@RequestBody @PathVariable("id") Integer id) {
		return account_Service.findOneById(id);

	}
}
