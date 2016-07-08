package com.shiddiq.controller;
import com.shiddiq.entity.Maklon;
import com.shiddiq.service.MaklonService;
import com.shiddiq.SpringRest;
import com.shiddiq.mail.MailMail;
import com.shiddiq.mail.Mailer;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.ApplicationContext;





/**
 * @author shiddiq  18-Juni-2016 shiddiqitt@gmail.com
 * @version 5.0
 * 
 */
@Controller

public class MaklonController {
	
	private static final Logger logger = Logger.getLogger(MaklonController.class);
	
	public MaklonController() {
		System.out.println("MaklonController()");
	}

    @Autowired
    private MaklonService maklonService;
    private SpringRest MaklonRest;
    private Mailer emailapi;
//    @Autowired
//    private WeatherSchedulerImpl WS;
    
    @RequestMapping(value = "/generateexcel", method = RequestMethod.GET)
    ModelAndView generateExcel(HttpServletRequest request,
      HttpServletResponse response) throws Exception {
     System.out.println("Calling generateExcel()...");
     
     //List maklons = new ArrayList();
     List<Maklon> maklonsList = maklonService.getAllMaklons();    
     //maklons.add(maklonsList);
     
     ModelAndView modelAndView = new ModelAndView("excelView", "maklonsList",maklonsList);
     
     return modelAndView;
    }
    
    

    @RequestMapping("createMaklon")
    public ModelAndView createMaklon(@ModelAttribute Maklon maklon) {
    	logger.info("Creating Maklon. Data: "+maklon);
        return new ModelAndView("maklonForm");
    }
    
    @RequestMapping("Dashboard")
    public ModelAndView Dashboard(@ModelAttribute Maklon maklon) {
    	logger.info("Creating Maklon. Data: "+maklon);
        return new ModelAndView("Dashboard");
    }
    
    @RequestMapping("makloneditForm")
    public ModelAndView editMaklon(@RequestParam long id, @ModelAttribute Maklon maklon) {
    	logger.info("Updating the Maklon for the Id "+id);
        maklon = maklonService.getMaklon(id);
        return new ModelAndView("makloneditForm", "maklonObject", maklon);
    }
    
    
    @RequestMapping("updateMaklon")
    public ModelAndView updateMaklon(@ModelAttribute Maklon maklon) {
    	
    	
    	logger.info("update maklon data: "+maklon);
    	System.out.println("update maklon data "+maklon);
      
        	//lamp = maklonService.getLamp(id);
       
            maklonService.updateMaklon(maklon);
        
        return new ModelAndView("DataUpdated");
        
    }
    
    @RequestMapping("saveMaklon")
    public ModelAndView saveMaklon(@ModelAttribute Maklon maklon) {
    	
    	
    	logger.info("Saving the Maklon. Data : "+maklon);
    	
        
        if(maklon.getId() == 0 ){ // if maklons_registration id is 0 
        	logger.info("Saving the Maklon. Data new : "+maklon);
        	logger.info("Saving the Maklon. Data new remarks : "+maklon.getRemarks());
     
        	String seq = maklonService.getMaklonsequence();
        	String maklonname= maklon.getMaklonname();
        	;
        	DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        	Date date = new Date();
        	System.out.println(dateFormat.format(date));
        	String today = dateFormat.format(date);
      
        	String tanggal = maklon.getTanggalproduksi();
        	String satuan = maklon.getSatuan();
        	String requestnumber="REQ - "+seq+" - "+maklonname+" - "+today+" - "+satuan;
        	logger.info("requestnumber: "+requestnumber);
        	maklon.setRequestnumber(requestnumber);
        	//add by shiddiq 29.06.2016
        	String from = "info@nutrifood.com";
        	String to  ="suwito.wibowo@nutrifood.com";
        	String cc = "shiddiqitt@gmail.com,wibowosuwito@gmail.com";
        	String subject =requestnumber+" - NUTRIFOOD ";
        	String maklonnamemsg = maklon.getMaklonname();
        	String kodeitemmsg = maklon.getKodeitemkemas();
        	String itemkemasmsg = maklon.getItemkemas();
        	String itemfgmsg = maklon.getItemfg();
        	int jumlahbatchmsg = maklon.getJumlahbatch();
        	String tanggalproduksimsg = tanggal;
        	int jumlahdusmsg = maklon.getJumlahdus();
        	int jumlahboxmsg = maklon.getJumlahbox();
        	String Remarksmsg = maklon.getRemarks();
	        	try {
		        	emailapi.sentMail(from, to, cc, subject,
		        			maklonnamemsg, kodeitemmsg, itemkemasmsg, itemfgmsg, 
		        			jumlahbatchmsg, tanggalproduksimsg, jumlahdusmsg, jumlahboxmsg, Remarksmsg);
	        	}catch(Exception Ex){
	        		System.out.println("error sending mail message = "+Ex);
	        		logger.info("error sending mail message = "+Ex);
	        		Ex.printStackTrace();
	        	}
            maklonService.createMaklon(maklon);
            
           
        } else {
        	//lamp = maklonService.getLamp(id);
        	logger.info("Saving the Maklon. Data update : "+maklon);
            maklonService.updateMaklon(maklon);
        }
        return new ModelAndView("redirect:Dashboard");
        
    }
    
    
    
    @RequestMapping("deleteMaklon")
    public ModelAndView deleteMaklon(@RequestParam long id) {
    	logger.info("Deleting the Maklon. Id : "+id);
        maklonService.deleteMaklon(id);
        return new ModelAndView("redirect:Dashboard");
    }
    
    @RequestMapping(value = {"getAllMaklons", "/maklonmanagement"})
    public ModelAndView getAllMaklons() {
    	logger.info("Getting the all Maklon.");
        List<Maklon> maklonList = maklonService.getAllMaklons();
        //add by sid
        //lampRest.getWeatherCurrent();
        //WS.getWeather();
        
        return new ModelAndView("maklonList", "maklonList", maklonList);
    }
    
    @RequestMapping("searchMaklon")
    public ModelAndView searchMaklon(@RequestParam("searchMaklon") String searchMaklonid) {  
    	logger.info("Searching the Maklon. Maklon  Id: "+searchMaklonid);
    	List<Maklon> maklonList = maklonService.getAllMaklons(searchMaklonid);
        return new ModelAndView("maklonList", "maklonList", maklonList);    	
    }
    

    
}