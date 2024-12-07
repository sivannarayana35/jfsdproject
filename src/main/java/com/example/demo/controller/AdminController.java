package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		
		long count = adminService.customercount();
		mv.addObject("count", count);
		return mv;
	}
	
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
	
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		
		if(admin!=null) {
			mv.setViewName("adminhome");
			
			long count = adminService.customercount();
			mv.addObject("count", count);
			
		}
		else {
			mv.setViewName("adminloginfail");
			mv.addObject("message","Login Failed");

		}
		return mv;
		}
	
		@GetMapping("viewallcustomers")
		public ModelAndView viewallcustomers()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("viewallcustomers");
			
			long count = adminService.customercount();
			mv.addObject("count", count);
			
			List<Customer> customers = adminService.viewAllCustomers();
			mv.addObject("customerlist",customers);
			
			return mv;
		}

		@GetMapping("deletecustomer")
		public ModelAndView deletecustomer()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("deletecustomer");
			
			List<Customer> customers = adminService.viewAllCustomers();
			mv.addObject("customerlist",customers);
			
			return mv;
		}
		
		@GetMapping("delete")
		public String delete(@RequestParam int id) 
		{
			adminService.deleteCustomer(id);
			return "redirect:/deletecustomer";
			
		}
		
		@GetMapping("viewcustomerbyid")
		public ModelAndView viewcustomerbyid()
		{
			ModelAndView mv = new ModelAndView();
			
			
			List<Customer> customers = adminService.viewAllCustomers();
			mv.addObject("customerlist",customers);
			
			mv.setViewName("viewcustomerbyid");
			return mv;
		}
		@PostMapping("displaycustomer")
		public ModelAndView displaycustomer(HttpServletRequest request) 
		{
			int id = Integer.parseInt(request.getParameter("id"));
			
			Customer customer = adminService.displayCustomerById(id);
			ModelAndView mv = new ModelAndView("displaycustomer");
			mv.addObject("c",customer);
			return mv;
			
		}

}	

