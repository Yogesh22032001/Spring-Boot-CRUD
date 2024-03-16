package com.springboot.springbootCRUD.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springboot.springbootCRUD.entities.Employee;

import jakarta.persistence.PersistenceContext;

@Repository
public class EmploeeDao {
	
	@Autowired
	UserRepository userRepository;
	
	public void saveEmployee(Employee employee) {
		userRepository.save(employee);
	}

	public List<Employee> searchAll() {
		
		return userRepository.findAll();
	}

	public Employee searchById(long id) {
		if (userRepository.existsById(id)) {
			return userRepository.getById(id);
		}else {
			return null;
		}
		
	}

	public void editEmployee(Employee employee) {
		// TODO Auto-generated method stub
		userRepository.save(employee);
		
		
	}

	public void deleteEmployee(long id) {
		// TODO Auto-generated method stub
		userRepository.deleteById(id);
	}
}
