package com.example.demo.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Appointment;
import com.example.demo.model.Counsellor;
import com.example.demo.repository.AppointmentRepository;
import com.example.demo.repository.CounsellorRepository;

import java.util.List;

@Service
public class AppointmentService {
	 @Autowired
	    private CounsellorRepository counsellorRepository;
    @Autowired
    private AppointmentRepository appointmentRepository;

    public void saveAppointment(Appointment appointment) {
    	
        appointmentRepository.save(appointment);
    }

    public List<Appointment> getAllAppointments() {
        return appointmentRepository.findAll();
    }
    
}

