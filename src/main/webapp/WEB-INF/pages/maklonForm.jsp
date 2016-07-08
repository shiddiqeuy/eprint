<%--
  User: Shiddiq
  Date: 27.05.2016
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
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/css/sb-admin.css' />" rel="stylesheet"> 
    <!-- Morris Charts CSS -->
    <link href="<c:url value='/resources/css/plugins/morris.css' />" rel="stylesheet"> 
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
      <style type="text/css">
	  
	    html,
		body {
		  height: 100%;
		  /* The html and body elements cannot have any padding or margin. */
		}
		
		/* Wrapper for page content to push down footer */
		#wrap {
		  min-height: 100%;
		  height: 100%;
		  /* Negative indent footer by its height */
		  margin: 0 auto -82px 0;
		  /* Pad bottom by footer height */
		  padding: 0 0 80px 0;
		}
		
		/* Set the fixed height of the footer here */
		#footer {
		  height: 80px;
		  background-color: #f5f5f5;
		}
		
		
		#wrap > .center-container {
		  padding: 50px 0 0 0;
		  margin:0;
		}
		
		#footer > .container {
		  padding-top:5px
		  padding-left: 15px;
		  padding-right: 15px;
		}
		
		.center-container {
		  height:100%;
		  display: table;
		  width:100%;
		  margin:0;
		}
		
		.center-row {
		  height:50%;
		  width:100%;
		  display: table-row;
		}
		  
		.center-row > div {
		  height:100%;
		  width:50%;
		  display: table-cell;
		  border:1px solid #eee
		}
		
			.modal-content {
		    -webkit-border-radius: 0;
		    -webkit-background-clip: padding-box;
		    -moz-border-radius: 0;
		    -moz-background-clip: padding;
		    border-radius: 6px;
		    background-clip: padding-box;
		    -webkit-box-shadow: 0 0 40px rgba(0,0,0,.5);
		    -moz-box-shadow: 0 0 40px rgba(0,0,0,.5);
		    box-shadow: 0 0 40px rgba(0,0,0,.5);
		    color: #000;
		    background-color: #fff;
		    border: rgba(0,0,0,0);
}
			.modal-message .modal-dialog {
			    width: 300px;
			}
			.modal-message .modal-body, .modal-message .modal-footer, .modal-message .modal-header, .modal-message .modal-title {
			    background: 0 0;
			    border: none;
			    margin: 0;
			    padding: 0 20px;
			    text-align: center!important;
			}
			
			.modal-message .modal-title {
			    font-size: 17px;
			    color: #737373;
			    margin-bottom: 3px;
			}
			
			.modal-message .modal-body {
			    color: #737373;
			}
			
			.modal-message .modal-header {
			    color: #fff;
			    margin-bottom: 10px;
			    padding: 15px 0 8px;
			}
			.modal-message .modal-header .fa, 
			.modal-message .modal-header 
			.glyphicon, .modal-message 
			.modal-header .typcn, .modal-message .modal-header .wi {
			    font-size: 30px;
			}
			
			.modal-message .modal-footer {
			    margin: 25px 0 20px;
			    padding-bottom: 10px;
			}
			
			.modal-backdrop.in {
			    zoom: 1;
			    filter: alpha(opacity=75);
			    -webkit-opacity: .75;
			    -moz-opacity: .75;
			    opacity: .75;
			}
			.modal-backdrop {
			    background-color: #fff;
			}
			.modal-message.modal-success .modal-header {
			    color: #53a93f;
			    border-bottom: 3px solid #a0d468;
			}
			
			.modal-message.modal-info .modal-header {
			    color: #57b5e3;
			    border-bottom: 3px solid #57b5e3;
			}
			
			.modal-message.modal-danger .modal-header {
			    color: #d73d32;
			    border-bottom: 3px solid #e46f61;
			}
			
			.modal-message.modal-warning1.modal-warning2 .modal-header {
			    color: #f4b400;
			    border-bottom: 3px solid #ffce55;
			}
			
			.error {
    			border: solid 2px #FF0000;  
			}
			
			.progress-bar.animate {
				   width: 100%;
				}
					.cssload-thecube {
			width: 73px;
			height: 73px;
			margin: 0 auto;
			margin-top: 49px;
			position: relative;
			transform: rotateZ(45deg);
				-o-transform: rotateZ(45deg);
				-ms-transform: rotateZ(45deg);
				-webkit-transform: rotateZ(45deg);
				-moz-transform: rotateZ(45deg);
		}
				.cssload-thecube .cssload-cube {
					position: relative;
					transform: rotateZ(45deg);
						-o-transform: rotateZ(45deg);
						-ms-transform: rotateZ(45deg);
						-webkit-transform: rotateZ(45deg);
						-moz-transform: rotateZ(45deg);
				}
				.cssload-thecube .cssload-cube {
					float: left;
					width: 50%;
					height: 50%;
					position: relative;
					transform: scale(1.1);
						-o-transform: scale(1.1);
						-ms-transform: scale(1.1);
						-webkit-transform: scale(1.1);
						-moz-transform: scale(1.1);
				}
				.cssload-thecube .cssload-cube:before {
					content: "";
					position: absolute;
					top: 0;
					left: 0;
					width: 100%;
					height: 100%;
					background-color: rgb(43,160,199);
					animation: cssload-fold-thecube 2.76s infinite linear both;
						-o-animation: cssload-fold-thecube 2.76s infinite linear both;
						-ms-animation: cssload-fold-thecube 2.76s infinite linear both;
						-webkit-animation: cssload-fold-thecube 2.76s infinite linear both;
						-moz-animation: cssload-fold-thecube 2.76s infinite linear both;
					transform-origin: 100% 100%;
						-o-transform-origin: 100% 100%;
						-ms-transform-origin: 100% 100%;
						-webkit-transform-origin: 100% 100%;
						-moz-transform-origin: 100% 100%;
				}
				.cssload-thecube .cssload-c2 {
					transform: scale(1.1) rotateZ(90deg);
						-o-transform: scale(1.1) rotateZ(90deg);
						-ms-transform: scale(1.1) rotateZ(90deg);
						-webkit-transform: scale(1.1) rotateZ(90deg);
						-moz-transform: scale(1.1) rotateZ(90deg);
				}
				.cssload-thecube .cssload-c3 {
					transform: scale(1.1) rotateZ(180deg);
						-o-transform: scale(1.1) rotateZ(180deg);
						-ms-transform: scale(1.1) rotateZ(180deg);
						-webkit-transform: scale(1.1) rotateZ(180deg);
						-moz-transform: scale(1.1) rotateZ(180deg);
				}
				.cssload-thecube .cssload-c4 {
					transform: scale(1.1) rotateZ(270deg);
						-o-transform: scale(1.1) rotateZ(270deg);
						-ms-transform: scale(1.1) rotateZ(270deg);
						-webkit-transform: scale(1.1) rotateZ(270deg);
						-moz-transform: scale(1.1) rotateZ(270deg);
				}
				.cssload-thecube .cssload-c2:before {
					animation-delay: 0.35s;
						-o-animation-delay: 0.35s;
						-ms-animation-delay: 0.35s;
						-webkit-animation-delay: 0.35s;
						-moz-animation-delay: 0.35s;
				}
				.cssload-thecube .cssload-c3:before {
					animation-delay: 0.69s;
						-o-animation-delay: 0.69s;
						-ms-animation-delay: 0.69s;
						-webkit-animation-delay: 0.69s;
						-moz-animation-delay: 0.69s;
				}
				.cssload-thecube .cssload-c4:before {
					animation-delay: 1.04s;
						-o-animation-delay: 1.04s;
						-ms-animation-delay: 1.04s;
						-webkit-animation-delay: 1.04s;
						-moz-animation-delay: 1.04s;
				}
				
				
				
				@keyframes cssload-fold-thecube {
					0%, 10% {
						transform: perspective(136px) rotateX(-180deg);
						opacity: 0;
					}
					25%,
								75% {
						transform: perspective(136px) rotateX(0deg);
						opacity: 1;
					}
					90%,
								100% {
						transform: perspective(136px) rotateY(180deg);
						opacity: 0;
					}
				}
				
				@-o-keyframes cssload-fold-thecube {
					0%, 10% {
						-o-transform: perspective(136px) rotateX(-180deg);
						opacity: 0;
					}
					25%,
								75% {
						-o-transform: perspective(136px) rotateX(0deg);
						opacity: 1;
					}
					90%,
								100% {
						-o-transform: perspective(136px) rotateY(180deg);
						opacity: 0;
					}
				}
				
				@-ms-keyframes cssload-fold-thecube {
					0%, 10% {
						-ms-transform: perspective(136px) rotateX(-180deg);
						opacity: 0;
					}
					25%,
								75% {
						-ms-transform: perspective(136px) rotateX(0deg);
						opacity: 1;
					}
					90%,
								100% {
						-ms-transform: perspective(136px) rotateY(180deg);
						opacity: 0;
					}
				}
				
				@-webkit-keyframes cssload-fold-thecube {
					0%, 10% {
						-webkit-transform: perspective(136px) rotateX(-180deg);
						opacity: 0;
					}
					25%,
								75% {
						-webkit-transform: perspective(136px) rotateX(0deg);
						opacity: 1;
					}
					90%,
								100% {
						-webkit-transform: perspective(136px) rotateY(180deg);
						opacity: 0;
					}
				}
				
				@-moz-keyframes cssload-fold-thecube {
					0%, 10% {
						-moz-transform: perspective(136px) rotateX(-180deg);
						opacity: 0;
					}
					25%,
								75% {
						-moz-transform: perspective(136px) rotateX(0deg);
						opacity: 1;
					}
					90%,
								100% {
						-moz-transform: perspective(136px) rotateY(180deg);
						opacity: 0;
					}
				}
		
