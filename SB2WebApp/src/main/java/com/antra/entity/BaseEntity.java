package com.antra.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.validation.constraints.NotNull;

/**
 * The basic entity class which will be later extended as 
 * concrete entities which represent tables in db. 
 */
@MappedSuperclass
public abstract class BaseEntity implements Comparable<BaseEntity>{
	private Integer id;
	private String name;
	@Id
	@Column(name="ID")
	@NotNull
    public Integer getId(){
        return id;
    }
    public void setId(Integer id){
        this.id=id;
    }
    
    @Column(name="NAME")
    @NotNull
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name=name;
    }
    
    public int compareTo(BaseEntity be){
    	return id-be.id;
    }
}
