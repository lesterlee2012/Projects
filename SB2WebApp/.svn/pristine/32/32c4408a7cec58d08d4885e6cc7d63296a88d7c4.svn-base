package com.antra.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

/**
 * @author Lester
 * Employee Entity
 */
@Entity
@Table(name="EMP")
@JsonIdentityInfo(generator=ObjectIdGenerators.PropertyGenerator.class, property="id")
public class Employee extends BaseEntity implements Serializable{
	private static final long serialVersionUID = -5011470099993690956L;
	private String job;
	private Integer manager;
	private Date hiredate;
	private Integer salary;
	private Integer commission;
	private Integer deptid;
	private Department department;
	private List<Project> projects;
    
	@Column(name = "JOB")
	@Size(min=2,max=20)
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	
	@Column(name = "MGR")
	public Integer getManager() {
		return manager;
	}
	public void setManager(Integer mgr) {
		this.manager = mgr;
	}
	
	@Column(name = "HIREDATE")
	@DateTimeFormat(pattern="yyyy.MM.dd")
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hireDate) {
		this.hiredate = hireDate;
	}
	
	@Column(name = "SAL")
	public Integer getSalary() {
		return salary;
	}
	public void setSalary(Integer sal) {
		this.salary = sal;
	}
	
	@Column(name = "COMM")
	public Integer getCommission() {
		return commission;
	}
	public void setCommission(Integer comm) {
		this.commission = comm;
	}
	
	@Column(name = "DEPTID")
	public Integer getDeptid() {
		return deptid;
	}
	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
	}
	
	@ManyToOne(cascade={CascadeType.PERSIST,CascadeType.MERGE})
	@JoinColumn(name = "DEPTID", insertable=false, updatable=false)
	@JsonBackReference
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department deptartment) {
		this.department = deptartment;
	}
	
	@ManyToMany(cascade=CascadeType.MERGE,fetch=FetchType.EAGER)
    @JoinTable(name="EMP_PROJ",
        joinColumns=
            @JoinColumn(name="EMPID", referencedColumnName="ID"),
        inverseJoinColumns=
            @JoinColumn(name="PROJID", referencedColumnName="ID")
        )
	@JsonBackReference
	public List<Project> getProjects() {
		return projects;
	}
	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}
}