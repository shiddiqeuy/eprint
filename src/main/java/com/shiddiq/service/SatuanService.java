package com.shiddiq.service;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.Satuan;

import java.util.List;

/**
 * @author shiddiq 
 * @version 2.0
 */
public interface SatuanService {
	public long createSatuan(Satuan satuan);
    public Satuan updateSatuan(Satuan satuan);
    public void deleteSatuan(long id);
    public List<Satuan> getAllSatuans();
    public Satuan getSatuan(long id);	
	public List<Satuan> getAllSatuans(String id);
}