</style>


</head>

<script>
		$(document).ready(function() {
		    $('#datePicker')
		        .datepicker({
		            format: 'dd/mm/yyyy'
		        });
		    
		    $('#modaloader').modal('hide');
		    
		})
		
		

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
		
		
		function submitForm(){
			//alert($.isNumeric(jumlahbatch));
			//alert(document.getElementById("remarks").value);
			 $("#maklonname").removeClass('error');
			 $("#itemfg").removeClass('error');
			 $("#satuan").removeClass('error');
			 $("#kodeitemkemas").removeClass('error');
			 $("#itemkemas").removeClass('error');
			 $("#tanggalproduksi").removeClass('error');
			 $("#jumlahbatch").removeClass('error');
			 $("#batchke").removeClass('error');
			 $("#remarks").removeClass('error');
		
			maklonname=document.getElementById("maklonname").value;
			itemfg=document.getElementById("itemfg").value;
			satuan=document.getElementById("satuan").value;
			kodeitem=document.getElementById("kodeitemkemasdummy").value;
			itemkemas=document.getElementById("itemkemasdummy").value;
			tglproduksi=document.getElementById("tanggalproduksi").value;
			jumlahbatch=document.getElementById("jumlahbatch").value;
			batchke=document.getElementById("batchke").value;
			remarks=document.getElementById("remarks").value
			console.log("required value +remarks = "+kodeitem+tglproduksi+jumlahbatch+batchke+remarks);
			
			var booljum=$.isNumeric(jumlahbatch);
			var boolbatch=$.isNumeric(batchke);
			
			if (  kodeitem != ""  && tglproduksi != "" && jumlahbatch != "" && batchke != "" && remarks!="" && booljum===true && boolbatch ===true) {
				//function 
				var expiredatefinal="";
				var qty=0;
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
				$.getJSON("/eprint/getMaklonMasterDataKodeItem?maklonArg="+maklonname+
						"&itemfgArg="+itemfg+
						"&satuanArg="+satuan, function(){
						console.log("getJson");
					
						
				        }).success(function(data) { 
							changeData(data);								 
				        	})
				        .error(function() { 
							 $("#modal-warning1").modal('show');
     	
				        })
				
			}else{
				//TO DO
				$("#modal-warning2").modal('show');
				 if(maklonname==""){
					 $("#maklonname").addClass('error');
					 $("#itemfg").addClass('error');
					 $("#satuan").addClass('error');
					 $("#kodeitemkemasdummy").addClass('error');
					 $("#itemkemasdummy").addClass('error');
					 //$("#tanggalproduksi").addClass('error')
					 console.log("focus 1");
					
				 }
				if(itemfg==""){
					//$("#maklonname").removeClass('error');
					 $("#itemfg").addClass('error');
					 $("#satuan").addClass('error');
					 console.log("focus 2");
				 }
				 if(satuan==""){
					//$("#maklonname").removeClass('error');
					// $("#itemfg").removeClass('error');
					$("#satuan").addClass('error');
					 console.log("focus 3");
				 }
				 if (kodeitem==""){
					$("#kodeitemkemasdummy").addClass('error');
					$("#itemkemasdummy").addClass('error');
					
				} 
				 if(tglproduksi==""){
					$("#tanggalproduksi").addClass('error')
					
				} 
				if(jumlahbatch==""  ){
					$("#jumlahbatch").addClass('error')
					
				} 
				//alert($.isNumeric(jumlahbatch));
				if($.isNumeric(jumlahbatch)===false  ){
					
					$("#jumlahbatch").addClass('error')
					
				} 
				if(batchke=="" ){
					$("#batchke").addClass('error')
					
				} 
				if($.isNumeric(batchke)===false  ){
					$("#batchke").addClass('error')
					
				} 
				if(remarks=="" ){
					$("#remarks").addClass('error')
					
				} 
				
				
			}
		}
		
		function changeData(jsonData){
			 $.each(jsonData, function(key, val){ 
								 console.log(val.maklon);
								 console.log(val.qty+"||"+val.expires);
								 qty=val.qty;
								 var tglproduksi = document.getElementById("tanggalproduksi").value;
								 console.log("tgl produksi 1 "+tglproduksi);
								 var parts = tglproduksi.split("/");
								 var tglproduksidate = new Date(parts[2]+"/"+parts[1]+"/"+parts[0]);
								
									console.log("tgl produksi "+tglproduksidate.toDateString());
								 var expiredate=tglproduksidate;
								 console.log("expiredate 1"+expiredate.toDateString());
									expiredate.setMonth(expiredate.getMonth() + val.expires);
									//edited by sid 03/07/2016
									expiredate.setDate(-1);
									 console.log("expiredate 2"+expiredate.toDateString());
									
									var dd = expiredate.getDate();
									var ddmin =expiredate.getDate()-1;
									var mm = expiredate.getMonth()+1; //January is 0!
									var yyyy = expiredate.getFullYear();
									var yy = expiredate.getFullYear();
									yy=yy.toString();
									yy=yy.substring(2);
									var y2k =tglproduksidate.getFullYear()
									y2k = y2k.toString();
									y2k = y2k.substring(2);
									
									if(dd<10) {
									    dd='0'+dd
									} 

									if(mm<10) {
									    mm='0'+mm
									} 

									expiredatefinal = dd+'/'+mm+'/'+yyyy;
									console.log("expiredate 3"+expiredatefinal);
									console.log("expiredate 4"+expiredatefinal);
									document.getElementById("expiredate").value=expiredatefinal;
									console.log("expiredate 5"+document.getElementById("expiredate").value);
									
									 console.log("expiredate 6"+expiredatefinal);
										document.getElementById("expiredate").value=expiredatefinal;
										console.log("expiredate 7"+document.getElementById("expiredate").value);
										console.log("expiredate 8"+document.getElementById("expiredate").value)
										document.getElementById("kodeitemkemas").value=kodeitem;
										document.getElementById("itemkemas").value=itemkemas;
										var participantname = "${pageContext.request.userPrincipal.name} ";
										var status ="Running";
										document.getElementById('status').value=status;
										document.getElementById('requester').value=participantname;
										console.log(participantname);
										console.log(status);										
										document.getElementById('requestnumber').value="";										
									    document.getElementById('requestdate').value=today;
										
										var kodeprintingbox="";
										if(satuan=="Box"  ){
											document.getElementById('jumlahpouch').value=0;
											document.getElementById('jumlahdus').value=0;
											document.getElementById('showbox').value=0;
											document.getElementById('bag').value=0;
											document.getElementById('ebag').value=0;
											document.getElementById('sachet').value=0;
											document.getElementById('pd').value="";
											document.getElementById('ed').value="";
											jumbatch=qty*jumlahbatch;
											console.log("jumlah batch = "+jumbatch);
											console.log("kodeprintingbox = "+mm+dd+yyyy);
											var jb="";
											if (jumlahbatch>0 && jumlahbatch<10){
												jb="0"+jumlahbatch;
											}else{
												jb=jumlahbatch;
											}
											document.getElementById('jumlahbox').value=jumbatch;
											if (maklonname=="Makindo"){
												kodeprintingbox=dd+" "+mm+" "+yy+" - QM"+parts[1]+parts[0]+jb;
												document.getElementById('kodeprintingbox').value=kodeprintingbox;
											}
											if (maklonname=="SAM"){
												kodeprintingbox=dd+" "+mm+" "+yy+" - Q"+parts[1]+parts[0];
												document.getElementById('kodeprintingbox').value=kodeprintingbox;
											}
											
											
										}
										if(satuan=="Showbox"  ){
											document.getElementById('jumlahpouch').value=0;
											document.getElementById('jumlahdus').value=0;
											document.getElementById('jumlahbox').value=0;
											document.getElementById('bag').value=0;
											document.getElementById('ebag').value=0;
											document.getElementById('sachet').value=0;
											document.getElementById('pd').value="";
											document.getElementById('ed').value="";
											jumbatch=qty*jumlahbatch;
											console.log("jumlah batch = "+jumbatch);
											console.log("kodeprintingbox = "+mm+dd+yyyy);
											document.getElementById('showbox').value=jumbatch;
											var jb="";
											if (jumlahbatch>0 && jumlahbatch<10){
												jb="0"+jumlahbatch;
											}else{
												jb=jumlahbatch;
											}
											if (maklonname=="Makindo"){
												kodeprintingbox=dd+" "+mm+" "+yy+" - QM"+parts[1]+parts[0]+jb;
												document.getElementById('kodeprintingbox').value=kodeprintingbox;
											}
											
											
										}
										if(satuan=="Pouch"){
											document.getElementById('jumlahbox').value=0;
											document.getElementById('jumlahdus').value=0;
											document.getElementById('showbox').value=0;
											document.getElementById('bag').value=0;
											document.getElementById('ebag').value=0;
											document.getElementById('sachet').value=0;
											document.getElementById('kodeprintingbox').value="";
											jumbatch=qty*jumlahbatch;
											console.log("jumlah batch = "+jumbatch);
											document.getElementById('jumlahpouch').value=jumbatch;
											console.log("jumlah batch = "+jumbatch);
											console.log("date pouch = "+mm+dd+yyyy);
										
											var jb="";
											if (jumlahbatch>0 && jumlahbatch<10){
												jb="0"+jumlahbatch;
											}else{
												jb=jumlahbatch;
											}
											console.log("itemkemas "+itemkemas);
											console.log("maklonname "+maklonname);
											if (maklonname=="SAM" && itemkemas=="POUCH TS BERAS MERAH ORGANIK 1KG"){
												console.log("itemkemas "+itemkemas);
												console.log("maklonname "+maklonname);
												console.log("get logic 1");
												var tgl=document.getElementById("tanggalproduksi").value;
												var res = tgl.split("/");
												var pd="Q"+res[1]+res[0];
												console.log("pd ed 1"+pd+" "+ed);
												document.getElementById('pd').value=pd;
												document.getElementById('ed').value=ed;
											} else if (maklonname=="SAM" && itemkemas=="POUCH TS BERAS MERAH ORGANIK (UNIVERSAL) 1KG"){
												
												var tgl=document.getElementById("tanggalproduksi").value;
												var res = tgl.split("/");
												var pd="WQ"+res[1]+res[0];
												var ed=dd+" "+mm+" "+yy;
												console.log("pd ed 2"+pd+" "+ed);
												document.getElementById('pd').value=pd;
												document.getElementById('ed').value=ed;
											}
											
										}
										if(satuan=="Dus"){
											document.getElementById('jumlahbox').value=0;
											document.getElementById('jumlahpouch').value=0;
											document.getElementById('showbox').value=0;
											document.getElementById('bag').value=0;
											document.getElementById('ebag').value=0;
											document.getElementById('sachet').value=0;
											document.getElementById('kodeprintingbox').value="";
											jumbatch=qty*jumlahbatch;
											console.log("jumlah batch = "+jumbatch);
											document.getElementById('jumlahdus').value=jumbatch;
											if (maklonname=="Makindo"){
												console.log("itemkemas "+itemkemas);
												console.log("maklonname "+maklonname);
												console.log("get logic 1");
												var jb="";
												if (jumlahbatch>0 && jumlahbatch<10){
													jb="0"+jumlahbatch;
												}else{
													jb=jumlahbatch;
												}
												var tgl=document.getElementById("tanggalproduksi").value;
												var res = tgl.split("/");
												var pd="QM"+res[1]+res[0]+jb;
												var ed=dd+" "+mm+" "+yy;
												console.log("pd ed 1"+pd+" "+ed);
												document.getElementById('pd').value=pd;
												document.getElementById('ed').value=ed;
											}
											
										}
										if(satuan=="Bag"){
											document.getElementById('jumlahbox').value=0;
											document.getElementById('jumlahpouch').value=0;
											document.getElementById('showbox').value=0;
											document.getElementById('jumlahdus').value=0;
											document.getElementById('ebag').value=0;
											document.getElementById('sachet').value=0;
											document.getElementById('kodeprintingbox').value="";
											jumbatch=qty*jumlahbatch;
											console.log("jumlah batch = "+jumbatch);
											document.getElementById('bag').value=jumbatch;
											if (maklonname=="Makindo"){
												console.log("itemkemas "+itemkemas);
												console.log("maklonname "+maklonname);
												console.log("get logic 1");
												var jb="";
												if (jumlahbatch>0 && jumlahbatch<10){
													jb="0"+jumlahbatch;
												}else{
													jb=jumlahbatch;
												}
												
												var tgl=document.getElementById("tanggalproduksi").value;
												var res = tgl.split("/");
												var pd="QM"+res[1]+res[0]+jb;
												var ed=dd+" "+mm+" "+yy;
												console.log("pd ed 1"+pd+" "+ed);
												document.getElementById('pd').value=pd;
												document.getElementById('ed').value=ed;
											}
											
										}
										if(satuan=="E-bag"){
											document.getElementById('jumlahbox').value=0;
											document.getElementById('jumlahpouch').value=0;
											document.getElementById('showbox').value=0;
											document.getElementById('jumlahdus').value=0;
											document.getElementById('bag').value=0;
											document.getElementById('sachet').value=0;
											document.getElementById('kodeprintingbox').value="";
											jumbatch=qty*jumlahbatch;
											console.log("jumlah batch = "+jumbatch);
											document.getElementById('ebag').value=jumbatch;
											if (maklonname=="Makindo (eksport)"){
												console.log("itemkemas "+itemkemas);
												console.log("maklonname "+maklonname);
												console.log("get logic 1");
												var jb="";
												if (jumlahbatch>0 && jumlahbatch<10){
													jb="0"+jumlahbatch;
												}else{
													jb=jumlahbatch;
												}
												var pd=parts[0]+" "+parts[1]+" "+y2k+" - QM"+parts[0]+parts[1]+jb;
												var ed=dd+" "+mm+" "+yy;
												console.log("pd ed 1"+pd+" "+ed);
												document.getElementById('pd').value=pd;
												document.getElementById('ed').value=ed;
											}
											
										}
										if(satuan=="Sachet"){
											document.getElementById('jumlahbox').value=0;
											document.getElementById('jumlahpouch').value=0;
											document.getElementById('showbox').value=0;
											document.getElementById('jumlahdus').value=0;
											document.getElementById('ebag').value=0;
											document.getElementById('bag').value=0;
											document.getElementById('kodeprintingbox').value="";
											jumbatch=qty*jumlahbatch;
											console.log("jumlah batch = "+jumbatch);
											document.getElementById('sachet').value=jumbatch;
											if (maklonname=="Makindo"){
												console.log("itemkemas "+itemkemas);
												console.log("maklonname "+maklonname);
												console.log("get logic 1");
												var jb="";
												if (jumlahbatch>0 && jumlahbatch<10){
													jb="0"+jumlahbatch;
												}else{
													jb=jumlahbatch;
												}
												var tgl=document.getElementById("tanggalproduksi").value;
												var res = tgl.split("/");
												var pd="QM"+res[1]+res[0]+jb;
												var ed=dd+" "+mm+" "+yy;
												console.log("pd ed 1"+pd+" "+ed);
												document.getElementById('pd').value=pd;
												document.getElementById('ed').value=ed;
											}
											
										}
										
									
								 }) 
								 
								
								$('#modaloader').modal('show');
							
								document.getElementById('maklonRegisterForm').submit();
								
								 
								
		
		}
		
		function formSubmit() {
		      document.getElementById("logoutForm").submit();
		    }
		
		
		
		
    
  </script>

