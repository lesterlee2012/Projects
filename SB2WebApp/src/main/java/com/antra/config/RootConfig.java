package com.antra.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.FilterType;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.ClassPathResource;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * General and mid-tier Spring context configuration class
 * @author Lester
 *
 */
@Configuration
@EnableAspectJAutoProxy
@ComponentScan(basePackages = {"com.antra.dao","com.antra.service","com.antra.util"}, excludeFilters = { @Filter(type = FilterType.ANNOTATION, value = EnableWebMvc.class) })
@Import({JpaConfig.class, SpringSecurityConfig.class, CachingConfig.class, JmsConfig.class})
@ImportResource({"/WEB-INF/spring/cxf.xml"})
public class RootConfig {
	@Bean
	public static PropertySourcesPlaceholderConfigurer placeholderConfigurer() {
		PropertySourcesPlaceholderConfigurer ppc = new PropertySourcesPlaceholderConfigurer();
		ClassPathResource persistence=new ClassPathResource("persistence.properties");
		ClassPathResource environment=new ClassPathResource("environment.properties");
		ppc.setLocations(new ClassPathResource[]{persistence, environment});
		return ppc;
	}
	
	@Bean
	public RestTemplate restTemplate(){
		return new RestTemplate();
	}
}
