package com.antra.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.antra.dao.cache.DeptDAO;
import com.antra.dao.cache.EmpDAO;
import com.antra.dao.cache.ProjDAO;

/**
 * this is DAOService for MVC (not REST)
 * @author Lester
 *
 */
@Component
public class DaoService {
	@Autowired
	@Qualifier("cachedED")
	private EmpDAO ed;
	@Autowired
	@Qualifier("cachedDD")
	private DeptDAO dd;
	@Autowired
	@Qualifier("cachedPD")
	private ProjDAO pd;
	
	public EmpDAO getEd(){
		return ed;
	}
	
	public DeptDAO getDd(){
		return dd;
	}
	
	public ProjDAO getPd(){
		return pd;
	}
}
