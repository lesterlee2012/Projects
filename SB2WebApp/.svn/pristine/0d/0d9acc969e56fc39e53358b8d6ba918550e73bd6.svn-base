package com.antra.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.sql.Date;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;

import com.antra.dao.DeptDAO;
import com.antra.dao.EmpDAO;
import com.antra.dao.ProjDAO;
import com.antra.entity.Department;
import com.antra.entity.Employee;
import com.antra.entity.Project;
import com.antra.testConfig.TestContextConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestContextConfig.class)
@TransactionConfiguration(defaultRollback = true)
@ActiveProfiles("test")
public class JPATest {
	@Autowired
	private DeptDAO dd;
	@Autowired
	private EmpDAO ed;
	@Autowired
	private ProjDAO pd;

	// injection test
	@Test
	public void ddShouldNotBeNull() {
		assertNotNull(dd);
	}

	@Test
	public void edShouldNotBeNull() {
		assertNotNull(ed);
	}

	@Test
	public void pdShouldNotBeNull() {
		assertNotNull(pd);
	}

	@Before
	public void testSave() {
		Department d = new Department();
		d.setId(10);
		d.setName("ETC");
		d.setLoc("NEW JERSEY");
		dd.save(d);
		
		Employee e = new Employee();
		e.setId(4000);
		e.setName("MIKE");
		e.setCommission(100);
		e.setDeptid(10);
		e.setHiredate(Date.valueOf("2015-1-1"));
		e.setJob("MANAGER");
		e.setManager(1000);
		e.setSalary(1000);
		ed.save(e);
		
		Project p = new Project();
		p.setId(1);
		p.setName("jsNode");
		pd.save(p);
	}
	
	// DD test
	@Test
	public void testDdFindByIdInt() {
		dd.findOne(10);
	}

	@Test
	public void testDdFindByNameString() {
		List<Department> dl = dd.findByName("ENGINEER");
		for (Department d : dl)
			assertTrue("Engineer Department not returned",
					d.getName().equals("ENGINEER"));
	}

	@Test
	public void testDdGetList() {
		dd.findAll();
	}

	// ED test
	@Test
	public void testEdFindByIdInt() {
		ed.findOne(4000);
	}

	@Test
	public void testEdFindByNameString() {
		ed.findByName("MIKE");
	}

	@Test
	public void testEdGetList() {
		ed.findAll();
	}

	// PD test
	@Test
	public void testPdFindByIdInt() {
		pd.findOne(1);
	}

	@Test
	public void testPdFindByNameString() {
		pd.findByName("C++");
	}

	@Test
	public void testPdGetList() {
		pd.findAll();
	}
	
	@After
	public void testDelete() {
		ed.delete(4000);
		dd.delete(10);
		pd.delete(1);
	}
}
