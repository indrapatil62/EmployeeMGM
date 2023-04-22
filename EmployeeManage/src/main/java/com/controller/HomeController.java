package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Employee;
import com.service.EmployeeService;

@Controller
public class HomeController {

	@Autowired
	EmployeeService employeeService;

	@RequestMapping(path = "/addEmployee", method = RequestMethod.GET)
	public String showForm() {
		System.out.println("hi");
		return "index";
	}

	@RequestMapping(value = "/saveData", method = RequestMethod.POST)
	public String savaData(@ModelAttribute Employee employee, Model m) {

		System.out.println("hello");
		this.employeeService.saveEmployeeobj(employee);
		m.addAttribute("msg", "Data Saved Successfully..");
		return "redirect:/";
	}

	@RequestMapping(path = "/")
	public String getEmployee(Model m) {

		List<Employee> s = this.employeeService.getAllEmployees();
		m.addAttribute("einfo", s);
		return "employee_list";
	}

	@RequestMapping("/delete/{pid}")
	public String removeEmployee(@PathVariable("pid") int id) {
		this.employeeService.removeEmployeeobj(id);
		return "redirect:/";
	}

	@RequestMapping("/update/{pid}")
	public String updateEmployee(@PathVariable("pid") int id, Model m) {
		Employee st = this.employeeService.getEmployeeobj(id);
		m.addAttribute("employee", st);
		return "update_form";
	}

	@RequestMapping("/Employee_search")
	public String searchEmployee(@RequestParam("freetext") int id, Model m) {
		List<Employee> s = this.employeeService.searchEmployee(id);
		m.addAttribute("einfo", s);
		return "employee_list";
	}
	
//	@RequestMapping("/salary/{pid}")
//	public String salaryEmployee(@PathVariable("pid") int id) {
//		Employee st = this.employeeService.getEmployeeobj(id);
//		m.addAttribute("employee", st);
//		return "update_form";
//	}
//	

}
