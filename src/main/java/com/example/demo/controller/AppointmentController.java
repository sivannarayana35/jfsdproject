package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Appointment;
import com.example.demo.repository.CounsellorRepository;
import com.example.demo.service.AppointmentService;


	@Controller
	public class AppointmentController {
		 @Autowired
		    private CounsellorRepository counsellorRepository;
		 
	    @Autowired
	    private AppointmentService appointmentService;

	    // Display the appointment scheduling form
	    @GetMapping("/AppointmentScheduling")
	    public ModelAndView showAppointmentForm() {
	        ModelAndView mv = new ModelAndView("AppointmentScheduling");
	        mv.addObject("appointment", new Appointment());
	        return mv;
	    }

	    // Process the submitted appointment form
	    @PostMapping("/processAppointment")
	    public ModelAndView processAppointmentForm(@ModelAttribute Appointment appointment) {
	        appointmentService.saveAppointment(appointment);
	        return new ModelAndView("redirect:/customerhome");
	    }

	    // Display all appointments
	    @GetMapping("/processAppointment")
	    public ModelAndView showAppointments() {
	        List<Appointment> appointments = appointmentService.getAllAppointments();
	        ModelAndView mv = new ModelAndView("processAppointment");
	        mv.addObject("appointments", appointments);
	        return mv;
	    }
	
	  
	}
	
	
