package com.antra.config;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * Spring JPA configuration class
 * @author Lester
 *
 */
@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(basePackages="com.antra.dao")
@Import(DataSourceConfig.class)
public class JpaConfig{
	@Value("#{ds}")
    private DataSource dataSource;
	@Value("${hibernate.dialect}")
    private String dialect;
    @Value("${hibernate.show_sql}")
    private boolean showSql;
    @Value("${hibernate.generateDDL}")
    private boolean generateDDL;
    @Value("${hibernate.enable_lazy_load_no_trans}")
    private boolean enableLazyLoading;
    @Value("${jpa.basePackage}")
    private String basePackage;
    
	@Bean
	public JpaVendorAdapter jpaVendorAdapter() {
		HibernateJpaVendorAdapter adapter = new HibernateJpaVendorAdapter();
		adapter.setDatabase(Database.ORACLE);
		adapter.setShowSql(showSql);
		adapter.setGenerateDdl(generateDDL);
		adapter.setDatabasePlatform(dialect);
		return adapter;
	}
	
	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		LocalContainerEntityManagerFactoryBean emf = new LocalContainerEntityManagerFactoryBean();
		emf.setDataSource(dataSource);
		//emf.setPersistenceUnitName("sbPU"); no more need for this and persistance.xml
		emf.setJpaVendorAdapter(jpaVendorAdapter());
		emf.setPackagesToScan(basePackage);
		
		Properties jpaProperties = new Properties();
		jpaProperties.put(org.hibernate.cfg.Environment.ENABLE_LAZY_LOAD_NO_TRANS, enableLazyLoading);
		emf.setJpaProperties(jpaProperties);
		return emf;
	}

	@Bean
	public PlatformTransactionManager transactionManager(
			EntityManagerFactory emf) {
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(emf);
		return transactionManager;
	}
	
	/**
	 * Used to handle spring JPA specified exception
	 * @return
	 */
	@Bean
	public BeanPostProcessor persistenceTranslation() {
		return new PersistenceExceptionTranslationPostProcessor();
	}
}
