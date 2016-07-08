package com.shiddiq.controller;
import java.util.List;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.MaklonMasterData;
import com.shiddiq.service.MaklonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;
 

 
@RestController
public class MaklonRestController {
 
    @Autowired
    MaklonService maklonService;  //Service which will do all data retrieval/manipulation work
 
     
    //-------------------Retrieve All Maklon JSON--------------------------------------------------------
     
    @RequestMapping(value = "/getMaklon", method = RequestMethod.GET)
    public ResponseEntity<List<Maklon>> listAllMaklons()  {
        List<Maklon> maklon = maklonService.getAllMaklons();
        if(maklon.isEmpty()){
            return new ResponseEntity<List<Maklon>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Maklon>>(maklon, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/getMaklonbyId", params = {"idArg"},method = RequestMethod.GET)   
    public ResponseEntity<List<Maklon>> listAllMaklonsnyId(
    		@RequestParam(value = "idArg") String idArg)  {
    	List<Maklon> maklon = maklonService.getMaklonbyId(idArg);
       
        if(maklon.isEmpty()){
            return new ResponseEntity<List<Maklon>>(HttpStatus.NOT_FOUND);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Maklon>>(maklon, HttpStatus.OK);
    }


}