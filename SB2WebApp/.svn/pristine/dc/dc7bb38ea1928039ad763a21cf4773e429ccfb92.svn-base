package com.antra.restful;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.antra.entity.Department;
import com.antra.entity.Employee;
import com.antra.entity.Project;

/**
 * RESTful client that uses Spring RESTful template vastly
 * @author Lester
 *
 */
@Component
public class RestClient {
	@Autowired
	private RestTemplate rest;
	public Department getDept(Integer id) {
		return rest.getForObject(
				"http://localhost:8088/SB2WebApp/Restful/department/{id}",
				Department.class, id);
	}

	public void updateDept(Department dept) {
		rest.put("http://localhost:8088/SB2WebApp/Restful/department/{id}",
				dept, dept.getId());
	}

	public void deleteDept(Integer id) {
		rest.delete("http://localhost:8088/SB2WebApp/Restful/department/{id}",
				id);
	}

	public Department createDept(Department dept) {
		return rest.postForObject(
				"http://localhost:8088/SB2WebApp/Restful/department", dept,
				Department.class);
	}

	public Employee getEmp(Integer id, Integer eid) {
		return rest
				.getForObject(
						"http://localhost:8088/SB2WebApp/Restful/department/{id}/employee/{eid}",
						Employee.class, id, eid);
	}

	public void updateEmp(Employee emp) {
		rest.put(
				"http://localhost:8088/SB2WebApp/Restful/department/{id}/employee/{eid}",
				emp, emp.getId());
	}

	public void deleteEmp(Integer id, Integer eid) {
		rest.delete(
				"http://localhost:8088/SB2WebApp/Restful/department/{id}/employee/{eid}",
				id, eid);
	}

	public Employee createEmp(Employee emp) {
		return rest
				.postForObject(
						"http://localhost:8088/SB2WebApp/Restful/department/{id}/employee",
						emp, Employee.class);
	}

	public Project getProj(Integer id) {
		return rest.getForObject(
				"http://localhost:8088/SB2WebApp/Restful/project/{id}",
				Project.class, id);
	}

	public void updateProj(Project proj) {
		rest.put("http://localhost:8088/SB2WebApp/Restful/project/{id}", proj,
				proj.getId());
	}

	public void deleteProj(Integer id) {
		rest.delete("http://localhost:8088/SB2WebApp/Restful/project/{id}", id);
	}

	public Project createProj(Project proj) {
		return rest.postForObject(
				"http://localhost:8088/SB2WebApp/Restful/project", proj,
				Project.class);
	}
}
