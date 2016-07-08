package com.shiddiq.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shiddiq.dao.MaklonCompanyDAO;
import com.shiddiq.dao.MaklonDAO;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.MaklonCompany;
import com.shiddiq.util.HibernateUtil;

@Repository
public class MaklonCompanyDAOImpl implements MaklonCompanyDAO {
	
	public MaklonCompanyDAOImpl(){
		System.out.println("MaklonDAOCompanyImpl");
	}
	
	@Autowired
    private HibernateUtil hibernateUtil;

	@Override
	public long createMaklonCompany(MaklonCompany makloncompany) {
		// TODO Auto-generated method stub
		return (long) hibernateUtil.create(makloncompany);
	}
	
	

	@Override
	public MaklonCompany updateMaklonCompany(MaklonCompany makloncompany) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(makloncompany);
	}

	@Override
	public void deleteMaklonCompany(long id) {
		// TODO Auto-generated method stub
		MaklonCompany makloncompany = new MaklonCompany();
        makloncompany.setId(id);
        hibernateUtil.delete(makloncompany);
		
	}

	@Override
	public List<MaklonCompany> getAllMaklonCompanys() {
		// TODO Auto-generated method stub
		 return hibernateUtil.fetchAll(MaklonCompany.class);
	}

	@Override
	public MaklonCompany getMaklonCompany(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, MaklonCompany.class);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MaklonCompany> getAllMaklonCompanys(String id) {
		// TODO Auto-generated method stub
		String query = "SELECT e.* FROM maklon_company e WHERE e.id like '%"+ id +"%'";
		List<Object[]> makloncompanyObjects = hibernateUtil.fetchAll(query);
		List<MaklonCompany> makloncompany = new ArrayList<MaklonCompany>();
		for(Object[] makloncompanyObject: makloncompanyObjects) {
			MaklonCompany makloncompanys = new MaklonCompany();
           
			int makloncompanyid = ((int) makloncompanyObject[0]);
            String name = ((String) makloncompanyObject[1]);
            String description = ((String) makloncompanyObject[2]);
            
            

            makloncompanys.setId(makloncompanyid);
            makloncompanys.setName(name);
            makloncompanys.setDescription(description);
           
          
            makloncompany.add(makloncompanys);
		}
		System.out.println(makloncompany);
		return makloncompany;
	}

}
