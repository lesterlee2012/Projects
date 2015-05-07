package com.antra.dao.cache;

import java.util.List;

/**
 * It is a deprecated interface which would not be used
 * since Spring injection will use interface based proxy
 * we need more concrete class to inject to avoid ambiguity
*/
public interface DAO<T> {
	public T save(T t);
	public void delete(int id);
	public T findOne(int id);
	public List<T> findAll();
	public List<T> findByName(String name);
}
