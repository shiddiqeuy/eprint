package com.shiddiq.dao;
import java.util.List;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.Satuan;

/**
 * @author shiddiq 
 * @version 1.0
 */
public interface SatuanDAO {
    public long createSatuan(Satuan satuan);
    public Satuan updateSatuan(Satuan satuan);
    public void deleteSatuan(long id);
    public List<Satuan> getAllSatuans();
    public Satuan getSatuan(long id);   
    public List<Satuan> getAllSatuans(String id);
}
