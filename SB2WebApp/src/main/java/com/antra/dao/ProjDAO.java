package com.antra.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.antra.entity.Project;

/**
 * @author Lester
 * Automatically generated ProjDAO by Spring Data
 */
@Repository("PD")
public interface ProjDAO extends JpaRepository<Project, Integer> {
	public List<Project> findByName(String name);
}
