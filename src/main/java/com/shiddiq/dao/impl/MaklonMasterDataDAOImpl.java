/**
 * 
 */
package com.shiddiq.dao.impl;

import com.shiddiq.dao.MaklonDAO;
import com.shiddiq.dao.MaklonMasterDataDAO;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.MaklonMasterData;
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
public class MaklonMasterDataDAOImpl implements MaklonMasterDataDAO {
    
	public MaklonMasterDataDAOImpl() {
    	System.out.println("MaklonMasterDataDAOImpl");
    }
	
	@Autowired
    private HibernateUtil hibernateUtil;

    @Override
    public long createMaklonMasterData(MaklonMasterData maklonmasterdata) {        
        return (long) hibernateUtil.create(maklonmasterdata);
    }
    
    @Override
    public MaklonMasterData updateMaklonMasterData(MaklonMasterData maklonmasterdata) {        
        return hibernateUtil.update(maklonmasterdata);
    }
    
    @Override
    public void deleteMaklonMasterData(long id) {
        MaklonMasterData maklonmasterdata = new MaklonMasterData();
        maklonmasterdata.setId(id);
        hibernateUtil.delete(maklonmasterdata);
    }
    
    @Override
    public List<MaklonMasterData> getAllMaklonMasterDatas() {        
        return hibernateUtil.fetchAll(MaklonMasterData.class);
    }
    
    @Override
    public MaklonMasterData getMaklonMasterData(long id) {
        return hibernateUtil.fetchById(id, MaklonMasterData.class);
    }
    
    @SuppressWarnings("unchecked")
    @Override
	public List<MaklonMasterData> getMaklonMasterDataKodeItem(String maklonArg, String itemfgArg, String satuanArg) {
		// TODO Auto-generated method stub
    	String query = "SELECT e.* FROM maklondatamaster e WHERE e.maklon='"+ maklonArg +"'"+
    					" AND e.itemfg='"+itemfgArg+"'"+
    					" AND e.satuan='"+satuanArg+"'";
    	System.out.println(query);
		List<Object[]> maklonmasterdataObjects = hibernateUtil.fetchAll(query);
		List<MaklonMasterData> maklonmasterdata = new ArrayList<MaklonMasterData>();
		for(Object[] maklonmasterdataObject: maklonmasterdataObjects) {
			MaklonMasterData maklonmasterdatas = new MaklonMasterData();
           
			int maklonid = ((int) maklonmasterdataObject[0]);
            String maklon = ((String) maklonmasterdataObject[1]);
            String itemfg = ((String) maklonmasterdataObject[2]);
            String satuan = ((String) maklonmasterdataObject[3]);
            String kodeitemkemas = ((String) maklonmasterdataObject[4]);
            String itemkemas = ((String) maklonmasterdataObject[5]);
            int qty = ((int) maklonmasterdataObject[6]);
            int expires = ((int) maklonmasterdataObject[7]);
            
            maklonmasterdatas.setId(maklonid);
            maklonmasterdatas.setMaklon(maklon);
            maklonmasterdatas.setItemfg(itemfg);
            maklonmasterdatas.setSatuan(satuan);
            maklonmasterdatas.setKodeitemkemas(kodeitemkemas);
            maklonmasterdatas.setItemkemas(itemkemas);
            maklonmasterdatas.setQty(qty);
            maklonmasterdatas.setExpires(expires);

            maklonmasterdata.add(maklonmasterdatas);
		}
		System.out.println(maklonmasterdata);
		return maklonmasterdata;
    	
	
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MaklonMasterData> getAllMaklonMasterDatas(String id) { 
		String query = "SELECT e.* FROM maklondatamaster e WHERE e.id like '%"+ id +"%'";
		List<Object[]> maklonmasterdataObjects = hibernateUtil.fetchAll(query);
		List<MaklonMasterData> maklonmasterdata = new ArrayList<MaklonMasterData>();
		for(Object[] maklonmasterdataObject: maklonmasterdataObjects) {
			MaklonMasterData maklonmasterdatas = new MaklonMasterData();
           
			int maklonid = ((int) maklonmasterdataObject[0]);
            String maklon = ((String) maklonmasterdataObject[1]);
            String itemfg = ((String) maklonmasterdataObject[2]);
            String satuan = ((String) maklonmasterdataObject[3]);
            String kodeitemkemas = ((String) maklonmasterdataObject[4]);
            String itemkemas = ((String) maklonmasterdataObject[5]);
            int qty = ((int) maklonmasterdataObject[6]);
            int expires = ((int) maklonmasterdataObject[7]);
            
            maklonmasterdatas.setId(maklonid);
            maklonmasterdatas.setMaklon(maklon);
            maklonmasterdatas.setItemfg(itemfg);
            maklonmasterdatas.setKodeitemkemas(kodeitemkemas);
            maklonmasterdatas.setItemkemas(itemkemas);
            maklonmasterdatas.setQty(qty);
            maklonmasterdatas.setSatuan(satuan);
            maklonmasterdatas.setExpires(expires);

            maklonmasterdata.add(maklonmasterdatas);
		}
		System.out.println(maklonmasterdata);
		return maklonmasterdata;
	}

	
}