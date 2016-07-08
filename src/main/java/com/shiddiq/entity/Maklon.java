package com.shiddiq.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import java.io.Serializable;
/**
 * @author shiddiq / shiddiqitt@gmail.com 
 * @version 5.0
 * 21-June-2016
 */
@Entity
@Table(name = "maklons")
public class Maklon implements Serializable {
	
	private static final long serialVersionUID = -7988799579036225149L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column
    private String kodeitemkemas;

    @Column
    private String itemkemas;

    @Column
    private String itemfg;

    @Column
    private String satuan;
    
    @Column
    private String tanggalproduksi;

    @Column
    private int jumlahbatch;

    @Column
    private int batchke;
    
    //@Column
    //private int kuantitas;
    
    @Column
    private String maklonname;
    
    @Column
    private String requestdate;
    
    @Column
    private String requester;
    
    @Column
    private String status;
    
    @Column
    private int jumlahpouch;
    
    @Column
    private int jumlahdus;
    
    @Column
    private int jumlahbox;
    
    @Column
    private String pd;
    
    @Column
    private String ed;
    
    @Column
    private String kodeprintingbox;
    
    @Column
    private String expiredate;
    
    @Column
    private int showbox;
    
    @Column
    private int bag;
    
    @Column
    private int ebag;
    
    @Column
    private int sachet;
    
    @Column
    private String requestnumber;
    
    @Column
    private String remarks;
    
    @Column
    private String tanggalpengiriman;
    
    @Column
    private String tanggalprinting;
    
    
    


    public Maklon() {
    }

    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
  
    public String getKodeitemkemas() {
        return kodeitemkemas;
    }
    public void setKodeitemkemas(String kodeitemkemas) {
        this.kodeitemkemas = kodeitemkemas;
    }
    
    public String getItemkemas() {
        return itemkemas;
    }
    public void setItemkemas(String itemkemas) {
        this.itemkemas = itemkemas;
    }


    public String getItemfg() {
        return itemfg;
    }
    public void setItemfg(String itemfg) {
        this.itemfg = itemfg;
    }

    public String getSatuan() {
        return satuan;
    }

    public void setSatuan(String satuan) {
        this.satuan = satuan;
    }

     public String getTanggalproduksi() {
        return tanggalproduksi;
    }

    public void setTanggalproduksi(String tanggalproduksi) {
        this.tanggalproduksi = tanggalproduksi;
    }


    public int getJumlahbatch() {
        return jumlahbatch;
    }
    public void setJumlahbatch(int jumlahbatch) {
        this.jumlahbatch = jumlahbatch;
    }

    public int getBatchke() {
        return batchke;
    }
    public void setBatchke(int batchke) {
        this.batchke = batchke;
    }
    
    //public int getKuantitas() {
    //    return kuantitas;
    //}
    //public void setKuantitas(int kuantitas) {
     //   this.kuantitas = kuantitas;
    //}
    
    public String getMaklonname() {
        return maklonname;
    }
    public void setMaklonname(String maklonname) {
        this.maklonname = maklonname;
    }
    
    public String getRequestdate() {
        return requestdate;
    }
    public void setRequestdate(String requestdate) {
        this.requestdate = requestdate;
    }
    
    public String getRequester() {
        return requester;
    }
    public void setRequester(String requester) {
        this.requester = requester;
    }
    
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    
    public int getJumlahpouch() {
        return jumlahpouch;
    }
    public void setJumlahpouch(int jumlahpouch) {
        this.jumlahpouch = jumlahpouch;
    }
    
    public int getJumlahdus() {
        return jumlahdus;
    }
    public void setJumlahdus(int jumlahdus) {
        this.jumlahdus = jumlahdus;
    }
    
    public int getJumlahbox() {
        return jumlahbox;
    }
    public void setJumlahbox(int jumlahbox) {
        this.jumlahbox = jumlahbox;
    }
    
    public String getPd() {
        return pd;
    }
    public void setPd(String pd) {
        this.pd = pd;
    }
    
    public String getEd() {
        return ed;
    }
    public void setEd(String ed) {
        this.ed = ed;
    }
    
    public String getKodeprintingbox() {
        return kodeprintingbox;
    }
    public void setKodeprintingbox(String kodeprintingbox) {
        this.kodeprintingbox = kodeprintingbox;
    }
    
    public String getExpiredate() {
        return expiredate;
    }
    public void setExpiredate(String expiredate) {
        this.expiredate = expiredate;
    }
    
    public int getShowbox() {
        return showbox;
    }
    public void setShowbox(int showbox) {
        this.showbox = showbox;
    }
    
    public int getBag() {
        return bag;
    }
    public void setBag(int bag) {
        this.bag = bag;
    }
    
    public int getEbag() {
        return ebag;
    }
    public void setEbag(int ebag) {
        this.ebag = ebag;
    }
    
    public int getSachet() {
        return sachet;
    }
    public void setSachet(int sachet) {
        this.sachet = sachet;
    }
    
    public String getRequestnumber() {
        return requestnumber;
    }
    public void setRequestnumber(String requestnumber) {
        this.requestnumber = requestnumber;
    }
    
    public String getRemarks() {
        return remarks;
    }
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    
    public String getTanggalpengiriman() {
        return tanggalpengiriman;
    }
    public void setTanggalpengiriman(String tanggalpengiriman) {
        this.tanggalpengiriman = tanggalpengiriman;
    }
    
    public String getTanggalprinting() {
        return tanggalprinting;
    }
    public void setTanggalprinting(String tanggalprinting) {
        this.tanggalprinting = tanggalprinting;
    }




   
    @Override
    public String toString() {
        return "Maklon{" +
                "id=" + id +
                ", kodeitemkemas='" + kodeitemkemas + '\'' +
                ", itemkemas=" + itemkemas +
                ", itemfg=" + itemfg +
                ", satuan=" + satuan +
                ", tanggalproduksi=" + tanggalproduksi +
                ", jumlahbatch=" + jumlahbatch +
                ", batchke=" + batchke +
                ", maklonname=" + maklonname +
                ", requestdate=" + requestdate +
                ", requester=" + requester +
                ", status=" + status +  
                ", jumlahpouch=" + jumlahpouch + 
                ", jumlahdus=" + jumlahdus + 
                ", jumlahbox=" + jumlahbox + 
                ", pd=" + pd + 
                ", ed=" + ed + 
                ", kodeprintingbox=" + kodeprintingbox + 
                ", expiredate=" + expiredate + 
                ", showbox=" + showbox +
                ", bag=" + bag +
                ", ebag=" + ebag +
                ", sachet=" + sachet +
                ", requestnumber=" + requestnumber +
                ", remarks=" + remarks +
                ", tanggalpengiriman=" + tanggalpengiriman +
                ", tanggalprinting=" + tanggalprinting +
                '}';
    }
}