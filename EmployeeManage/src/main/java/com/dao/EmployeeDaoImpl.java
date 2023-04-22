package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.model.Employee;


@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void saveEmployeeobj(Employee employee) {
		this.hibernateTemplate.saveOrUpdate(employee);
		
	}
	
	@Transactional
	public Employee getEmployeeobj(int theId) {
		
		return this.hibernateTemplate.get(Employee.class, theId);
	}

	public List<Employee> getAllEmployees() {
		List<Employee> s=this.hibernateTemplate.loadAll(Employee.class);
		
		return s;
	}

	public void removeEmployeeobj(int theId) {
		Employee e=this.hibernateTemplate.load(Employee.class,theId);
		this.hibernateTemplate.delete(e);
	}

	public List<Employee> searchEmployee(int theId) {
		List<Employee> l= (List<Employee>) this.hibernateTemplate.find("from Employee WHERE id = '"+ theId+"'");
		return l;
	}

//	public Employee getSalaryobj(int theId, String dept) {
//		Employee employee = null;
//		this.hibernateTemplate.get(Employee.class, theId);
//		double salary;
//		float p_leaves;
//		float u_leaves;
//		if (employee.getDept()=="Developement") {
//			
//			double CTC=500000.00;
//			salary=CTC/12;
//		}
//		
//		return null;
//	}

}
