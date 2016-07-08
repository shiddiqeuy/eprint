package com.shiddiq.mail;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Mailer {
	
	
	
		public static void sentMail (String from, String to, String cc,String subject,
				String maklon,String kodeitem,String itemkemas,String itemfg,int jumlahbatch,
				String tanggalproduksi,int jumlahdus,int jumlahbox,String Remarks){
			//TO DO
			ApplicationContext context = 
		             new ClassPathXmlApplicationContext("Spring-Mail.xml");
		    	 
		    	HTMLMail mm = (HTMLMail) context.getBean("htmlMail");
		    	String html="<p>Dear PPIC  <br>"+
		    			//"&nbsp; &nbsp;<br>"+
		    			"Mohon bantuannya untuk printing kemas manual sesuai data berikut : </p><br>"+
		    			//"&nbsp; <br>"+
		   				"<table border='1'><tr><td><b>Nama Maklon</b></td><td> "+maklon+" </td></tr>"+
		   				"<tr><td><b>Kode Item</b></td><td> "+kodeitem+" </td></tr>"+
		   				"<tr><td><b>Item Kemas</b></td><td> "+itemkemas+" </td></tr>"+
		   				"<tr><td><b>Item FG</b></td><td> "+itemfg+" </td></tr>"+
		   				"<tr><td><b>Jumlah Batch</b></td><td> "+jumlahbatch+" </td></tr>"+
		   				"<tr><td><b>Tanggal Produksi</b></td><td> "+tanggalproduksi+" </td></tr>"+
		   				"<tr><td><b>Jumlah Dus</b></td><td> "+jumlahdus+" </td></tr>"+
		   				"<tr><td><b>Jumlah Box</b></td><td> "+jumlahbox+" </td></tr>"+
		   				"<tr><td><b>Note Tambahan</b></td><td> "+Remarks+" </td></tr>"+
		   				"</table>"+
		   				"&nbsp; <br>"+
		   				"Team PPIC, mohon dilengkapi data printing kemas di link berikut <a href='http://192.168.1.8:5000/eprint/Dashboard'><b><i>Click Here</i></b></a> <br>"+
		   				"Terima kasih atas support dan kerjasamanya.<br>"+
		   				"&nbsp; <br>"+
		   				"Best Regards <br>"+
			   		   "<b>Team FRO </b> ";
		    	 mm.sendMail(from,to,cc,subject, html);
			
		
		}

}