<div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Dashboard">Online Maklon Printing Project</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
              
               
                <li class="dropdown">
                 <c:url value="/j_spring_security_logout" var="logoutUrl" />
                 <form action="${logoutUrl}" method="post" id="logoutForm">
                 	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                 </form>
                  <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>  ${pageContext.request.userPrincipal.name} <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                      
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:formSubmit()"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            </c:if>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                	<li>
                        <a href="/eprint/Dashboard"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li class="active">
                        <a href="/eprint/createMaklon"><i class="fa fa-fw fa-edit"></i> Form</a>
                    </li>
                    <li>
                        <a href=""><i class="fa fa-fw fa-bar-chart-o"></i> Maklon Table Data</a>
                    </li>
                    <li>
                        <a href=""><i class="fa fa-fw fa-table"></i> Vendor / Company Data </a>
                    </li>
                  
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                       
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Form Online Maklon Printing
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="alert alert-info alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-info-circle"></i>e-print  is an innovation for paperless maklon printing and monitoring solution.
                        </div>
                    </div>
                </div>
              

              
                <!-- /.row -->

                <div class="row">
                	<div class="col-lg-1">
             		</div>
                       <div class="col-lg-8 panel panel-default">
	
									<form:form id="maklonRegisterForm" cssClass="form-horizontal" modelAttribute="maklon" method="post" action="saveMaklon">
									<form:hidden path="id" value="${maklonObject.id}"/>
										<div class="form-group">
											<div class="col-lg-2">
												<label  >&nbsp;</label>
											</div>
											<div class="col-lg-4">
												&nbsp;
											</div>                        
										</div>
										<div class="form-group">
											<div class="col-lg-2">
												<label for="maklon" >Maklon</label>
											</div>
											<div class="col-lg-4">
												<select id="maklonname" name="maklonname" class="form-control"  onchange="getItemfg()" >
												 <option value=""> Please Choose </option>												  
												</select>  
											</div>                        
										</div>
										
										<div class="form-group">
											<div class="col-lg-2">
												<label for="itemfg">Item FG</label>
											</div>
											<div class="col-lg-8">
												<select id="itemfg" name="itemfg" class="form-control" >
												 <option value=""> Please Choose </option>												  
												</select> 
											</div>											
										</div>
										
										<div class="form-group">
											<div class="col-lg-2">
												<label for="satuan">Satuan</label>
											</div>
											<div class="col-lg-4">											
												<select id="satuan" name="satuan" class="form-control" >
												  <option value=""> Please Choose </option>												
												</select>
											</div>                      											
										</div>
										
										<div class="form-group">
											<div class="col-lg-2">
												<label></label>
											</div>
											<div class="col-lg-4">											
												<input type="button" value="Generate Kode Item" onclick="getKodeItem(document.getElementById('maklonname').value,document.getElementById('itemfg').value,document.getElementById('satuan').value)" class="btn btn-default">
											</div>                      											
										</div>	
																											
										<div class="form-group">
											<div class="col-lg-2">
												<label for="kodeitem">Kode Item</label>
											</div>
											<div class="col-lg-4">
												<input id="kodeitemkemasdummy" name="kodeitemkemasdummy" class="form-control" type="text" disabled />
											</div>
										</div>
										  
										<div class="form-group">
											<div class="col-lg-2">
												<label for="itemkemas">Item Kemas</label>
											</div>
											<div class="col-lg-8">
												<input id="itemkemasdummy" name="itemkemasdummy" class="form-control" type="text" disabled />
											</div>
										</div>

										<div class="form-group">
											<div class="col-lg-2">
												<label for="tanggalproduksi">Tanggal Produksi</label>
											</div>
											<div class="col-lg-4">																						
													<div class='input-group date' id='datePicker'>
                    									<input id="tanggalproduksi" name="tanggalproduksi" type='text' class="form-control" />
                    									<span class="input-group-addon">
                        								<span class="glyphicon glyphicon-calendar"></span>
                    									</span>
                									</div>
                							</div>               																					
										</div>
																				
										<div class="form-group">
											<div class="col-lg-2">
												<label for="jumlahbatch">Jumlah Batch</label>
											</div>
											<div class="col-lg-4">											
												<input id="jumlahbatch" name="jumlahbatch" class="form-control" type="text" />
											</div>											
										</div>

										<div class="form-group">
											<div class="col-lg-2">
												<label for="batchke">Batch Ke</label>
											</div>
											<div class="col-lg-4">											
												<input id="batchke" name="batchke" class="form-control" type="text" />
											</div>																							
										</div>
										
										<div class="form-group">
											<div class="col-lg-2">
												<label for="remarks">Remarks</label>
											</div>
											<div class="col-lg-6">	
											<textarea  id="remarks" name="remarks" class="form-control" rows="5" form="maklonRegisterForm"></textarea>										
												
											</div>																							
										</div>
										<div class="form-group">
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
												<input id="requestnumber" name="requestnumber" class="form-control" type="hidden" />
												
											
										</div>
										<div class="form-group">
											<div class="col-lg-2">
												<label  >&nbsp;</label>
											</div>
											<div class="col-lg-4">
												<input type="button" value="Submit" onclick="submitForm();" class="btn btn-default" id="load"> 
                            					<button type="reset" class="btn btn-default">Reset </button>
											</div>                        
										</div>
	 
						 </form:form>
						</div> 
									
										
									
						<div class="col-lg-3">
							&nbsp			
						</div>
                    
                </div>
                <!-- /.row -->
            

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<div id="modaloader" class="modal modal-message modal-warning fade">
 <div class="modal-dialog">
   <div class="modal-content">
     <div class="modal-body">
        <center>
       		<div class="cssload-thecube">
				<div class="cssload-cube cssload-c1"></div>
				<div class="cssload-cube cssload-c2"></div>
				<div class="cssload-cube cssload-c4"></div>
				<div class="cssload-cube cssload-c3"></div>
			</div>
       </center>
       </div>
     </div>
   </div>
 </div>
