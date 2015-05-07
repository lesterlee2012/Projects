package com.antra.soap;

import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

import org.springframework.beans.factory.annotation.Autowired;

import com.antra.dao.DeptDAO;
import com.antra.dao.EmpDAO;
import com.antra.dao.ProjDAO;
import com.antra.entity.Department;
import com.antra.entity.Employee;
import com.antra.entity.Project;

/**
 * SOAP implemented class which implement methods in SOAP interface
 * @author Lester
 *
 */
@WebService(endpointInterface = "com.antra.soap.CXF")
@SOAPBinding(style=Style.RPC)
public class CXFImpl implements CXF {
	@Autowired
	private DeptDAO dd;
	@Autowired
	private ProjDAO pd;
	@Autowired
	private EmpDAO ed;
	@Override
	public void createDepartment(Department d) {
		dd.save(d);
	}

	@Override
	public Department readDepartment(Integer id) {
		return dd.findOne(id);
	}

	@Override
	public void updateDepartment(Department d) {
		dd.save(d);
	}

	@Override
	public void deleteDepartment(Integer id) {
		dd.delete(id);
	}

	@Override
	public void createProject(Project p) {
		pd.save(p);
	}

	@Override
	public Project readProject(Integer id) {
		return pd.findOne(id);
	}

	@Override
	public void updateProject(Project p) {
		pd.save(p);
	}

	@Override
	public void deleteProject(Integer id) {
		pd.delete(id);
	}

	@Override
	public void createEmployee(Employee e) {
		ed.save(e);
	}

	@Override
	public Employee readEmployee(Integer id) {
		return ed.findOne(id);
	}

	@Override
	public void updateEmployee(Employee e) {
		ed.save(e);
	}

	@Override
	public void deleteEmployee(Integer id) {
		ed.delete(id);
	}
}
