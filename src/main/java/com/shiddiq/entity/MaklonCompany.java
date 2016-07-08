package com.shiddiq.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import java.io.Serializable;
/**
 * @author shiddiq / shiddiqitt@gmail.com 
 * @version 1.0
 * 12-June-2016
 */
@Entity
@Table(name = "maklon_company")

public class MaklonCompany implements Serializable {
	
	private static final long serialVersionUID = -7988799579036225133L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
	
	@Column
	private String name;

	@Column
	private String description;

	public MaklonCompany(){
	//nothing to do here	
		
	}
	
	    public long getId() {
	        return id;
	    }
	    public void setId(long id) {
	        this.id = id;
	    }
	  
	    public String getName() {
	        return name;
	    }
	    public void setName(String name) {
	        this.name = name;
	    }
	    
	    public String getDescription() {
	        return description;
	    }
	    public void setDescription(String description) {
	        this.description = description;
	    }
	    
	    @Override
	    public String toString() {
	        return "MaklonCompany{" +
	                "id=" + id +
	                ", name='" + name + '\'' +
	                ", description=" + description +               
	                '}';
	    }
	    
	
}
