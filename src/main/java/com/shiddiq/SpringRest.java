package com.shiddiq;
 
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

import org.jboss.logging.Logger;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.client.RestTemplate;


import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Parser;
import org.jsoup.safety.Whitelist;



public class SpringRest {
	
    private static final Logger logger = Logger.getLogger(SpringRest.class);

     /*GET REST KOREAN WEATHER API DATA*/
     public static  String getWeatherCurrent(String lat,String lng){
        final String uri = "http://apis.skplanetx.com/weather/current/minutely?lat="+lat+"&lon="+lng+"&version=1";
         
        RestTemplate restTemplate = new RestTemplate();     
        HttpHeaders headers = new HttpHeaders();
        headers.add("appKey", "747fe314-3d0a-3a6d-8efa-42013d3bf596");
        HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);        
        ResponseEntity<HashMap> result = restTemplate.exchange(uri, HttpMethod.GET, entity, HashMap.class);
         
        System.out.println(result);
        HashMap resultKey1 = (HashMap) result.getBody().get("weather");
        List<HashMap>  resultKey2 = (List) resultKey1.get("minutely");
        String valueHumidity = "0";
        HashMap valueTemperature = new HashMap<>();
        String valueTc = "0";
        
        for (HashMap object : resultKey2) {
			if (object.containsKey("humidity"))
				valueHumidity = object.get("humidity").toString();
			if (object.containsKey("temperature")) {
				valueTemperature = (HashMap) object.get("temperature");
				valueTc = (String) valueTemperature.get("tc");
			}
		}
        
        if (valueHumidity.equals(""))
        	valueHumidity = "0";
        if (valueTc.equals(""))
        	valueTc = "0";
        
        logger.info("=====================================================================");
        logger.info("Real time data hit");
        logger.info("Spring Rest Test Client sid value Humidity = "+valueHumidity);   
        logger.info("Spring Rest Test Client sid  value Temperature Current = "+valueTc);
        logger.info("======================================================================");
      
