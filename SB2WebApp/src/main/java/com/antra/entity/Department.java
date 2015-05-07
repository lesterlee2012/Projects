package com.antra.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonManagedReference;

/**
 * @author Lester
 * Department Entity
 */
@Entity
@Table(name="DEPT")
public class Department extends BaseEntity implements Serializable {
	private static final long serialVersionUID = -4399316375891126150L;
	private String loc;
	private List<Employee> employees;
    
	@Column(name = "LOC")
	@Size(min=2,max=30)
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	@OneToMany(cascade=CascadeType.REMOVE, mappedBy = "department", fetch = FetchType.EAGER)
	@OrderBy("id ASC")
	@JsonManagedReference
	public List<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
}
