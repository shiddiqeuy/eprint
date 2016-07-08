package com.shiddiq.dao.impl;

import java.util.List;

import com.shiddiq.dao.SatuanDAO;
import com.shiddiq.entity.MaklonCompany;
import com.shiddiq.entity.Satuan;


import com.shiddiq.util.HibernateUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * @author shiddiq
 * @version 1.0
 */

@Repository
public class SatuanDAOImpl implements SatuanDAO {
	
	public SatuanDAOImpl() {
    	System.out.println("SatuanDAOImpl");
    }
	
	@Autowired
    private HibernateUtil hibernateUtil;

	@Override
	public long createSatuan(Satuan satuan) {
		// TODO Auto-generated method stub
		return (long) hibernateUtil.create(satuan);
	}

	@Override
	public Satuan updateSatuan(Satuan satuan) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(satuan);
	}

	@Override
	public void deleteSatuan(long id) {
		// TODO Auto-generated method stub
		Satuan satuan = new Satuan();
        satuan.setId(id);
        hibernateUtil.delete(satuan);
		
	}

	@Override
	public List<Satuan> getAllSatuans() {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchAll(Satuan.class);
	}

	@Override
	public Satuan getSatuan(long id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id, Satuan.class);
	}

	@Override
	public List<Satuan> getAllSatuans(String id) {
		// TODO Auto-generated method stub
		String query = "SELECT e.* FROM satuan e WHERE e.id like '%"+ id +"%'";
		List<Object[]> satuanObjects = hibernateUtil.fetchAll(query);
		List<Satuan> satuan = new ArrayList<Satuan>();
		for(Object[] satuanObject: satuanObjects) {
			Satuan satuanobj = new Satuan();
           
			int satuanid = ((int) satuanObject[0]);
            String name = ((String) satuanObject[1]);
            String description = ((String) satuanObject[2]);
            
            

            satuanobj.setId(satuanid);
            satuanobj.setName(name);
            satuanobj.setDescription(description);
           
          
            satuan.add(satuanobj);
		}
		System.out.println(satuan);
		return satuan;
	}
	
}


