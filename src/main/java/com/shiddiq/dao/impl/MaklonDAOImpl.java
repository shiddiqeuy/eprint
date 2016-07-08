/**
 * 
 */
package com.shiddiq.dao.impl;

import com.shiddiq.dao.MaklonDAO;
import com.shiddiq.entity.Maklon;
import com.shiddiq.util.HibernateUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * @author shiddiq
 * @version 4.0
 */

@Repository
public class MaklonDAOImpl implements MaklonDAO {
    
	public MaklonDAOImpl() {
    	System.out.println("MaklonDAOImpl");
    }
	
	@Autowired
    private HibernateUtil hibernateUtil;

    @Override
    public long createMaklon(Maklon maklon) {        
        return (long) hibernateUtil.create(maklon);
    }
    
    @Override
    public Maklon updateMaklon(Maklon maklon) {        
        return hibernateUtil.update(maklon);
    }
    
    @Override
    public void deleteMaklon(long id) {
        Maklon maklon = new Maklon();
        maklon.setId(id);
        hibernateUtil.delete(maklon);
    }
    
    @Override
    public List<Maklon> getAllMaklons() {        
        return hibernateUtil.fetchAll(Maklon.class);
    }
    
    @Override
    public Maklon getMaklon(long id) {
        return hibernateUtil.fetchById(id, Maklon.class);
    }