        return valueHumidity+","+valueTc;
    }
     
     /*GET REST KOREAN WEATHER API DATA FOR NEWSFLASH */
     // ADD BY SID 28.04.2018 10:26 ANZ TOWER JAKARTA 
     public static  String getWeatherNewsFlash(String lat,String lng){
        final String uri = "http://apis.skplanetx.com/weather/severe/alert?lat="+lat+"&lon="+lng+"&version=1";
        String feedback="";
        String valuecmdName = "";
        String valuevarName = "";
        String valuestressName = "";
        String valueTimeRelease = "";
        RestTemplate restTemplate = new RestTemplate();     
        HttpHeaders headers = new HttpHeaders();
        headers.add("appKey", "747fe314-3d0a-3a6d-8efa-42013d3bf596");
        HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);        
        ResponseEntity<HashMap> result = restTemplate.exchange(uri, HttpMethod.GET, entity, HashMap.class);
         
        System.out.println(result);
        HashMap resultKey1 = (HashMap) result.getBody().get("weather");
        List<HashMap>  resultKey2 = (List) resultKey1.get("alert");
    
        HashMap valueAlert51 = new HashMap<>();
    
        
        for (HashMap object : resultKey2) {
        try{
        	if (object.containsKey("timeRelease")){
				valueTimeRelease = object.get("timeRelease").toString();
					if (object.containsKey("alert51")) {
						valueAlert51 = (HashMap) object.get("alert51");
						valuecmdName = (String) valueAlert51.get("cmdName");
						valuevarName = (String) valueAlert51.get("varName");
						valuestressName = (String) valueAlert51.get("stressName");
						
						logger.info("=====================================================================");
				        logger.info("Real time data hit");
				        logger.info("Spring Rest Test Client sid value timeRelease = "+valueTimeRelease);  
				        logger.info("Spring Rest Test Client sid value cmdName = "+valuecmdName);   
				        logger.info("Spring Rest Test Client sid  value valuevarName = "+valuevarName);
				        logger.info("Spring Rest Test Client sid  value valuestressname = "+valuestressName);
				        logger.info("======================================================================");
					}
        	}else {
        		//nothing to do 
        		//valueTimeRelease="";
        	}
		}catch(java.lang.NullPointerException ex){
			logger.info("error message : "+ex);
			System.out.println("error message : "+ex);
			//feedback="no weather info "; 
		}
        }
        
        
      if (valueTimeRelease.equals("")){
    	feedback="no weather info ";  
      }else{
    	 feedback=valueTimeRelease+" 기준 "+valuevarName+valuestressName+valuecmdName;
      }
        return feedback;
        }


     //end
     
     /*GET REST PM10 from korean air  WEATHER API DATA*/
     public static  String getPM10(String lat,String lng){
    
    String PM10 = "";
    String TMx="";
    String TMy="";
    String Apikey="4d9f9a389deff3000a2cf9f99595fda6";
    String ServiceKey="JQtm41nT07gVdBIpN1qjxlFV0XadLDpyXdLQAK1H7mWqrjhyV6iNLlO44ijOEgWlgF+z8gi1S6tD/LtfDbsSgg==";
    final String uridaum = "https://apis.daum.net/local/geo/transcoord?apiKey="+Apikey+"&fromCoord=WGS84&x="+lng+"&y="+lat+"&toCoord=TM&output=json";
    
    logger.info("=============================================================");
    logger.info("daum api "+uridaum);
    RestTemplate restTemplate = new RestTemplate();
    String result = restTemplate.getForObject(uridaum, String.class);
    try{
	JSONObject jsonObject = new JSONObject(result);
	
	logger.info("Result x TM: [" + jsonObject.get("x") + "]");
	logger.info("Result y TM: [" + jsonObject.get("y") + "]");	
	TMx=(String) jsonObject.get("x").toString();
	TMy=(String) jsonObject.get("y").toString();
		
    } 
    catch (JSONException e) {
    	e.printStackTrace();
    }
    
    logger.info(String.format("file.encoding 1 : %s", System.getProperty("file.encoding")));
    logger.info(String.format("defaultCharset: %s", Charset.defaultCharset().name()));
    Charset utf8 = Charset.forName("UTF-8");
    
    System.setProperty( "file.encoding", "UTF-8");
    logger.info(String.format("file.encoding 2  : %s", System.getProperty("file.encoding")));
    logger.info(String.format("defaultCharset 2 : %s", Charset.defaultCharset().name()));
    System.out.println(result);
    logger.info("1===========================**************=================================");
    logger.info("korea air api KECO ger nearest station");
    //logger.info(result);
    
    final String urikeco1 = "http://openapi.airkorea.or.kr/openapi/services/rest/MsrstnInfoInqireSvc/getNearbyMsrstnList?ServiceKey="+ServiceKey
    		+"&tmY="+TMy+"&tmX="+TMx+"&pageNo=1&numOfRows=999";
    logger.info("keco1 api "+urikeco1);
    RestTemplate restTemplatexml = new RestTemplate();
    //String resultxml = restTemplatexml.getForObject(urikeco1, String.class);
    
    HttpHeaders headers = new HttpHeaders();
    headers.set("Accept", "text/html;charset=euc kr");
    headers.set("Accept-Language", "ko,ko-KR"); 
    headers.set("Accept-Charset", "koi8-r, koi8-u , euc-kr , utf-8 ");
   

    HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);
    restTemplatexml.getMessageConverters().add(0, new StringHttpMessageConverter(Charset.forName("UTF-8")));
    ResponseEntity<String> responseEntity = restTemplatexml.exchange(urikeco1, HttpMethod.GET, entity, String.class,"UTF-8");
    
   
		String resultxml = responseEntity.getBody();
		 System.out.println(resultxml);
		    logger.info("2 ===========================**************=================================");
		    logger.info("result given in xml");
		    logger.info(resultxml);

		    
		  
		   Document doc = Jsoup.parse(resultxml, "", Parser.xmlParser());
		   logger.info("jsoup stationName first value : "+doc.select("stationName").first());
		   String stationNameArg = doc.select("stationName").first().text().toString();
		    for (Element e : doc.select("stationName")) {
		        System.out.println(e);
		        logger.info("jsoup stationName loop value : "+e.text());
		   }

    
		    String finaluri="http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty?stationName="+stationNameArg+
		    		"&pageNo=1&dataTerm=DAILY&numOfRows=10"+
		    		"&ServiceKey="+ServiceKey;
		    logger.info("resultpm10 : "+finaluri);
		    RestTemplate restTemplatePM10 = new RestTemplate();
		    String resultpm10 = restTemplate.getForObject(finaluri, String.class);
		    logger.info("resultpm10 : "+resultpm10);
		    Document docpm10 = Jsoup.parse(resultpm10, "", Parser.xmlParser());
		    String pm10final = docpm10.select("pm10Value").first().text().toString();
		    logger.info("==================================================== ");
		    logger.info("**************************************************** ");
		    logger.info("resultpm10 : "+pm10final);
		    
		    PM10=pm10final.toString();
    
    
    
    	return PM10;
     }
     
  
 
 
}