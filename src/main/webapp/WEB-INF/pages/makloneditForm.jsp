<%--
  User: Shiddiq
  Date: 22.06.2016
  Time: 06:01 AM
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="shiddiq">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>e-print APP</title> 
        <!-- jQuery -->
     
    <script src="<c:url value='/resources/js/jquery-1.10.2.js' />" > </script>
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.js"></script>
     <!-- Bootstrap CSS -->
    <link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet">
    
    <link href="<c:url value='/resources/css/jquery-ui.css' />" rel="stylesheet"> 
    <link href="<c:url value='/resources/css/jqGrid-4.5.4/ui.jqgrid.css' />" rel="stylesheet">
    <script src="<c:url value='/resources/js/jquery-ui.js' />" > </script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/resources/js/jquery.jqGrid.min.js' />" > </script>
    <script src="<c:url value='/resources/js/grid.locale-en.js' />" > </script>

    <!-- Custom Fonts -->
    <link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css' />" rel="stylesheet"> 
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
   
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
<style>
				.error {
    					border: solid 2px #FF0000;  
					}
					
</style>

</head>

<script>
		$(document).ready(function() {
		    $('#datePicker1')
		        .datepicker({
		            format: 'dd/mm/yyyy'
		        });
		    $('#datePicker2')
	        .datepicker({
	            format: 'dd/mm/yyyy'
	        });
		    
		    document.getElementById("requestnumberdummy").value ="${maklonObject.requestnumber}";
			document.getElementById("remarksdummy").value ="${maklonObject.remarks}";
		    
		})
		function updateData(){
			//TO DO
			console.log("update date");
			console.log("update date id "+"${maklonObject.id}");
			document.getElementById("id").value="${maklonObject.id}";			
			document.getElementById("batchke").value="${maklonObject.batchke}";
			document.getElementById("tanggalproduksi").value="${maklonObject.tanggalproduksi}";
			document.getElementById("itemkemas").value="${maklonObject.itemkemas}";
			document.getElementById("kodeitemkemas").value="${maklonObject.kodeitemkemas}";
			document.getElementById("jumlahbatch").value="${maklonObject.jumlahbatch}";
			document.getElementById("satuan").value="${maklonObject.satuan}";
			document.getElementById("itemfg").value="${maklonObject.itemfg}";
			document.getElementById("maklonname").value="${maklonObject.maklonname}";
			document.getElementById("requestdate").value="${maklonObject.requestdate}";
			document.getElementById("requester").value="${maklonObject.requester}";
			document.getElementById("jumlahpouch").value="${maklonObject.jumlahpouch}";
			document.getElementById("jumlahdus").value="${maklonObject.jumlahdus}";
			document.getElementById("jumlahbox").value="${maklonObject.jumlahbox}";
			document.getElementById("expiredate").value="${maklonObject.expiredate}";
			document.getElementById("kodeprintingbox").value="${maklonObject.kodeprintingbox}";
			document.getElementById("showbox").value="${maklonObject.showbox}";
			document.getElementById("bag").value="${maklonObject.bag}";
			document.getElementById("ebag").value="${maklonObject.ebag}";
			document.getElementById("sachet").value="${maklonObject.sachet}";
			document.getElementById("pd").value="${maklonObject.pd}";
			document.getElementById("ed").value="${maklonObject.ed}";
			document.getElementById("requestnumber").value="${maklonObject.requestnumber}";
			document.getElementById("remarks").value="${maklonObject.remarks}";
			
		
			if(document.getElementById("tanggalprinting").value=="" || document.getElementById("tanggalprinting").value==null ){
				 $("#tanggalprinting").addClass('error');
		
		
				 console.log("tanggalprinting error");
				
			 }
			
			if (document.getElementById("tanggalpengiriman").value=="" || document.getElementById("tanggalpengiriman").value==null){
				 $("#tanggalpengiriman").addClass('error');
					
				 console.log("tanggalpengiriman error");
				
				 
			 }
			 
			if(document.getElementById("tanggalpengiriman").value &&  document.getElementById("tanggalpengiriman").value){
				//FINALY
					console.log("Finally");
					document.getElementById("status").value="Complete";//complete the flow
					document.getElementById("maklonPPICForm").submit();
			 }
		}

		//function 
		var today = new Date();
			var dd = today.getDate();
			var mm = today.getMonth()+1; //January is 0!
			var yyyy = today.getFullYear();

			if(dd<10) {
			    dd='0'+dd
			} 

			if(mm<10) {
			    mm='0'+mm
			} 

			today = dd+'/'+mm+'/'+yyyy;
		
 
  </script>

