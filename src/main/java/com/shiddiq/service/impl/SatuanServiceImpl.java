package com.shiddiq.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiddiq.dao.MaklonCompanyDAO;
import com.shiddiq.dao.MaklonDAO;
import com.shiddiq.dao.SatuanDAO;
import com.shiddiq.entity.MaklonCompany;
import com.shiddiq.entity.Satuan;
import com.shiddiq.service.MaklonCompanyService;
import com.shiddiq.service.SatuanService;

@Service
@Transactional
public class SatuanServiceImpl implements SatuanService {
	
	public SatuanServiceImpl() {
		System.out.println("SatuanServiceImpl()");
	}
	
	 @Autowired
	 private SatuanDAO satuanDAO;
	

	@Override
	public long createSatuan(Satuan satuan) {
		// TODO Auto-generated method stub
		return satuanDAO.createSatuan(satuan);
	}

	@Override
	public Satuan updateSatuan(Satuan satuan) {
		// TODO Auto-generated method stub
		return satuanDAO.updateSatuan(satuan);
	}

	@Override
	public void deleteSatuan(long id) {
		// TODO Auto-generated method stub
		satuanDAO.deleteSatuan(id);
		
	}

	@Override
	public List<Satuan> getAllSatuans() {
		// TODO Auto-generated method stub
		return satuanDAO.getAllSatuans();
	}

	@Override
	public Satuan getSatuan(long id) {
		// TODO Auto-generated method stub
		return satuanDAO.getSatuan(id);
	}

	@Override
	public List<Satuan> getAllSatuans(String id) {
		// TODO Auto-generated method stub
		return satuanDAO.getAllSatuans(id);
	}

}
