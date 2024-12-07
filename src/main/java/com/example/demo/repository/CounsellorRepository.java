package com.example.demo.repository;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Counsellor;
import com.example.demo.model.Customer;

public interface CounsellorRepository extends CrudRepository<Counsellor, Long> {

}