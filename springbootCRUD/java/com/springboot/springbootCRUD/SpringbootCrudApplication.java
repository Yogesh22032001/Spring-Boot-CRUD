package com.springboot.springbootCRUD;

import java.sql.Date;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.springboot.springbootCRUD.dao.UserRepository;
import com.springboot.springbootCRUD.entities.Employee;

@SpringBootApplication
public class SpringbootCrudApplication {

	public static void main(String[] args) {
		
		//SpringApplication.run(SpringbootCrudApplication.class, args);
		
		ConfigurableApplicationContext cac =SpringApplication.run(SpringbootCrudApplication.class, args);
		
		UserRepository userRepository = cac.getBean(UserRepository.class);
//		
//		Date d = new Date(2001, 10, 10);
//		Long l = 12l;
//		userRepository.save(new Employee(l, "BBBBaa", "male", "emal", 11, 10, "aad", d, "aa", 11));
	}

}
