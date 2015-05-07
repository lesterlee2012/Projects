package com.antra.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.antra.entity.Department;
import com.antra.entity.Employee;

/**
 * @author Lester
 * Automatically generated DeptDAO by Spring Data
 */
@Repository("DD")
public interface DeptDAO extends JpaRepository<Department, Integer>{
	List<Department> findByName(String name);
	@Query("select e from Employee e where e.deptid=?1 and e.id=?2")
	Employee findEmpById(int id, int eid);
}
