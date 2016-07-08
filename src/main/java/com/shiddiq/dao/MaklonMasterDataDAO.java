package com.shiddiq.dao;
import java.util.List;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.MaklonMasterData;

/**
 * @author shiddiq 
 * @version 1.0
 */
public interface MaklonMasterDataDAO {
    public long createMaklonMasterData(MaklonMasterData maklonmasterdata);
    public MaklonMasterData updateMaklonMasterData(MaklonMasterData maklonmasterdata);
    public void deleteMaklonMasterData(long id);
    public List<MaklonMasterData> getAllMaklonMasterDatas();
    public MaklonMasterData getMaklonMasterData(long id);  
    public List<MaklonMasterData> getMaklonMasterDataKodeItem(String maklonArg,String itemfgArg,String satuanArg);  
    public List<MaklonMasterData> getAllMaklonMasterDatas(String id);
}
