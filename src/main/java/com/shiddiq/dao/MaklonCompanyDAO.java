package com.shiddiq.dao;

import java.util.List;

import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.MaklonCompany;

public interface MaklonCompanyDAO {
	
	    public long createMaklonCompany(MaklonCompany makloncompany);
	    public MaklonCompany updateMaklonCompany(MaklonCompany makloncompany);
	    public void deleteMaklonCompany(long id);
	    public List<MaklonCompany> getAllMaklonCompanys();
	    public MaklonCompany getMaklonCompany(long id);   
	    public List<MaklonCompany> getAllMaklonCompanys(String id);

}
