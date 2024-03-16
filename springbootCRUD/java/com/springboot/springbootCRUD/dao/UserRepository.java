package com.springboot.springbootCRUD.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.springbootCRUD.entities.Employee;

public interface UserRepository extends JpaRepository<Employee, Long> {

}
