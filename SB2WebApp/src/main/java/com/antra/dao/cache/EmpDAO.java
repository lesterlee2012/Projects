package com.antra.dao.cache;

import org.springframework.stereotype.Repository;

import com.antra.entity.Employee;

/**
 * @author Lester
 * DAOImpl of Employee
 */
@Repository("cachedED")
public class EmpDAO extends DAOImpl<Employee>{
}
