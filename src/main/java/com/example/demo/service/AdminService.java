package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Admin;
import com.example.demo.model.Counsellor;
import com.example.demo.model.Customer;

public interface AdminService {
	
	public List<Customer> viewAllCustomers();
	public Admin checkAdminLogin(String uname,String pwd);
	public long customercount();
	
	public String deleteCustomer(int id);
	public Customer displayCustomerById(int id);
	
	
	}
