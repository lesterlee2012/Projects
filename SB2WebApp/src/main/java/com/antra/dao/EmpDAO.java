package com.antra.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.antra.entity.Employee;

/**
 * @author Lester
 * Automatically generated EmpDAO by Spring Data
 */
@Repository("ED")
public interface EmpDAO extends JpaRepository<Employee, Integer>{
	public List<Employee> findByName(String name);
}
