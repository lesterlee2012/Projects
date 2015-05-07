package com.antra.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.WebApplicationInitializer;

/**
 * Servlet initializer class for Apache CXF
 * @author Lester
 *
 */
public class CXFServlet implements WebApplicationInitializer {
	@Override
	public void onStartup(ServletContext servletContext)
			throws ServletException {
		Dynamic cxf =
				servletContext.addServlet("CXFServlet", org.apache.cxf.transport.servlet.CXFServlet.class);
		cxf.addMapping("/CXF/*");
		cxf.setLoadOnStartup(1);
	}
}