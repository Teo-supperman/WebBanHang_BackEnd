package com.company.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.cartbeans.GioHang;
import com.company.service.Category_Service;
import com.company.service.implement.Product_Service;

@Controller
public class HomeController {
	@Autowired
	private Product_Service product_Service;
	@Autowired 
	private Category_Service category_Service;
	
	@RequestMapping(value = {"/trangchu","/","/tatcasanpham"}, method = RequestMethod.GET)
	public String trangChu(Model model,Model model2,HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		GioHang gioHang = null;
		Object objGioHang = session.getAttribute("cart");
		
		if(objGioHang!=null) {
			gioHang = (GioHang) objGioHang;
		}
		else {
			gioHang = new GioHang();
			session.setAttribute("cart", gioHang);
		}
			model.addAttribute("listSanPham",product_Service.findAll() );
			model2.addAttribute("listDanhMuc",category_Service.findAll() );
			return "trangchu";
	}
}
