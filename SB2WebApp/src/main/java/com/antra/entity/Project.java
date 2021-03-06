package com.antra.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

/**
 * @author Lester
 * Project Entity
 */
@Entity
@Table(name="PROJ")
@JsonIdentityInfo(generator=ObjectIdGenerators.PropertyGenerator.class, property="id")
public class Project extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 623473242562292314L;
	private List<Employee> employees;
    
    
	@ManyToMany(fetch=FetchType.EAGER, cascade=CascadeType.MERGE, mappedBy="projects")
	@JsonManagedReference
	public List<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
}
