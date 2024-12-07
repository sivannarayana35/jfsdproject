package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Counsellor;
import com.example.demo.repository.CounsellorRepository;

@Controller
public class CounsellorController {

    @Autowired
    private CounsellorRepository counsellorRepository;

    // Endpoint to display the form for adding a counsellor and show existing counsellors
    @GetMapping("/addcounsellor")
    public ModelAndView showCounsellorForm() {
        Iterable<Counsellor> counsellors = counsellorRepository.findAll();
        ModelAndView modelAndView = new ModelAndView("addcounsellor"); // Ensure this matches your actual JSP/HTML template name
        modelAndView.addObject("counsellors", counsellors);
        return modelAndView;
    }

    // Endpoint to handle form submission for adding a counsellor
    @PostMapping("/counsellordata")
    public String addCounsellor(Counsellor counsellor) {
        counsellorRepository.save(counsellor); // Save the counsellor to the database
        return "redirect:/addcounsellor"; // Redirect to the list page (or a success page)
    }
    

    
}
