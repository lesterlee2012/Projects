package com.antra.consume;

public class ConsumeTest {

	public static void main(String[] args) {
		CXFImplService cis=new CXFImplService();
		CXF c=cis.getCXFImplPort();
		System.out.println(c.readDepartment(20).id);
		System.out.println(c.readProject(2).getId());
		System.out.println(c.readEmployee(7735));
	}

}
