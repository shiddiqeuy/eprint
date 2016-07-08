package com.shiddiq.controller;
import java.util.List;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.Satuan;
import com.shiddiq.service.MaklonService;
import com.shiddiq.service.SatuanService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;
 

 
@RestController
public class SatuanRestController {
	
	@Autowired
    SatuanService satuanService;  //Service which will do all data retrieval/manipulation work
 
     
    //-------------------Retrieve All Satuan JSON--------------------------------------------------------
     
    @RequestMapping(value = "/getSatuan", method = RequestMethod.GET)
    public ResponseEntity<List<Satuan>> listAllSatuans()  {
        List<Satuan> satuan = satuanService.getAllSatuans();
        if(satuan.isEmpty()){
            return new ResponseEntity<List<Satuan>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Satuan>>(satuan, HttpStatus.OK);

}
    
}
