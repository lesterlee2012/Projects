package com.antra.soap;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

import com.antra.entity.Department;
import com.antra.entity.Employee;
import com.antra.entity.Project;

/**
 * Apache CXF interface which represents a SOAP
 * @author Lester
 *
 */
@WebService
@SOAPBinding(style=Style.RPC)
public interface CXF{
	@WebMethod
	public void createDepartment(Department d);
	@WebMethod
	public Department readDepartment(Integer id);
	@WebMethod
	public void updateDepartment(Department d);
	@WebMethod
	public void deleteDepartment(Integer id);
	@WebMethod
	public void createProject(Project p);
	@WebMethod
	public Project readProject(Integer id);
	@WebMethod
	public void updateProject(Project p);
	@WebMethod
	public void deleteProject(Integer id);
	@WebMethod
	public void createEmployee(Employee e);
	@WebMethod
	public Employee readEmployee(Integer id);
	@WebMethod
	public void updateEmployee(Employee e);
	@WebMethod
	public void deleteEmployee(Integer id);
}
