package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.model.Employee;

@Repository
public interface EmployeeDao {

	public void saveEmployeeobj(Employee employee);

	public Employee getEmployeeobj(int theId);

	public List<Employee> getAllEmployees();

	public void removeEmployeeobj(int theId);

	public List<Employee> searchEmployee(int theId);
	
//	public Employee getSalaryobj(int theId); 
	

}