	@SuppressWarnings("unchecked")
	@Override
	public List<Maklon> getAllMaklons(String id) { 
		String query = "SELECT e.* FROM maklons e WHERE e.id like '%"+ id +"%'";
		List<Object[]> maklonObjects = hibernateUtil.fetchAll(query);
		List<Maklon> maklon = new ArrayList<Maklon>();
		for(Object[] maklonObject: maklonObjects) {
			Maklon maklons1 = new Maklon();
           
			int maklonid = ((BigInteger) maklonObject[0]).intValue();
			int batchke = ((int) maklonObject[1]);
			String itemfg = ((String) maklonObject[2]);
			String itemkemas = ((String) maklonObject[3]);
			int jumlahbatch = ((int) maklonObject[4]);			
            String kodeitemkemas = ((String) maklonObject[5]);
            String maklonname = ((String) maklonObject[6]);           
            String satuan = ((String) maklonObject[7]);
            String tanggalproduksi = ((String) maklonObject[8]);          
            String requestdate = ((String) maklonObject[9]);
            String requester = ((String) maklonObject[10]);
            String status = ((String) maklonObject[11]);
            int jumlahpouch = ((int) maklonObject[12]);
            int jumlahdus = ((int) maklonObject[13]);
            int jumlahbox = ((int) maklonObject[14]);
            String pd = ((String) maklonObject[15]);
            String ed = ((String) maklonObject[16]);
            String kodeprintingbox = ((String) maklonObject[17]);
            String expiredate = ((String) maklonObject[18]);
            int showbox = ((int) maklonObject[19]);
            int bag = ((int) maklonObject[20]);
            int ebag = ((int) maklonObject[21]);
            int sachet = ((int) maklonObject[22]);
            String requestnumber = ((String) maklonObject[23]);
            String remarks = ((String) maklonObject[24]);
            String tanggalpengiriman = ((String) maklonObject[25]);
            String tanggalprinting = ((String) maklonObject[26]);
            

            maklons1.setId(maklonid);
            maklons1.setKodeitemkemas(kodeitemkemas);
            maklons1.setItemkemas(itemkemas);
            maklons1.setItemfg(itemfg);
			maklons1.setSatuan(satuan);
			maklons1.setTanggalproduksi(tanggalproduksi);
            maklons1.setJumlahbatch(jumlahbatch);
            maklons1.setBatchke(batchke);
            //maklons1.setKuantitas(kuantitas);
            maklons1.setMaklonname(maklonname);
            maklons1.setRequestdate(requestdate);
            maklons1.setRequester(requester);
            maklons1.setStatus(status);
            maklons1.setJumlahpouch(jumlahpouch);
            maklons1.setJumlahdus(jumlahdus);
            maklons1.setJumlahbox(jumlahbox);
            maklons1.setPd(pd);
            maklons1.setEd(ed);
            maklons1.setKodeprintingbox(kodeprintingbox);
            maklons1.setExpiredate(expiredate);
            maklons1.setShowbox(showbox);
            maklons1.setBag(bag);
            maklons1.setEbag(ebag);
            maklons1.setRequestnumber(requestnumber);
            maklons1.setSachet(sachet);
            maklons1.setRemarks(remarks);
            maklons1.setTanggalpengiriman(tanggalpengiriman);;
            maklons1.setTanggalprinting(tanggalprinting);
          
			maklon.add(maklons1);
		}
		System.out.println(maklon);
		return maklon;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public String getMaklonsequence() { 
		int maklonid = 0;
		String query = "select * from maklons "+
						" where id=(select max(e.id) as id from maklons e)";
		List<Object[]> maklonObjects = hibernateUtil.fetchAll(query);		
		for(Object[] maklonObject: maklonObjects) {
			maklonid = ((BigInteger) maklonObject[0]).intValue();        
		}
		maklonid=maklonid+1;
		String sequence = Integer.toString(maklonid);
		System.out.println("max id = "+maklonid);
		return sequence;
	}

	@Override
	public List<Maklon> getMaklonbyId(String id) {
		// TODO Auto-generated method stub
		String query = "SELECT e.* FROM maklons e WHERE e.id = "+ id +" ";
		List<Object[]> maklonObjects = hibernateUtil.fetchAll(query);
		List<Maklon> maklon = new ArrayList<Maklon>();
		for(Object[] maklonObject: maklonObjects) {
			Maklon maklons1 = new Maklon();
           
			int maklonid = ((BigInteger) maklonObject[0]).intValue();
			int batchke = ((int) maklonObject[1]);
			String itemfg = ((String) maklonObject[2]);
			String itemkemas = ((String) maklonObject[3]);
			int jumlahbatch = ((int) maklonObject[4]);			
            String kodeitemkemas = ((String) maklonObject[5]);
            String maklonname = ((String) maklonObject[6]);           
            String satuan = ((String) maklonObject[7]);
            String tanggalproduksi = ((String) maklonObject[8]);          
            String requestdate = ((String) maklonObject[9]);
            String requester = ((String) maklonObject[10]);
            String status = ((String) maklonObject[11]);
            int jumlahpouch = ((int) maklonObject[12]);
            int jumlahdus = ((int) maklonObject[13]);
            int jumlahbox = ((int) maklonObject[14]);
            String pd = ((String) maklonObject[15]);
            String ed = ((String) maklonObject[16]);
            String kodeprintingbox = ((String) maklonObject[17]);
            String expiredate = ((String) maklonObject[18]);
            int showbox = ((int) maklonObject[19]);
            int bag = ((int) maklonObject[20]);
            int ebag = ((int) maklonObject[21]);
            int sachet = ((int) maklonObject[22]);
            String requestnumber = ((String) maklonObject[23]);
            String remarks = ((String) maklonObject[24]);
            String tanggalpengiriman = ((String) maklonObject[25]);
            String tanggalprinting = ((String) maklonObject[26]);
            

            maklons1.setId(maklonid);
            maklons1.setKodeitemkemas(kodeitemkemas);
            maklons1.setItemkemas(itemkemas);
            maklons1.setItemfg(itemfg);
			maklons1.setSatuan(satuan);
			maklons1.setTanggalproduksi(tanggalproduksi);
            maklons1.setJumlahbatch(jumlahbatch);
            maklons1.setBatchke(batchke);
            //maklons1.setKuantitas(kuantitas);
            maklons1.setMaklonname(maklonname);
            maklons1.setRequestdate(requestdate);
            maklons1.setRequester(requester);
            maklons1.setStatus(status);
            maklons1.setJumlahpouch(jumlahpouch);
            maklons1.setJumlahdus(jumlahdus);
            maklons1.setJumlahbox(jumlahbox);
            maklons1.setPd(pd);
            maklons1.setEd(ed);
            maklons1.setKodeprintingbox(kodeprintingbox);
            maklons1.setExpiredate(expiredate);
            maklons1.setShowbox(showbox);
            maklons1.setBag(bag);
            maklons1.setEbag(ebag);
            maklons1.setRequestnumber(requestnumber);
            maklons1.setSachet(sachet);
            maklons1.setRemarks(remarks);
            maklons1.setTanggalpengiriman(tanggalpengiriman);;
            maklons1.setTanggalprinting(tanggalprinting);
          
			maklon.add(maklons1);
		}
		System.out.println(maklon);
		return maklon;
	}
}