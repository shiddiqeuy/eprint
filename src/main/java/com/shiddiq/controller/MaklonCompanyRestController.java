package com.shiddiq.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.shiddiq.entity.Maklon;
import com.shiddiq.entity.MaklonCompany;
import com.shiddiq.service.MaklonCompanyService;
import com.shiddiq.service.MaklonService;

@RestController
public class MaklonCompanyRestController {
	
	@Autowired
    MaklonCompanyService makloncompanyService;  //Service which will do all data retrieval/manipulation work
	
	  //-------------------Retrieve All Maklon Company JSON--------------------------------------------------------
	  //-------------------Created 12.06.2016--------------------------------------------------------
	    
	    @RequestMapping(value = "/getMaklonCompany", method = RequestMethod.GET)
	    public ResponseEntity<List<MaklonCompany>> listAllMaklonCompanys()  {
	        List<MaklonCompany> makloncompany = makloncompanyService.getAllMaklonCompanys();
	        if(makloncompany.isEmpty()){
	            return new ResponseEntity<List<MaklonCompany>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
	        }
	        return new ResponseEntity<List<MaklonCompany>>(makloncompany, HttpStatus.OK);
	    }

}
