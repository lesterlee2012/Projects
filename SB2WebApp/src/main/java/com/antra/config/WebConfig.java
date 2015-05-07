package com.antra.config;

import java.io.IOException;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.accept.ContentNegotiationManager;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * Spring MVC configuration class
 * @author Lester
 *
 */
@Configuration
@EnableWebMvc
@ComponentScan("com.antra.web")
public class WebConfig extends WebMvcConfigurerAdapter {
	@Bean
	/**
	 * JSP view Resolver
	 * @return ViewResolver
	 */
	public ViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setViewClass(org.springframework.web.servlet.view.JstlView.class);
		// resolver.setExposeContextBeansAsAttributes(true);
		return resolver;
	}
	
	/**
	 * Content View Resolver for RESTful
	 * @param cnm
	 * @return ViewResolver
	 */
	@Bean
	public ViewResolver cnViewResolver(ContentNegotiationManager cnm) {
		ContentNegotiatingViewResolver cnvr = new ContentNegotiatingViewResolver();
		cnvr.setContentNegotiationManager(cnm);
		return cnvr;
	}
	
	/**
	 * Control the return type to the client in RESTful WS
	 */
	@Override
	public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
		configurer.defaultContentType(MediaType.APPLICATION_JSON);
	}
	
	/**
	 * Static content (e.g. css,js script; images) handling
	 */
	@Override
	public void configureDefaultServletHandling(
			DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

	/**
	 * Multipart Resolver
	 * @return Multipart Resolver
	 * @throws IOException
	 */
	@Bean
	public MultipartResolver multipartResolver() throws IOException {
		return new CommonsMultipartResolver();
	}
}
