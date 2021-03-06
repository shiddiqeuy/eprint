package com.shiddiq.controller;
import java.util.List;
import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.MaklonMasterData;
import com.shiddiq.service.MaklonMasterDataService;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;
 

 
@RestController
public class MaklonMasterDataRestController {
 
    @Autowired
    MaklonMasterDataService maklonmasterdataService;  //Service which will do all data retrieval/manipulation work
 
     
    //-------------------Retrieve All Maklon Master Data JSON--------------------------------------------------------
     
    @RequestMapping(value = "/getMaklonMasterData", method = RequestMethod.GET)
    public ResponseEntity<List<MaklonMasterData>> listAllMaklonMasterDatas()  {
        List<MaklonMasterData> maklonmasterdata = maklonmasterdataService.getAllMaklonMasterDatas();
        if(maklonmasterdata.isEmpty()){
            return new ResponseEntity<List<MaklonMasterData>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<MaklonMasterData>>(maklonmasterdata, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/getMaklonMasterDataKodeItem", params = {"maklonArg", "itemfgArg", "satuanArg"},method = RequestMethod.GET)   
    public ResponseEntity<List<MaklonMasterData>> listAllMaklonMasterDataKodeItem(
    		@RequestParam(value = "maklonArg") String maklonArg, 
    		@RequestParam(value = "itemfgArg") String itemfgArg, 
    		@RequestParam(value = "satuanArg") String satuanArg)  {
        List<MaklonMasterData> maklonmasterdata = maklonmasterdataService.getMaklonMasterDataKodeItem(maklonArg, itemfgArg, satuanArg);
        if(maklonmasterdata.isEmpty()){
            return new ResponseEntity<List<MaklonMasterData>>(HttpStatus.NOT_FOUND);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<MaklonMasterData>>(maklonmasterdata, HttpStatus.OK);
    }


}