</div>


   <!--Danger Modal Templates-->
    <div id="modal-warning1" class="modal modal-message modal-warning fade" style="display: none;" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <i class="fa fa-warning"></i>
                </div>
                <div class="modal-title">Warning</div>

                <div class="modal-body">Kode item not found</div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">OK</button>
                </div>
            </div> <!-- / .modal-content -->
        </div> <!-- / .modal-dialog -->
    </div>
    <!--End Danger Modal Templates-->
    <!--Danger Modal Templates-->
    <div id="modal-warning2" class="modal modal-message modal-warning fade" style="display: none;" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <i class="fa fa-warning"></i>
                </div>
                <div class="modal-title">Warning</div>

                <div class="modal-body">Please fill the required field ! </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">OK</button>
                </div>
            </div> <!-- / .modal-content -->
        </div> <!-- / .modal-dialog -->
    </div>
    <!--End Danger Modal Templates-->
<script>
//get a reference to the select element
var $select1 = $('#maklonname');
//var $select2 = $('#satuan');

//request the JSON data and parse into the select element
$.getJSON("/eprint/getMaklonCompany", function(data){

  //clear the current content of the select
  //$select.html('');

  //iterate over the data and append a select option
  $.each(data, function(key, val){ 
    $select1.append('<option id="' + val.name + '">' + val.name + '</option>');
  })
});

