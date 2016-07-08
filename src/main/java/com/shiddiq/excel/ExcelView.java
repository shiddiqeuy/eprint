package com.shiddiq.excel;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import com.shiddiq.entity.Maklon;



public class  ExcelView extends AbstractExcelView {
	

	
	
	
	 @Override
	 protected void buildExcelDocument(Map model, HSSFWorkbook workbook,
	   HttpServletRequest request, HttpServletResponse response)
	   throws Exception {
		
	

	  List <Maklon>  maklonsList = (List) model.get("maklonsList");
	  HSSFSheet sheet = workbook.createSheet("Maklon Report");
      
	
	  
	 
	  
	  HSSFRow header = sheet.createRow(0);
	  
	  header.createCell(0).setCellValue("Request Number");
	  header.createCell(1).setCellValue("Request Date");
	  header.createCell(2).setCellValue("Requester");
	  header.createCell(3).setCellValue("Maklon Name");
	  header.createCell(4).setCellValue("Item fg");
	  header.createCell(5).setCellValue("Satuan");
	  header.createCell(6).setCellValue("Kode Item Kemas");
	  header.createCell(7).setCellValue("Item Kemas");
	  header.createCell(8).setCellValue("Tanggal Produksi");
	  header.createCell(9).setCellValue("Expire Date");
	  header.createCell(10).setCellValue("Jumlah Batch");
	  header.createCell(11).setCellValue("Batch ke");
	  header.createCell(12).setCellValue("Jumlah Dus");
	  header.createCell(13).setCellValue("Jumlah Box");
	  header.createCell(14).setCellValue("Jumlah Bag");
	  header.createCell(15).setCellValue("Jumlah E-Bag");
	  header.createCell(16).setCellValue("JumlahSachet");
	  header.createCell(17).setCellValue("Jumlah Pouch");
	  header.createCell(18).setCellValue("Kode Printing Box");
	  header.createCell(19).setCellValue("PD");
	  header.createCell(20).setCellValue("ED");
	  header.createCell(21).setCellValue("Status");
	  header.createCell(22).setCellValue("Remarks");
	  

	  int counter = 1;
	  for (int i=0; i<maklonsList.size(); i++){
		  
		  HSSFRow row = sheet.createRow(counter++);
		   row.createCell(0).setCellValue(maklonsList.get(i).getRequestnumber());
		   row.createCell(1).setCellValue(maklonsList.get(i).getRequestdate());
		   row.createCell(2).setCellValue(maklonsList.get(i).getRequester());
		   row.createCell(3).setCellValue(maklonsList.get(i).getMaklonname());
		   row.createCell(4).setCellValue(maklonsList.get(i).getItemfg());
		   row.createCell(5).setCellValue(maklonsList.get(i).getSatuan());
		   row.createCell(6).setCellValue(maklonsList.get(i).getKodeitemkemas());
		   row.createCell(7).setCellValue(maklonsList.get(i).getItemkemas());
		   row.createCell(8).setCellValue(maklonsList.get(i).getTanggalproduksi());
		   row.createCell(9).setCellValue(maklonsList.get(i).getExpiredate());
		   row.createCell(10).setCellValue(maklonsList.get(i).getJumlahbatch());
		   row.createCell(11).setCellValue(maklonsList.get(i).getBatchke());
		   row.createCell(12).setCellValue(maklonsList.get(i).getJumlahdus());
		   row.createCell(13).setCellValue(maklonsList.get(i).getJumlahbox());
		   row.createCell(14).setCellValue(maklonsList.get(i).getBag());
		   row.createCell(15).setCellValue(maklonsList.get(i).getEbag());
		   row.createCell(16).setCellValue(maklonsList.get(i).getSachet());
		   row.createCell(17).setCellValue(maklonsList.get(i).getJumlahpouch());
		   row.createCell(18).setCellValue(maklonsList.get(i).getKodeprintingbox());
		   row.createCell(19).setCellValue(maklonsList.get(i).getPd());
		   row.createCell(20).setCellValue(maklonsList.get(i).getEd());
		   row.createCell(21).setCellValue(maklonsList.get(i).getStatus());
		   row.createCell(22).setCellValue(maklonsList.get(i).getRemarks());
	  
	        
	    }
		  for (int i = 0; i <= 22; i++) {
			  sheet.autoSizeColumn(i);
		}
	
	}
}