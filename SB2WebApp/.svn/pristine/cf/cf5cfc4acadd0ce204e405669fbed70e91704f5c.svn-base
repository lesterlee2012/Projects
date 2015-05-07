package com.antra.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * Deprecated util for JPA when not using IOC
 * @author Lester
 *
 */
public class JPAUtil {
	private EntityManagerFactory factory;
	private EntityManager em;
	public JPAUtil(){
		factory = Persistence
				.createEntityManagerFactory("JPAPU");
		em = factory.createEntityManager();
	}
	public EntityManagerFactory getEntityManagerFactory(){
		return factory;
	}
	public EntityManager getEntityManager(){
		return em;
	}
	public void close(){
		factory.close();
		em.close();
	}
}
