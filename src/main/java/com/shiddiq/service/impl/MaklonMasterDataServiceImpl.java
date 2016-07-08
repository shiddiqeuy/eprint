package com.shiddiq.service.impl;
import com.shiddiq.dao.MaklonDAO;
import com.shiddiq.dao.MaklonMasterDataDAO;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.MaklonMasterData;
import com.shiddiq.service.MaklonMasterDataService;
import com.shiddiq.service.MaklonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
/**
 * @author shiddiq 
 * @version 1.0
 */
@Service
@Transactional
public class MaklonMasterDataServiceImpl implements MaklonMasterDataService {
	
	public MaklonMasterDataServiceImpl() {
		System.out.println("MaklonMasterDataServiceImpl()");
	}
	
    @Autowired
    private MaklonMasterDataDAO maklonmasterdataDAO;

    @Override
    public long createMaklonMasterData(MaklonMasterData maklonmasterdata) {
        return maklonmasterdataDAO.createMaklonMasterData(maklonmasterdata);
    }
    @Override
    public MaklonMasterData updateMaklonMasterData(MaklonMasterData maklonmasterdata) {
        return maklonmasterdataDAO.updateMaklonMasterData(maklonmasterdata);
    }
    @Override
    public void deleteMaklonMasterData(long id) {
        maklonmasterdataDAO.deleteMaklonMasterData(id);
    }
    @Override
    public List<MaklonMasterData> getAllMaklonMasterDatas() {
        return maklonmasterdataDAO.getAllMaklonMasterDatas();
    }
    @Override
    public MaklonMasterData getMaklonMasterData (long id) {
        return maklonmasterdataDAO.getMaklonMasterData(id);
    }
    @Override
	public List<MaklonMasterData> getMaklonMasterDataKodeItem(String maklonArg, String itemfgArg, String satuanArg) {
		// TODO Auto-generated method stub
    	return maklonmasterdataDAO.getMaklonMasterDataKodeItem(maklonArg, itemfgArg, satuanArg);
	}
    @Override
    public List<MaklonMasterData> getAllMaklonMasterDatas(String id) {
    	return maklonmasterdataDAO.getAllMaklonMasterDatas(id);
    }
	
}
