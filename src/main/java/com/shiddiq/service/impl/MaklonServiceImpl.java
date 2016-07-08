package com.shiddiq.service.impl;
import com.shiddiq.dao.MaklonDAO;
import com.shiddiq.entity.Maklon;
import com.shiddiq.service.MaklonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
/**
 * @author shiddiq 
 * @version 2.0
 */
@Service
@Transactional
public class MaklonServiceImpl implements MaklonService {
	
	public MaklonServiceImpl() {
		System.out.println("MaklonServiceImpl()");
	}
	
    @Autowired
    private MaklonDAO maklonDAO;

    @Override
    public long createMaklon(Maklon maklon) {
        return maklonDAO.createMaklon(maklon);
    }
    @Override
    public Maklon updateMaklon(Maklon maklon) {
        return maklonDAO.updateMaklon(maklon);
    }
    @Override
    public void deleteMaklon(long id) {
        maklonDAO.deleteMaklon(id);
    }
    @Override
    public List<Maklon> getAllMaklons() {
        return maklonDAO.getAllMaklons();
    }
    @Override
    public Maklon getMaklon(long id) {
        return maklonDAO.getMaklon(id);
    }    
    @Override
    public List<Maklon> getAllMaklons(String id) {
    	return maklonDAO.getAllMaklons(id);
    }
	@Override
	public String getMaklonsequence() {
		// TODO Auto-generated method stub
		return maklonDAO.getMaklonsequence();
	}
	@Override
	public List<Maklon> getMaklonbyId(String id) {
		// TODO Auto-generated method stub
		return maklonDAO.getMaklonbyId(id);
	}
}
