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
 * 13-June-2016
 */
@Entity
@Table(name = "maklondatamaster")
public class MaklonMasterData implements Serializable {
	private static final long serialVersionUID = -7988799579036225247L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
	
	@Column
    private String maklon;
	
	@Column
    private String itemfg;
	
	@Column
    private String satuan;
	
	@Column
    private String kodeitemkemas;
	
	@Column
    private String itemkemas;
	
	@Column
    private int qty;
	
	@Column
    private int expires;
	
	public MaklonMasterData(){
		//Nothing To - Do Here
	}
	
	   public long getId() {
	        return id;
	    }
	    public void setId(long id) {
	        this.id = id;
	    }
	  
	    public String getMaklon() {
	        return maklon;
	    }
	    public void setMaklon(String maklon) {
	        this.maklon = maklon;
	    }
	    
	    public String getItemfg() {
	        return itemfg;
	    }
	    public void setItemfg(String itemfg) {
	        this.itemfg = itemfg;
	    }
	    
	    public String getSatuan() {
	        return satuan;
	    }
	    public void setSatuan(String satuan) {
	        this.satuan = satuan;
	    }
	    
	    public String getKodeitemkemas() {
	        return kodeitemkemas;
	    }
	    public void setKodeitemkemas(String kodeitemkemas) {
	        this.kodeitemkemas = kodeitemkemas;
	    }
	    
	    public String getItemkemas() {
	        return itemkemas;
	    }
	    public void setItemkemas(String itemkemas) {
	        this.itemkemas = itemkemas;
	    }
	    
	    public int getQty() {
	        return qty;
	    }
	    public void setQty(int qty) {
	        this.qty = qty;
	    }
	    
	    public int getExpires() {
	        return expires;
	    }
	    public void setExpires(int expires) {
	        this.expires = expires;
	    }
	    
	    @Override
	    public String toString() {
	        return "MaklonMasterData{" +
	                "id=" + id +
	                ", maklon='" + maklon + '\'' +	                
	                ", itemfg=" + itemfg +
	                ", satuan=" + satuan +
	                ", kodeitemkemas=" + kodeitemkemas +
	                ", itemkemas=" + itemkemas +
	                ", qty=" + qty +
	                ", expires=" + expires +
	                '}';
	    }
	    
	    
	}


