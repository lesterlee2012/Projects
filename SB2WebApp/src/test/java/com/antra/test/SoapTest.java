package com.antra.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;

import com.antra.wsimport.GeoIPService;
import com.antra.wsimport.GeoIPServiceSoap;

public class SoapTest {
	private GeoIPServiceSoap geo=new GeoIPService().getGeoIPServiceSoap();
	
	@Test
	public void testGeoNotNull() {
		assertNotNull("geo Soap is null",geo);
	}
	
	@Test
	public void test(){
		assertEquals("108.28.24.128 is not from US",geo.getGeoIP("108.28.24.128").getCountryName(),"United States");
	}
	
	@Test
	public void test2(){
		assertEquals("220.181.112.244 is not from China", geo.getGeoIP("220.181.112.244").getCountryName(),"China");
	}
}
