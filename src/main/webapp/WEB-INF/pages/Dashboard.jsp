<%--
  User: Shiddiq
  Date: 30.06.2016
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
     <!-- Bootstrap CSS -->
    <link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet">
    
    <link href="<c:url value='/resources/css/jquery-ui.css' />" rel="stylesheet"> 
    <link href="<c:url value='/resources/css/jqGrid-4.5.4/ui.jqgrid.css' />" rel="stylesheet">
    <script src="<c:url value='/resources/js/jquery-ui.js' />" > </script>
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
    <script src="http://www.trirand.com/blog/jqgrid/js/jquery.jqGrid.js" > </script>
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
				  
				    
				    $('#modaloader').modal('hide');
				    
				})
				
				function changeSelectOptionData(jsonData) {
					console.log("parse json data "+jsonData);
					$.each(jsonData, function(key, kv){ 
						 console.log(kv.maklonname);
						 console.log(kv.kodeitemkemas+"true"+kv.itemkemas);
						 	jQuery("#requestnumber").html(kv.requestnumber);
							jQuery("#kodeitemkemas").html(kv.kodeitemkemas);
							jQuery("#itemkemas").html(kv.itemkemas);
							jQuery("#itemfg").html(kv.itemfg);
							jQuery("#satuan").html(kv.satuan);
							jQuery("#tanggalproduksi").html(kv.tanggalproduksi);
							jQuery("#jumlahbatch").html(kv.jumlahbatch);
							jQuery("#batchke").html(kv.batchke);
							jQuery("#maklonname").html(kv.maklonname);
							jQuery("#requestdate").html(kv.requestdate);
							jQuery("#requester").html(kv.requester);
							jQuery("#status").html(kv.status);
							jQuery("#jumlahpouch").html(kv.jumlahpouch);
							jQuery("#jumlahdus").html(kv.jumlahdus);
							jQuery("#jumlahbox").html(kv.jumlahbox);
							jQuery("#pd").html(kv.pd);
							jQuery("#ed").html(kv.ed);
							jQuery("#kodeprintingbox").html(kv.kodeprintingbox);
							jQuery("#expiredate").html(kv.expiredate);
							jQuery("#showbox").html(kv.showbox);
							jQuery("#bag").html(kv.bag);
							jQuery("#ebag").html(kv.ebag);
							jQuery("#sachet").html(kv.sachet);
							jQuery("#tanggalpengiriman").html(kv.tanggalpengiriman);
							jQuery("#tanggalprinting").html(kv.tanggalprinting);
							jQuery("#remarks").html(kv.remarks);
				
						 })
					
				
				}
				
				function clearSelectOptionData() {
					
						
							jQuery("#requestnumber").html("");
							jQuery("#kodeitemkemas").html("");
							jQuery("#itemkemas").html("");
							jQuery("#itemfg").html("");
							jQuery("#satuan").html("");
							jQuery("#tanggalproduksi").html("");
							jQuery("#jumlahbatch").html("");
							jQuery("#batchke").html("");
							jQuery("#maklonname").html("");
							jQuery("#requestdate").html("");
							jQuery("#requester").html("");
							jQuery("#status").html("");
							jQuery("#jumlahpouch").html("");
							jQuery("#jumlahdus").html("");
							jQuery("#jumlahbox").html("");
							jQuery("#pd").html("");
							jQuery("#ed").html("");
							jQuery("#kodeprintingbox").html("");
							jQuery("#expiredate").html("");
							jQuery("#showbox").html("");
							jQuery("#bag").html("");
							jQuery("#ebag").html("");
							jQuery("#sachet").html("");
							jQuery("#tanggalpengiriman").html("");
							jQuery("#tanggalprinting").html("");
							jQuery("#remarks").html("");
							
				
				
				}
				
				
				function changeFrame(url) {
					//alert(url);
				  $('#editFrame').attr('src','makloneditForm?id='+url);
				  $('#myModal2').on('shown.bs.modal', function () {
					    $(this).find('.modal-dialog').css({width:'350px',
					                               height:'700px'});
					});
				  $('#myModal2').modal('show');
				}
				
				function viewFrame(url) {
					//alert(url);
				 // TO DO
				 console.log("view frame id "+url);
				 var alamat="/eprint/getMaklonbyId?idArg="+url;
				 console.log("view frame id alamat "+alamat);
				 var jqxhr = jQuery.ajax(alamat)
					.done(function(data) { changeSelectOptionData(data); })
					.fail(function() { clearSelectOptionData(); });
				}
				
				function submitModal2() {
					$('#modaloader').modal('show');

					console.log("edit tanggal pengiriman");	
	
					setTimeout(function(){
						document.getElementById("editFrame").contentWindow.updateData();
						
						 	//$('#myModal2').modal('hide');
							location.reload();
						}, 3200)

				   
				}
				
				function deleteMaklon(id) {
				     var x;
				    
				     if (confirm("Are you sure?") == true) {
				         x = "You pressed OK!";	
				         $('#modaloader').modal('show');
				         setTimeout(function(){
				        	 window.location = "deleteMaklon?id=" +id;	
				        	 $('#modaloader').modal('hide'); 
								}, 3200)
								
				        
				     } else {
				         x = "You pressed Cancel!";
				        
				         //Nothing Happend
				     }
				     return x; 
				}


		$(document).ready(function() {
		    $('#datePicker')
		        .datepicker({
		            format: 'mm/dd/yyyy'
		        })
		        //.on('changeDate', function(e) {
		            // Revalidate the date field
		         //   $('#maklonRegisterForm').formValidation('revalidateField', 'tanggalproduksi');
		       // });
		    	var countrownum=0;
		    	 $("#MaklonGrid").jqGrid({
			            url:'getMaklon',
			            mtype : "GET",
			            datatype: "json",
			            height: '250px',
			              colNames:['Request Number','Request Date','Requester','Status','Remarks','Tanggal Printing','Tanggal Pengiriman','Action'],
			              colModel:[
							{name:'requestnumber',index:'requestnumber', width:260},
			    			//{name:'maklonname',index:'maklonname', width:120},
			                {name:'requestdate',index:'requestdate', width:90},
			                {name:'requester',index:'requester', width:60},
			                {name:'status',index:'status', width:60},
			               // {name:'itemfg',index:'itemfg', width:300},
			                //{name:'kodeitemkemas',index:'kodeitemkemas', width:120},
			                //{name:'itemkemas',index:'itemkemas', width:300},
			                //{name:'satuan',index:'satuan', width:60},
			                //{name:'tanggalproduksi',index:'tanggalproduksi', width:90},
			                //{name:'jumlahbatch',index:'jumlahbatch', width:80},
			                //{name:'batchke',index:'batchke', width:60},
			                //{name:'jumlahpouch',index:'jumlahpouch', width:80},
			                //{name:'jumlahbox',index:'jumlahbox', width:80  },
			                //{name:'showbox',index:'showbox', width:90  },
			                //{name:'jumlahdus',index:'jumlah dus', width:80},
			                //{name:'bag',index:'bag', width:80  },
			                //{name:'ebag',index:'ebag', width:80  },
			                //{name:'sachet',index:'sachet', width:80  },
			                //{name:'pd',index:'pd', width:80},
			                //{name:'ed',index:'ed', width:80},
			                //{name:'kodeprintingbox',index:'kodeprintingbox', width:220},
			                //{name:'expiredate',index:'expiredate', width:120},
			                {name:'remarks',index:'remarks', width:220},
			                {name:'tanggalprinting',index:'tanggalprinting', width:120},
			                {name:'tanggalpengiriman',index:'tanggalpengiriman', width:120},			                
			                {name:'id',index:'id', width:120,formatter: getaction}
			                  
			              ],
			              //shrinkToFit : false,
			              
			              pager: '#pager',
			              gridview: true,
			              rowNum: -1,
			                scroll: 1,// set the scroll property to 1 to enable paging with scrollbar - virtual loading of records
			       	      rownumbers: true, //row numbers on			              
			              search:true,
			              emptyrecords: 'Scroll to bottom to retrieve new page',
			              //scroll: true,
			              
			              caption: "Maklon Request List"
			          });
			        
			        function getaction (cellval,options,rowdata) {
			            
			            
			        	formatted_cellval = "<center><img style='width:16px;height:16px;' alt='view' src = '<c:url value='/resources/images/ledfind.png'/>' onClick='viewFrame("+cellval+")'  >"+
			        	"&nbsp;<img alt='edit' src = '<c:url value='/resources/images/cog_edit.png'/>' onClick='changeFrame("+cellval+")'  >"+
			        	"&nbsp;<img src = '<c:url value='/resources/images/remove_list.png' />' onClick='deleteMaklon("+cellval+")' ></center>";
			            

			              return formatted_cellval;

			          }
		     
		       
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
		
					today = mm+'/'+dd+'/'+yyyy;
					
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
                	<li class="active">
                        <a href="/eprint/Dashboard"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li >
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
                                <i class="fa fa-dashboard"></i> Online Maklon Printing
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
                	
                       <div class="col-lg-12" style="overflow-y: scroll;">
                       
                        <table id="MaklonGrid"></table>
                        <div id="pager"></div>
                        <a class="btn btn-default" href="/eprint/generateexcel">Export Excel</a>
             				
						</div> 

                </div>
                <br>
                 <div class="row" style="height:300px;overflow-y: scroll;">
                    
                   
                   <div class="panel panel-default">
                   <div class="panel-heading">View Detail</div>
                    <div class="panel-body">
                  
            			<table>
							  <tr>
							    <td><b>Request Number</b></td>
							    <td>:</td>
							    <td>
							      <div id="requestnumber">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Status</b></td>
							    <td>:</td>
							    <td>
							      <div id="status">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Maklon</b></td>
							    <td>:</td>
							    <td>
							      <div id="maklonname">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Requester</b></td>
							    <td>:</td>
							    <td>
							      <div id="requester">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Item FG</b></td>
							    <td>:</td>
							    <td>
							      <div id="itemfg">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Request Date</b></td>
							    <td>:</td>
							    <td>
							      <div id="requestdate">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Satuan</b></td>
							    <td>:</td>
							    <td>
							      <div id="satuan">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							   <tr>
							    <td><b>Tanggal Produksi</b></td>
							    <td>:</td>
							    <td>
							      <div id="tanggalproduksi">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Expire Date</b></td>
							    <td>:</td>
							    <td>
							      <div id="expiredate">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Kode Item</b></td>
							    <td>:</td>
							    <td>
							      <div id="kodeitemkemas">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Item Kemas</b></td>
							    <td>:</td>
							    <td>
							      <div id="itemkemas">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>ebag</b></td>
							    <td>:</td>
							    <td>
							      <div id="ebag">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>bag</b></td>
							    <td>:</td>
							    <td>
							      <div id="bag">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>jumlahbox</b></td>
							    <td>:</td>
							    <td>
							      <div id="jumlahbox">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>kodeprintingbox</b></td>
							    <td>:</td>
							    <td>
							      <div id="kodeprintingbox">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>jumlahdus</b></td>
							    <td>:</td>
							    <td>
							      <div id="jumlahdus">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>sachet</b></td>
							    <td>:</td>
							    <td>
							      <div id="sachet">&nbsp;&nbsp;</div>
							    </td>
							  </tr>							
							  <tr>
							    <td><b>jumlahpouch</b></td>
							    <td>:</td>
							    <td>
							      <div id="jumlahpouch">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>showbox</b></td>
							    <td>:</td>
							    <td>
							    <div id="showbox">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Jumlah Batch</b></td>
							    <td>:</td>
							    <td>
							      <div id="jumlahbatch">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Batch Ke</b></td>
							    <td>:</td>
							    <td>
							      <div id="batchke">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>pd</b></td>
							    <td>:</td>
							    <td>
							      <div id="pd">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>ed</b></td>
							    <td>:</td>
							    <td>
							      <div id="ed">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Tanggal Pengiriman </b></td>
							    <td>:</td>
							    <td>
							      <div id="tanggalpengiriman">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Tanggal Printing</b></td>
							    <td>:</td>
							    <td>
							      <div id="tanggalprinting">&nbsp;&nbsp;</div>
							    </td>
							  </tr>
							  <tr>
							    <td><b>Remarks</b></td>
							    <td>:</td>
							    <td>
							      <div id="remarks">&nbsp;&nbsp; </div>
							    </td>
							  </tr>
							</table>
                    </div>
                    </div>
                    </div>
                    
          
                <!-- /.row -->
                 

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


   <!-- Modal 2-->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Maklon Validation Form </h4>
        </div>
        <div class="modal-body">
          <center>

        <iframe id="editFrame" height="470" width="330" style="border:none"></iframe>
   	
      </center>
       <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" onclick="submitModal2();" class="btn btn-primary">Submit</button>
      </div>

        </div>
      </div>
    </div>
  </div>
  
  
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
       </br>
       </div>
     </div>
   </div>
 </div>


</body>

</html>