package com.antra.dao.cache;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.antra.entity.Department;
import com.antra.entity.Employee;

/**
 * @author Lester
 * DAOImpl of Department DAO
 */
@Repository("cachedDD")
public class DeptDAO extends DAOImpl<Department> {
	/**
	 * This method will find one employee instance in a specific
	 * department where department id is given.
	 * @param id department id#
	 * @param eid employee id#
	 * @return result employee instance returned
	 */
	@Transactional
	public Employee findEmpById(int id, int eid) {
		// TODO Auto-generated method stub
		Department d=findOne(id);
		if(d==null)return null;
		List<Employee> es=d.getEmployees();
		for(Employee e:es){
			if(e.getId()==eid)return e;
		}
		return null;
	}
}
