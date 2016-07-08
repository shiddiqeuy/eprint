package com.shiddiq.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiddiq.dao.MaklonCompanyDAO;
import com.shiddiq.dao.MaklonDAO;
import com.shiddiq.entity.MaklonCompany;
import com.shiddiq.service.MaklonCompanyService;

@Service
@Transactional
public class MaklonCompanyServiceImpl implements MaklonCompanyService {
	
	public MaklonCompanyServiceImpl() {
		System.out.println("MaklonCompanyServiceImpl()");
	}
	
	 @Autowired
	 private MaklonCompanyDAO makloncompanyDAO;
	

	@Override
	public long createMaklonCompany(MaklonCompany makloncompany) {
		// TODO Auto-generated method stub
		return makloncompanyDAO.createMaklonCompany(makloncompany);
	}

	@Override
	public MaklonCompany updateMaklonCompany(MaklonCompany makloncompany) {
		// TODO Auto-generated method stub
		return makloncompanyDAO.updateMaklonCompany(makloncompany);
	}

	@Override
	public void deleteMaklonCompany(long id) {
		// TODO Auto-generated method stub
		makloncompanyDAO.deleteMaklonCompany(id);
		
	}

	@Override
	public List<MaklonCompany> getAllMaklonCompanys() {
		// TODO Auto-generated method stub
		return makloncompanyDAO.getAllMaklonCompanys();
	}

	@Override
	public MaklonCompany getMaklonCompany(long id) {
		// TODO Auto-generated method stub
		return makloncompanyDAO.getMaklonCompany(id);
	}

	@Override
	public List<MaklonCompany> getAllMaklonCompanys(String id) {
		// TODO Auto-generated method stub
		return makloncompanyDAO.getAllMaklonCompanys(id);
	}

}
