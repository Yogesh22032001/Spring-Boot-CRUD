package com.springboot.springbootCRUD.allController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.springbootCRUD.dao.EmploeeDao;
import com.springboot.springbootCRUD.entities.Employee;

@Controller
public class ControllerClass {
	
	@Autowired
	EmploeeDao emploeeDao;
	
	@RequestMapping("/login")
	public String login() {
		System.out.println("aaaa");
		return "login";
	}
	
	@RequestMapping("/loginSucess")
	public String home() {
		System.out.println("ls");
		return "home"; 
	}
	
	@RequestMapping("/register")
	public String register(@ModelAttribute Employee employee) {
		emploeeDao.saveEmployee(employee);
		return "home";
	}
	
	@RequestMapping("/employeeRegistration")
	public String empolyeeResistration() {
		return "employeeRegistration";
	}
	
	@RequestMapping("/searchAll")
	public String searchAll(Model model) {
		List<Employee> employeeList = emploeeDao.searchAll();
		model.addAttribute("employeeList",employeeList);
		System.out.println("sr");
		return "home";
	}
	
	@RequestMapping("/searchById")
	public String searchById(@RequestParam("id") long id,Model model) {
		
		
		Employee singleEmployee = emploeeDao.searchById(id);
		
		if (singleEmployee!=null) {
			model.addAttribute("singleEmpl",singleEmployee);
		}else {
			model.addAttribute("message","Please enter valid Employee Id.");
		}
		
		System.out.println("srId");
		return "home";
	}
	
	@RequestMapping("/edit")
	public String edit(@RequestParam("id") long id, Model model) {
		model.addAttribute("id",id);
		return "employeeEdit";
	}
	
	@RequestMapping("/editSave")
	public String editSave(@ModelAttribute Employee employee,Model model) {
		emploeeDao.editEmployee(employee);
		System.out.println("aa");
		return "home";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") long id,Model model) {
		emploeeDao.deleteEmployee(id);
		System.out.println("aa");
		return "home";
	}
	
	@RequestMapping("/search")
	public String searchByI() {
		System.out.println("aa");
		return "home";
	}
	
	@RequestMapping("/NewFile")
	public String m() {
		System.out.println("aaaa");
		return "NewFile";
	}
	
	@ExceptionHandler(Exception.class)
	public String error() {
		return "errorPage";
	}
}
