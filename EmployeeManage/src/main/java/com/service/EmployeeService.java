package com.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.model.Employee;

@Service
public interface EmployeeService {
	

	public void saveEmployeeobj(Employee employee);

	public Employee getEmployeeobj(int theId);

	public List<Employee> getAllEmployees();

	public void removeEmployeeobj(int theId);

	public List<Employee> searchEmployee(int theId);

}
