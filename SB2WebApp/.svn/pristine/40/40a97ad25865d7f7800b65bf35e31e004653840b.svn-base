package com.antra.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;

/**
 * Spring web mvc security configuration
 * @author Lester
 *
 */
@Configuration
@EnableWebMvcSecurity
@Import(MethodSecurityConfig.class)
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{
	@Value("#{ds}")
	DataSource dataSource;
	
	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.jdbcAuthentication().dataSource(dataSource)
			.usersByUsernameQuery("select username,password, enabled from users where username=?")
			.authoritiesByUsernameQuery("select username, role from user_roles where username=?");
			//.passwordEncoder(new StandardPasswordEncoder("53cr3t"));
	}	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests()
				.antMatchers("/admin/employee/*","/admin/department/*","/admin/project/*").access("hasRole('ROLE_ADMIN')")
				.antMatchers("/admin/**","/welcome").access("hasRole('ROLE_USER')")
				.and()
			.formLogin().loginPage("/login").loginProcessingUrl("/login_check").failureUrl("/login?error")
					.usernameParameter("username").passwordParameter("password")
			.and()
				.logout().logoutSuccessUrl("/logout").logoutSuccessUrl("/login?logout")
			.and()
				.exceptionHandling().accessDeniedPage("/403")
			.and()
				.rememberMe()
				.tokenValiditySeconds(2419200)
				.key("SbKey")
			.and()
				.csrf().disable();
	}
}