<body>
			
						<div class="col-lg-6">
									<form:form id="maklonPPICForm" cssClass="form-horizontal" modelAttribute="maklon" method="post" action="updateMaklon">
								
												<input id="id" name="id" class="form-control" type="hidden" />									
												<input id="batchke" name="batchke" class="form-control" type="hidden" />
												<input id="jumlahbatch" name="jumlahbatch" class="form-control" type="hidden" />
												<input id="tanggalproduksi" name="tanggalproduksi" class="form-control" type="hidden"  />
												<input id="itemkemasdummy" name="itemkemasdummy" class="form-control" type="hidden"  />
												<input id="kodeitemkemasdummy" name="kodeitemkemasdummy" class="form-control" type="hidden"  />
												<input id="satuan"  name="satuan" class="form-control"  type="hidden"  />
												<input id="itemfg" name="itemfg" class="form-control" type="hidden" />
												<input id="maklonname" name="maklonname" class="form-control" type="hidden" />
												<input id="kodeitemkemas" name="kodeitemkemas" class="form-control" type="hidden" />
												<input id="itemkemas" name="itemkemas" class="form-control" type="hidden" />
												<input id="requestdate" name="requestdate" class="form-control" type="hidden" />
												<input id="requester" name="requester" class="form-control" type="hidden" />
												<input id="status" name="status" class="form-control" type="hidden" />
												<input id="jumlahpouch" name="jumlahpouch" class="form-control" type="hidden" />
												<input id="jumlahdus" name="jumlahdus" class="form-control" type="hidden" />
												<input id="jumlahbox" name="jumlahbox" class="form-control" type="hidden" />
												<input id="expiredate" name="expiredate" class="form-control" type="hidden" />
												<input id="kodeprintingbox" name="kodeprintingbox" class="form-control" type="hidden" />
												<input id="showbox" name="showbox" class="form-control" type="hidden" />
												<input id="bag" name="bag" class="form-control" type="hidden" />
												<input id="ebag" name="ebag" class="form-control" type="hidden" />
												<input id="sachet" name="sachet" class="form-control" type="hidden" />
												<input id="pd" name="pd" class="form-control" type="hidden" />
												<input id="ed" name="ed" class="form-control" type="hidden" />
												<input id="remarks" name="remarks" class="form-control" type="hidden" />
												<input id="requestnumber" name="requestnumber" class="form-control" type="hidden" />
										
								
										<div class="form-group">
											<div class="col-lg-2">
												<label >Request Number</label>
											</div>
											<div class="col-lg-3">	
													<input id="requestnumberdummy" name="requestnumberdummy" type='text' class="form-control" disabled  />																					
											</div>													
                					             																					
										</div>
										
										<div class="form-group">
											<div class="col-lg-3">
												<label for="tanggalpengiriman">Tanggal Pengiriman</label>
																																
													<div class='input-group date' id='datePicker1'>
                    									<input id="tanggalpengiriman" name="tanggalpengiriman" type='text' class="form-control" />
                    									<span class="input-group-addon">
                        								<span class="glyphicon glyphicon-calendar"></span>
                    									</span>
                									</div>
                							</div>               																					
										</div>
										<div class="form-group">
											<div class="col-lg-3">
												<label for="tanggalprinting">Tanggal Printing</label>
																																
													<div class='input-group date' id='datePicker2'>
                    									<input id="tanggalprinting" name="tanggalprinting" type='text' class="form-control" />
                    									<span class="input-group-addon">
                        								<span class="glyphicon glyphicon-calendar"></span>
                    									</span>
                									</div>
                							</div>               																					
										</div>
										<div class="form-group">
											<div class="col-lg-2">
												<label >Remarks</label>
											</div>
											<div class="col-lg-3">									
												<textarea  id="remarksdummy" name="remarksdummy"  class="form-control" disabled ></textarea>																							
											</div>													
                					             																					
										</div>
									
										
										
					
						 </form:form>
					</div>
</body>

</html>