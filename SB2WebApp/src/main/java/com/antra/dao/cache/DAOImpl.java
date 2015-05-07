package com.antra.dao.cache;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.security.access.annotation.Secured;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Lester generic class for DAOImpl
 * @param <T>
 */

public abstract class DAOImpl<T> {
	@PersistenceContext
	protected EntityManager em;
	private Class<T> type;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public DAOImpl() {
		Type t = getClass().getGenericSuperclass();
		ParameterizedType pt = (ParameterizedType) t;
		type = (Class) pt.getActualTypeArguments()[0];
	}

	@Transactional
	@CachePut(value = "dbCache", key = "#result.id")
	@Secured("ROLE_ADMIN")
	public T save(T t) {
		T tr = em.merge(t);
		return tr;
	}

	@Transactional
	@CacheEvict("dbCache")
	@Secured("ROLE_ADMIN")
	public void delete(int id) {
		T t = em.find(type, id);
		em.remove(t);
	}

	// @Cacheable(value="dbCache", key="#id")
	@Secured("ROLE_ADMIN")
	public T findOne(int id) {
		return em.find(type, id);
	}

	@Secured("ROLE_USER")
	// @Cacheable(value="dbCache",key = "#root.targetClass")
	public List<T> findAll() {
		List<T> list = em.createQuery(
				"SELECT t FROM " + type.getSimpleName() + " t Order By Id", type)
				.getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<T> findByName(String name) {
		Query q = em
				.createQuery(
						"SELECT t FROM " + type.getSimpleName()
								+ " t WHERE name=:name", type).setParameter("name",
						name);
		List<T> list = q.getResultList();
		return list;
	}
}
