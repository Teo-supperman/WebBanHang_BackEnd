package com.company.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.service.Account_Service;

@Controller
public class LoginController {
	@Autowired
	private Account_Service account_Service;


	
}
