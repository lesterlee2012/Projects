package com.antra.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.antra.dao.cache.EmpDAO;
import com.antra.dao.cache.ProjDAO;
import com.antra.entity.Employee;
import com.antra.entity.Project;

/**
 * Project Management Service class which supports various kind of service methods 
 * @author Lester
 *
 */
@Component
public class ProjectManagementService {
	@Autowired
	@Qualifier("cachedED")
	private EmpDAO ed;
	@Autowired
	@Qualifier("cachedPD")
	private ProjDAO pd;
	
	/**
	 * Return a list of employee entities which excludes all 
	 * existed entities in a specific Project where project id# is given 
	 * @param pid Project id#
	 * @return List of exclusive employees
	 */
	public List<Employee> getExclusionEmployees(Integer pid){
		List<Employee> all=ed.findAll();
		List<Employee> onProject=pd.findOne(pid).getEmployees();
		for(Employee e:onProject){
			for(Employee e1:all){
				if(e1.getId().equals(e.getId())){
					all.remove(e1);
					break;
				}
			}
		}
		return all;
	}
	
	/**
	 * Return a list of project entities which excludes all 
	 * existed entities in a specific Employee where employee id# is given 
	 * @param eid Employee id#
	 * @return List of exclusive projects
	 */
	public List<Project> getExclusionProjects(Integer eid){
		List<Project> all=pd.findAll();
		List<Project> onEmployee=ed.findOne(eid).getProjects();
		for(Project p:onEmployee){
			for(Project p1:all){
				if(p1.getId().equals(p.getId())){
					all.remove(p1);
					break;
				}
			}
		}
		return all;
	}
	
	/**
	 * Used to delete an employee instance on a specific project
	 * where both employee id and project id are given
	 * @param eid employee id#
	 * @param pid project id #
	 */
	public void deleteEmployeeOnProject(Integer eid, Integer pid){
		pd.deleteEmployeeOnProject(eid, pid);
	}
	
	/**
	 * Used to delete an employee instance on a specific project
	 * where both employee id and project id are given
	 * @param eid employee id#
	 * @param pid project id #
	 */
	public void deleteProjectOnEmployee(Integer pid, Integer eid){
		pd.deleteEmployeeOnProject(eid, pid);
	}
	
	/**
	 * Used to insert an employee instance on a specific project
	 * where both employee id and project id are given
	 * @param eid employee id#
	 * @param pid project id #
	 */
	public void addEmployeeOnProject(Integer eid, Integer pid){
		pd.addEmployeeOnProject(eid, pid);
	}
	
	/**
	 * Used to insert an employee instance on a specific project
	 * where both employee id and project id are given
	 * @param eid employee id#
	 * @param pid project id #
	 */
	public void addProjectOnEmployee(Integer pid, Integer eid){
		pd.addEmployeeOnProject(eid, pid);
	}
}
