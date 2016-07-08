package com.shiddiq.service;
import com.shiddiq.entity.Maklon;
import java.util.List;

/**
 * @author shiddiq 
 * @version 2.0
 */
public interface MaklonService {
	public long createMaklon(Maklon maklon);
    public Maklon updateMaklon(Maklon maklon);
    public void deleteMaklon(long id);
    public List<Maklon> getAllMaklons();
    public Maklon getMaklon(long id);	
	public List<Maklon> getAllMaklons(String id);
	public List<Maklon> getMaklonbyId(String id);
	public String getMaklonsequence();
}
