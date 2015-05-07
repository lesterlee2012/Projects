package com.antra.wsimport;

public class Publication {

	public static void main(String[] args) {
		GeoIPService service = new GeoIPService();
		GeoIPServiceSoap geo = service.getGeoIPServiceSoap();
		System.out.println(geo.getGeoIP("108.28.24.128").getCountryName());		
	}

}
