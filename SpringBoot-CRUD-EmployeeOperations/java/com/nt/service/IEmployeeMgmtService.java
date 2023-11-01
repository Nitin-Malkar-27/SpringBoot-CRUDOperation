package com.nt.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nt.entity.Employee;

@Service
public interface IEmployeeMgmtService {
	public List<Employee> getAllEmployees();

	public String registerEmployee(Employee emp);

	public Employee getEmployeeByNo(int no);

	public String editEmployee(Employee emp);

	public String deleteEmployee(int no);
}
