package com.antra.dao.cache;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.antra.entity.Employee;
import com.antra.entity.Project;

/**
 * @author Lester
 * DAOImpl of Project DAO
 */
@Repository("cachedPD")
public class ProjDAO extends DAOImpl<Project> {
	/**
	 * Used to delete an employee instance on a specific project
	 * where both employee id and project id are given
	 * @param eid employee id#
	 * @param pid project id #
	 */
	@Transactional
	public void deleteEmployeeOnProject(Integer eid, Integer pid){
		Project p=em.find(Project.class, pid);
		Employee e=em.find(Employee.class, eid);
		List<Employee> elist=p.getEmployees();
		List<Project> plist=e.getProjects();
		elist.remove(e);
		plist.remove(p);
	}
	
	/**
	 * Used to insert an employee instance on a specific project
	 * where both employee id and project id are given
	 * @param eid employee id#
	 * @param pid project id #
	 */
	@Transactional
	public void addEmployeeOnProject(Integer eid, Integer pid){
		Project p=em.find(Project.class, pid);
		Employee e=em.find(Employee.class, eid);
		List<Employee> elist=p.getEmployees();
		List<Project> plist=e.getProjects();
		elist.add(e);
		plist.add(p);
	}
}