var $select2 = $('#satuan');
//var $select2 = $('#satuan');

//request the JSON data and parse into the select element
$.getJSON("/eprint/getSatuan", function(data){

  //clear the current content of the select
  //$select.html('');

  //iterate over the data and append a select option
  $.each(data, function(key, val){ 
    $select2.append('<option id="' + val.name + '">' + val.name + '</option>');
  })
});



function getItemfg(){
	var maklonname = document.getElementById("maklonname").value;
	var $selectfg = $('#itemfg');
	var $selectsat = $('#satuan');
	var usedname = [];
	console.log(maklonname);
	//$selectfg.html('');
	

	$.getJSON("/eprint/getMaklonMasterData", function(data){
		console.log("getJson itemfg");
		$selectfg.html('');
		//$selectsat.html('');
	
		 $.each(data, function(key, val){ 
			 console.log(val.maklon);
			 if(maklonname==val.maklon){					 
				 if (usedname.indexOf(val.itemfg) == -1) {
						 $selectfg.append('<option id="' + val.itemfg + '">' + val.itemfg + '</option>');
				         usedname.push(val.itemfg);
				         console.log(val.itemfg);
				    }					
			 }
	        })
	        
	        

      });
	
}


function getKodeItem(maklon,itemfg,satuan){
	$("#maklonname").removeClass('error');
	 $("#itemfg").removeClass('error');
	 $("#satuan").removeClass('error');
	 document.getElementById('kodeitemkemas').value="";
	 document.getElementById('itemkemas').value="";
	console.log("test fungsi baru = "+maklon+itemfg+satuan);
	
	//String maklon=document.getElementById('maklonname').value;
	//String itemfg=document.getElementById('itemfg').value;
	//String satuan=document.getElementById('satuan').value;
	  
if(maklon!="" && itemfg!="" && satuan !="" ){
	
	$.getJSON("/eprint/getMaklonMasterDataKodeItem?maklonArg="+maklon+
			"&itemfgArg="+itemfg+
			"&satuanArg="+satuan, function(){
			console.log("getJson");
		
			
	        }).success(function(data) { 
				 $.each(data, function(key, val){ 
					 console.log(val.maklon);
					 console.log(val.kodeitemkemas+"true"+val.itemkemas);
					 document.getElementById('kodeitemkemasdummy').value=val.kodeitemkemas;
					 document.getElementById('itemkemasdummy').value=val.itemkemas;
			
					 }) })
	        .error(function() { 
	        	 document.getElementById('kodeitemkemasdummy').value="";
				 document.getElementById('itemkemasdummy').value="";
				 
				 $("#modal-warning1").modal('show');
	        	//alert("kode item not found"); 
	        	
	        })
	        
	     
	      

}else{
	
	 if(maklon==""){
		 $("#maklonname").addClass('error');
		 $("#itemfg").addClass('error');
		 $("#satuan").addClass('error');
		 console.log("focus 1");
		
	 }
	else if(itemfg==""){
		$("#maklonname").removeClass('error');
		 $("#itemfg").addClass('error');
		 $("#satuan").addClass('error');
		 console.log("focus 2");
	 }
	else if(satuan==""){
		$("#maklonname").removeClass('error');
		 $("#itemfg").removeClass('error');
		$("#satuan").addClass('error');
		 console.log("focus 3");
	 }
   
	
	 $("#modal-warning2").modal('show');
	 
	
}
	
} 
</script>
</body>

</html>