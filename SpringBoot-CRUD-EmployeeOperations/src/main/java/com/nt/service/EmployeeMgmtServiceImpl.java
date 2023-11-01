package com.nt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.entity.Employee;
import com.nt.repository.IEmployeeRepo;

@Service("empService")
public class EmployeeMgmtServiceImpl implements IEmployeeMgmtService {
	@Autowired
	private IEmployeeRepo empRepo;

	@Override
	public List<Employee> getAllEmployees() {
		return empRepo.findAll();
	}

	@Override
	public String registerEmployee(Employee emp) {
		// int idVal=empRepo.save(emp).getEmpno();
		int idVal = empRepo.save(emp).getId();
		return "Employee is saved with the id value ::" + idVal;
	}

	@Override
	public Employee getEmployeeByNo(int no) {
		Employee emp = empRepo.findById(no).get();
		return emp;
	}

	@Override
	public String editEmployee(Employee emp) {
		int idVal = empRepo.save(emp).getId(); // save(-) method can perform both save /edit operations
		return idVal + " Employee is updated ";

	}

	@Override
	public String deleteEmployee(int no) {
		empRepo.deleteById(no);
		return no + " emp no Employee is deleted";
	}

}
