package com.shiddiq.excel;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import com.shiddiq.entity.Maklon;
import com.shiddiq.service.MaklonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.view.document.AbstractExcelView;

public class ExcelBuilder extends AbstractExcelView
{

	 @Autowired
	    private MaklonService maklonService;
	 
    @Override
    protected void buildExcelDocument(Map<String, Object> model,HSSFWorkbook workbook, HttpServletRequest arg2, HttpServletResponse arg3)
            throws Exception 
    {
   
    
    List<Maklon> maklonList = maklonService.getAllMaklons();
        
        HSSFSheet sheet=workbook.createSheet("maklonList");
        sheet.setDefaultColumnWidth(30);
        
        HSSFRow header=sheet.createRow(0);
        header.createCell(0).setCellValue("id");
        header.createCell(1).setCellValue("Maklonname");
        header.createCell(2).setCellValue("itemfg");

        int r=1;
        
        for(Maklon s: maklonList)
        {
            HSSFRow arow=sheet.createRow(r++);
            
            arow.createCell(0).setCellValue(s.getId());
            arow.createCell(1).setCellValue(s.getMaklonname());
            arow.createCell(2).setCellValue(s.getItemfg());
            
        }
        
    }

}