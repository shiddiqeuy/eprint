package com.shiddiq.dao;
import java.util.List;
import com.shiddiq.entity.Maklon;

/**
 * @author shiddiq 
 * @version 2.0
 */
public interface MaklonDAO {
    public long createMaklon(Maklon maklon);
    public Maklon updateMaklon(Maklon maklon);
    public void deleteMaklon(long id);
    public List<Maklon> getAllMaklons();
    public Maklon getMaklon(long id);   
    public List<Maklon> getAllMaklons(String id);
    public List<Maklon> getMaklonbyId(String id);
    public String getMaklonsequence();
}
