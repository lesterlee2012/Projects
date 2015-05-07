package com.antra.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.client.ResourceAccessException;

import com.antra.entity.Department;
import com.antra.restful.RestClient;
import com.antra.testConfig.TestContextConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestContextConfig.class)
@ActiveProfiles("default")
public class RestfulTest {
	@Autowired
	private RestClient rs;
	
	@Test
	public void rsShouldNotBeNull() {
		assertNotNull(rs);
	}
	
	@Test(expected=ResourceAccessException.class)
	public void getDept(){
		rs.getDept(60);
	}
	
	@Test(expected=ResourceAccessException.class)
	public void updateDept(){
		Department dept=new Department();
		dept.setId(60);
		dept.setName("TestUpdate");
		dept.setLoc("Old Rag2");
		rs.updateDept(dept);
	}
	
	@Test(expected=ResourceAccessException.class)
	public void deleteDept(){
		rs.deleteDept(60);
	}
	
	@Test(expected=ResourceAccessException.class)
	public void createDept(){
		Department dept=new Department();
		dept.setId(60);
		dept.setName("TestCreate");
		dept.setLoc("Old Rag");
		rs.createDept(dept);
	}
}
