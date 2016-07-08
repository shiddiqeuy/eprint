package com.shiddiq.service;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.MaklonMasterData;

import java.util.List;

/**
 * @author shiddiq 
 * @version 2.0
 */
public interface MaklonMasterDataService {
	public long createMaklonMasterData(MaklonMasterData maklonmasterdata);
    public MaklonMasterData updateMaklonMasterData(MaklonMasterData maklonmasterdata);
    public void deleteMaklonMasterData(long id);
    public List<MaklonMasterData> getAllMaklonMasterDatas();
    public MaklonMasterData getMaklonMasterData(long id);	
    public List<MaklonMasterData> getMaklonMasterDataKodeItem(String maklonArg,String itemfgArg,String satuanArg);
	public List<MaklonMasterData> getAllMaklonMasterDatas(String id);
}
