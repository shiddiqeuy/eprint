package com.shiddiq.mail;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class RunMail {
	
	 public static void main( String[] args )
	    {
	    	ApplicationContext context = 
	             new ClassPathXmlApplicationContext("Spring-Mail.xml");
	    	 
	    	HTMLMail mm = (HTMLMail) context.getBean("htmlMail");
	    	String html="Dear PPIC  <br>"+
	    			"&nbsp; <br>"+
	    			"Mohon bantuannya untuk printing kemas manual sesuai data berikut : <br>"+
	    			"&nbsp; <br>"+
	   				"<table border='1'><tr><b>Nama Maklon:</b><td>Makindo-MKD</td></tr>"+
	   				"<tr><td><b>Kode Item</b></td><td>C211201128</td></tr>"+
	   				"<tr><td><b>Item Kemas</b></td><td>BOX WRP ND MERAH 12S (12DX12S)</td></tr>"+
	   				"<tr><td><b>Item FG</b></td><td>WRP Cookies Coklat (12D)</td></tr>"+
	   				"<tr><td><b>Jumlah Batch</b></td><td>3</td></tr>"+
	   				"<tr><td><b>Tanggal Produksi</b></td><td>5/24/2016</td></tr>"+
	   				"<tr><td><b>Jumlah Dus</b></td><td>3186</td></tr>"+
	   				"<tr><td><b>Jumlah Box</b></td><td>273</td></tr>"+
	   				"<tr><td><b>Note Tambahan:</b></td><td>Tolong cetak sebelum lebaran</td></tr>"+
	   				"</table>"+
	   				"&nbsp; <br>"+
	   				"Team PPIC, mohon dilengkapi data printing kemas di link berikut <a><b><i>Click Here</i></b></a> <br>"+
	   				"Terima kasih atas support dan kerjasamanya.<br>"+
	   				"&nbsp; <br>"+
	   				"Best Regards <br>"+
		   		   "<b>Team FRO </b> ";
	        mm.sendMail("info@nutrifood.com",
	    		   "suwito.wibowo@nutrifood.co.id",
	    		   "shiddiqitt@gmail.com",
	    		   "Maklon Request - Nutrifood - 2016/06/2016", 
	    		   html);
	        
	    }

}
