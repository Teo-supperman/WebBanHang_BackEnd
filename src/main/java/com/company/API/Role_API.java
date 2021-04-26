package com.company.API;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.company.dto.Role_dto;
import com.company.service.Role_Service;

@RestController
@RequestMapping("api/v1/role")
@CrossOrigin
public class Role_API {
	@Autowired
	private Role_Service role_Service;

	@PostMapping("/")
	public Role_dto createRole(@RequestBody Role_dto category_dto) {
		return role_Service.save(category_dto);
	}

	@PutMapping("/{id}")
	public Role_dto updateRole(@RequestBody Role_dto role_dto, @PathVariable("id") Integer id) {
		role_dto.setIdRole(id);
		return role_Service.save(role_dto);
	}

	@DeleteMapping("/")
	public void deleteRole(@RequestBody Integer[] id) {
		role_Service.delete(id);
	}

	@GetMapping("/")
	public List<Role_dto> role_dtos() {
		return role_Service.findAll(PageRequest.of(0, 5));
	}

	@GetMapping("/{id}")
	public Role_dto findOneRole(@RequestBody @PathVariable("id") Integer id) {
		return role_Service.findOneById(id);

	}
}
