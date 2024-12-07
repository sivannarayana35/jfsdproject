package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Counsellor;
import com.example.demo.model.Customer;
import com.example.demo.repository.CounsellorRepository;
import com.example.demo.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private CounsellorRepository counsellorRepository;
	@Override
	public String customerRegistration(Customer customer) {
		customerRepository.save(customer);
		return "Customer Registered Successfully";
	}
	@Override
	public Customer checkCustomerLogin(String email, String password) 
	{
		return customerRepository.CheckCustomerLogin(email, password);
	}
	@Override
	public String updateCustomer(Customer customer) 
	{
		Customer c= customerRepository.findById(customer.getId()).get();
		c.setContact(customer. getContact());
		c.setDateofbirth(customer.getDateofbirth());
		c.setGender(customer.getGender());
		c.setLocation(customer.getLocation());
		c.setName(customer. getName());
		c.setPassword(customer.getPassword());

		customerRepository.save(c);
		
		return "Customer Updated Successfully";
		
		
	}
	
	
	

}
