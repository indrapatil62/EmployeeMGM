package com.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.EmployeeDao;
import com.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDao employeeDao;

	@Transactional
	public void saveEmployeeobj(Employee employee) {
		this.employeeDao.saveEmployeeobj(employee);

	}
	@Transactional
	public Employee getEmployeeobj(int theId) {
		
		return this.employeeDao.getEmployeeobj(theId);
	}

	public List<Employee> getAllEmployees() {
		
		return this.employeeDao.getAllEmployees();
	}

	@Transactional
	public void removeEmployeeobj(int theId) {
		this.employeeDao.removeEmployeeobj(theId);
	}

	public List<Employee> searchEmployee(int theId) {
		
		return this.employeeDao.searchEmployee(theId);
	}

}
