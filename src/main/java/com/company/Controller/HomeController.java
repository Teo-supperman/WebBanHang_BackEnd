package com.company.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.company.service.Category_Service;
import com.company.service.Product_Service;
import com.company.service.User_Service;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private Product_Service product_Service;
	@Autowired
	private Category_Service category_Service;
	@Autowired
	private User_Service user_Service;
	// @Autowired
	// private EmailService emailService;
	// @Autowired
	// private DonDatHangService datHangService;

	// private static PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@GetMapping(value = { "/homepage", "/", "", "/allproduct" })
	public String homepage(Model model, Model model2, HttpServletRequest request, HttpServletResponse response) {
		model.addAttribute("listProduct", product_Service.findAll());
		model2.addAttribute("listCategory", category_Service.findAll());
		return "home";
	}
}
