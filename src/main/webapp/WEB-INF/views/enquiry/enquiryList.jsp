<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<title>Monginis</title>


<link
	href="${pageContext.request.contextPath}/resources/css/monginis.css"
	rel="stylesheet" type="text/css" />
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/feviconicon.png"
	type="image/x-icon" />
<link href="${pageContext.request.contextPath}/resources/css/custom.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/images/feviconicon.png"
	type="image/x-icon" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>

<!--autocomplete-->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/autocomplete.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/autocomplete.css">
<script
	src="${pageContext.request.contextPath}/resources/css/easy-responsive-tabs.css"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>

<!--rightNav-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/menuzord.js"></script>

<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#menuzord").menuzord({
			align : "left"
		});
	});
</script>
<!--rightNav-->

<!--new css added by kalpesh -->
<!-- <link href='http://fonts.googleapis.com/css?family=Cuprum&subset=latin' rel='stylesheet' type='text/css'> -->

<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />

<%--   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css" />   --%>

<!-- 	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script> -->
<!--new css added by kalpesh -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.css">

<script
	src="${pageContext.request.contextPath}/resources/css/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css" />
<script
	src="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.js"></script>
<!-- 1 css and 2 js for search item   -->

<%-- <script src="${pageContext.request.contextPath}/resources/jquery.confirm/jquery.confirm.js"></script> --%>
<style>
/* Paste this css to your style sheet file or under head tag */
/* This only works with JavaScript, 
if it's not present, don't show loader */
.no-js #loader {
	display: none;
}

.js #loader {
	display: block;
	position: absolute;
	left: 100px;
	top: 0;
}

.se-pre-con {
	position: absolute;
	left: 20px;
	top: 230px;
	width: 96%;
	height: 53%;
	z-index: 9999;
	z-index: 9999;
	opacity: 1;
	background: url(resources/images/loader1.gif) center no-repeat #fff;
}

.checkdiv {
	position: absolute;
	left: 20px;
	top: 230px;
	width: 96%;
	height: 53%;
	z-index: 9999;
	z-index: 9999;
	opacity: 1;
	background: url(resources/images/check.gif) center no-repeat #fff;
}

body {
	font-family: sans-serif
}

.option {
	padding-left: 5px;
}

.dialog-ovelay {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, 0.50);
	opacity: 1;
	z-index: 1000;
}

.dialog-ovelay .dialog {
	width: 25%;
	height: 25%;
	border-radius: 25px;
	margin: 320px auto 0;
	background-color: #fff;
	box-shadow: 0 0 20px rgba(0, 0, 0, .2);
	overflow: hidden
}

.dialog-ovelay .dialog header {
	padding: 10px 8px;
	border-radius: 25px 25px 0px 0px;
	background-color: #beccd8;
	border-bottom: 1px solid #e5e5e5
}

.dialog-ovelay .dialog header h3 {
	font-size: 15px;
	margin: 0;
	color: #000;
	display: inline-block
}

.dialog-ovelay .dialog header .fa-close:active {
	box-shadow: 0 0 5px #673AB7;
	color: #a2a2a2
}

.dialog-ovelay .dialog .dialog-msg {
	padding: 15px 10px
}

.dialog-ovelay .dialog .dialog-msg p {
	margin: 0;
	font-size: 15px;
	color: #333
}

.dialog-ovelay .dialog footer {
	border-top: 1px solid #e5e5e5;
	padding: 8px 8px
}

.dialog-ovelay .dialog footer .controls {
	margin: 8px;
	direction: rtl
}

.dialog-ovelay .dialog footer .controls .button {
	padding: 5px 15px;
	border-radius: 3px
}

.button {
	cursor: pointer
}

.button-default {
	background-color: rgb(248, 248, 248);
	border: 1px solid rgba(204, 204, 204, 0.5);
	color: #5D5D5D;
}

.button-danger {
	background-color: #f44336;
	border: 1px solid #d32f2f;
	color: #f5f5f5
}

.link {
	padding: 5px 10px;
	cursor: pointer
}
</style>
<style>
.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
}

.switch input {
	display: none;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}

label:before {
	border: 0px solid #ccc;
}
</style>
</head>
<body id="myBodyId" onload="setCursor()">

	<c:url var="useRegStock" value="/useRegStock"></c:url>
	<c:url var="currentNewItem" value="/currentNewItem"></c:url>
	<c:url var="useSpStock" value="/useSpStock"></c:url>
	<c:url var="editQty" value="/editQty"></c:url>
	<c:url var="deleteOrder" value="/deleteOrder"></c:url>
	<c:url var="generateBill" value="/generateBill"></c:url>
	<c:url var="findItemById" value="/getItemById" />
	<c:url var="getItemIdByBarcode" value="/getItemIdByBarcode" />
	<c:url var="clearData" value="/clearData" />




	<div class="sidebarOuter"></div>

	<div class="wrapper">

		<!--topHeader-->
		<jsp:include page="/WEB-INF/views/include/logo.jsp"></jsp:include>



		<!--topHeader-->

		<!--rightContainer-->
		<div class="fullGrid center">
			<!--fullGrid-->
			<div class="wrapperIn2">

				<!--leftNav-->

				<jsp:include page="/WEB-INF/views/include/left.jsp">
					<jsp:param name="myMenu" value="${menuList}" />

				</jsp:include>


				<!--leftNav-->
				<!--rightSidebar-->

				<!------------ Place Actual content of page inside this div ----------->
				<div class="sidebarright">

					<div class="order-left">
						<h2 class="pageTitle">Enquiry List</h2>

					</div>
					<br>
					<%-- 	<div class="order-right" align="right">
						<a href="${pageContext.request.contextPath}/addNewToken"><button
								class="btn btn-success">New Token</button></a>
					</div> --%>

					<!--tabNavigation-->
					<div class="cd-tabs">
						<!--tabMenu-->
						<nav>
							<ul class="cd-tabs-navigation">
								<li id="li1"><a data-content="tab1" class="selected"
									href="#0" onclick="onloadTab(1)" onshow="onloadTab(2)">Contact
										Enquiry List</a></li>
								<li id="li2"><a data-content="tab2" href="#0"
									onclick="onloadTab(2)">Distributer Enquiry List</a></li>
								<!-- <li id="li3"><a data-content="tab3" href="#0" onclick="onloadTab(3)">Token
										3</a></li>
								<li id="li4"><a data-content="tab4" href="#0" onclick="onloadTab(4)">Token
										4</a></li>
								<li id="li5"><a data-content="tab5" href="#0" onclick="onloadTab(5)">Token
										5</a></li>
								<li id="li6"><a data-content="tab6" href="#0" onclick="onloadTab(6)">Token
										6</a></li>
								<li id="li7"><a data-content="tab7" href="#0" onclick="onloadTab(7)">Token
										7</a></li> -->
							</ul>
						</nav>
						<!--tabMenu-->
						<ul class="cd-tabs-content">
							<!--tab1-->
							<li data-content="tab1" class="selected" onshow="onloadTab(1)">
								<div class="row">
									<div class="col-md-9">
										<div class="control-label">

											<div>
												<div class="shInnerwidth"></div>
											</div>
										</div>
									</div>


								</div>
								<div class="se-pre-con" style="display: none;" id="loader1"></div>
								<div class="checkdiv" style="display: none;" id="check1"></div>
								<div class="clearfix"></div> <br /> <!-- Form End -->



								<div id="table-scroll" class="table-scroll">
									<div id="faux-table" class="faux-table" aria="hidden"></div>
									<div class="table-wrap table-wrap-custbill">
										<table id="table_grid1" class="main-table small-td">
											<thead>
												<tr class="bgpink">
													<th class="col-sm-1">Sr no.</th>
													<th class="col-md-1">Name</th>
													<th class="col-md-2">Mobile No</th>
													<th class="col-md-1">Email</th>
													<th class="col-md-1">Location</th>
													<th class="col-md-1">Message</th>
													<th class="col-md-1">Action</th>
												</tr>
											</thead>
											<tbody>

												<c:forEach items="${contactList}" var="contactList"
													varStatus="count">

													<tr>

														<td><c:out value="${count.index+1}" /></td>
														<td><c:out value="${contactList.name}" /></td>
														<td><c:out value="${contactList.mobileNo}" /></td>
														<td><c:out value="${contactList.emailId}" /></td>
														<td><c:out value="${contactList.location}" /></td>
														<td><c:out value="${contactList.message}" /></td>
														<td><a
															href="${pageContext.request.contextPath}/updateEnquiryList/${contactList.enqId}"
															class="action_btn"
															onclick="if (confirm('Do you really want to update ${contactList.name}?')){return true;}else{event.stopPropagation(); event.preventDefault();};">><input
																type="button" class="btn additem_btn" value="Update"
																id="b1" />
														</a></td>
													</tr>

												</c:forEach>

											</tbody>

										</table>
									</div>
								</div>



							</li>
							<!--tab1-->

							<!--tab2-->
							<li data-content="tab2" class=" ">
								<div class="row">
									<div class="col-md-9">
										<div class="control-label">

											<div>
												<div class="shInnerwidth"></div>
											</div>
										</div>
									</div>

								</div>

								<div class="se-pre-con" style="display: none;" id="loader2"></div>
								<div class="checkdiv" style="display: none;" id="check2"></div>
								<div class="clearfix"></div> <br /> <!-- Form End -->



								<div id="table-scroll" class="table-scroll">
									<div id="faux-table" class="faux-table" aria="hidden"></div>
									<div class="table-wrap table-wrap-custbill">
										<table id="table_grid2" class="main-table small-td">
											<thead>
												<tr class="bgpink">
													<th class="col-sm-1">Sr no.</th>
													<th class="col-md-1">Name</th>
													<th class="col-md-2">Mobile No</th>
													<th class="col-md-1">Email</th>
													<th class="col-md-1">Location</th>
													<th class="col-md-1">Message</th>
													<th class="col-md-1">Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${distributerList}" var="distributerList"
													varStatus="count">

													<tr>

														<td><c:out value="${count.index+1}" /></td>
														<td><c:out value="${distributerList.name}" /></td>
														<td><c:out value="${distributerList.mobileNo}" /></td>
														<td><c:out value="${distributerList.emailId}" /></td>
														<td><c:out value="${distributerList.location}" /></td>
														<td><c:out value="${distributerList.message}" /></td>
														<td><a
															href="${pageContext.request.contextPath}/updateEnquiryList/${distributerList.enqId}"
															class="action_btn"	onclick="if (confirm('Do you really want to update ${distributerList.name}?')){return true;}else{event.stopPropagation(); event.preventDefault();};"><input type="button"
																class="btn additem_btn" value="Update" id="b1" /> </a></td>
													</tr>

												</c:forEach>
											</tbody>

										</table>
									</div>
								</div>


							</li>
							<!--tab2-->

							<!--tab8-->
						</ul>

					</div>
					<!--tabNavigation-->





				</div>
				<!--rightSidebar-->

			</div>
			<!--fullGrid-->
		</div>
		<!--rightContainer-->

	</div>
	<!--wrapper-end-->

	<!--easyTabs-->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<!--easyTabs-->


	<script>
		/*
		//  jquery equivalent
		jQuery(document).ready(function() {
		jQuery(".main-table").clone(true).appendTo('#table-scroll .faux-table').addClass('clone');
		jQuery(".main-table.clone").clone(true).appendTo('#table-scroll .faux-table').addClass('clone2'); 
		});
		 */
		(function() {
			var fauxTable = document.getElementById("faux-table");
			var mainTable = document.getElementById("table_grid");
			var clonedElement = table_grid.cloneNode(true);
			var clonedElement2 = table_grid.cloneNode(true);
			clonedElement.id = "";
			clonedElement2.id = "";
			fauxTable.appendChild(clonedElement);
			fauxTable.appendChild(clonedElement2);
		})();
	</script>
	<script type="text/javascript">
		$(document).ready(
				function() {

					$('#itemName1').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode1")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal1").html(data.mrp);
										});
							});
				});

		$(document).ready(
				function() {

					$('#itemName2').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode2")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal2").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName3').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode3")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal3").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName4').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode4")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal4").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName5').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode5")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal5").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName6').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode6")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal6").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName7').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode7")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal7").html(data.mrp);
										});
							});
				});
	</script>


	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "100%";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
		function openNav1() {
			document.getElementById("mySidenav1").style.width = "100%";
		}

		function closeNav1() {
			document.getElementById("mySidenav1").style.width = "0";
		}
		function openNav3() {
			document.getElementById("mySidenav3").style.width = "100%";
		}

		function closeNav3() {
			document.getElementById("mySidenav3").style.width = "0";
		}
	</script>
	<script type="text/javascript">
		function removeOption() {
			var itemName1 = $("#itemName1").val();
			document.getElementById("itemName1").options.length = 0;

		}
	</script>
	<script type="text/javascript">
		function addNewRow1(token) {

			/* 	var isValid = validation1();
				if (isValid) { */
			var modal = document.getElementById('mypopupMsg');
			var id = $("#itemName" + token).val();
			var barcode = $("#barcode" + token).val();
			//alert(barcode);
			var qty = $("#qty" + token).val();
			//alert(qty);
			var custName = $("#custName" + token).val();
			//alert(custName);
			var phoneNo = $("#phoneNo" + token).val();
			//alert(phoneNo);
			var gstNo = $("#gstNo" + token).val();
			//alert(token);

			$('#loader').show();
			$
					.getJSON(
							'${currentNewItem}',
							{
								id : id,
								qty : qty,
								token : token,

								ajax : 'true'
							},
							function(data) {
								$('#loader').hide();
								if (data == "") {
									alert("No records found !!");
								}

								var allTotal = 0;

								//**----------Check first Special Opening Stock is gretor Show Prompt!!---------**
								if (data.totalSpStock > 0) {

									//var retVal = confirm("Use from SP or Reg Avail.Sp Qty: "+data.totalSpStock+"Avail.Reg Qty: "+data.totalRegStock);
									Confirm(
											'Use Stock',
											"Use from Special Stock OR Regular Stock",
											'Use Reg Stock ('
													+ data.totalRegStock + ')',
											'Use SpStock (' + data.totalSpStock
													+ ')'); /*change*/

									//document.getElementById("dialog-ovelay").focus();
									// document.getElementById("ok").focus();
									$(
											".dialog-ovelay .dialog footer .controls .doAction")
											.focus();
									//-------------------- Use From Special Opening Stock-----------------------------
									//if (retVal== true) {

									$('.cancelAction')
											.click(
													function() {

														$(this)
																.parents(
																		'.dialog-ovelay')
																.fadeOut(
																		500,
																		function() {

																			$(
																					this)
																					.remove();

																			if (data.totalSpStock < qty) {
																				//var spLess = confirm("  SP Stock Lessthan Qty. You want Avail.Qty: "+data.totalSpStock);
																				Confirm(
																						'Sp Stock is less than quantity',
																						"Special Stock quantity is less than required quantity if you want use available quantity",
																						'CANCEL',
																						'Use Availabe Qty ('
																								+ data.totalSpStock
																								+ ')'); /*change*/

																				$(
																						'.cancelAction')
																						.click(
																								function() {

																									$(
																											this)
																											.parents(
																													'.dialog-ovelay')
																											.fadeOut(
																													500,
																													function() {

																														$(
																																this)
																																.remove();

																														qty = data.totalSpStock;

																														$
																																.getJSON(
																																		'${useSpStock}',//function, when  User Selected availble Sp Opening Stock
																																		{
																																			qty : qty,
																																			token : token,
																																			ajax : 'true'
																																		},
																																		function(
																																				data) {

																																			if (data == "") {
																																				alert("No records found !!");
																																			} else {
																																				$(
																																						'#table_grid'
																																								+ token
																																								+ ' td')
																																						.remove();
																																			}

																																			$
																																					.each(
																																							data,
																																							function(
																																									key,
																																									spData) {
																																								allTotal = allTotal
																																										+ appendToTable(
																																												key,
																																												spData,
																																												token,
																																												allTotal);
																																							})
																																			calTotal(
																																					allTotal,
																																					token);

																																		});

																													}); //g
																								});//g
																				//}
																				$(
																						'.doAction')
																						.click(
																								function() {
																									// window.open($link, "_blank"); /*new*/
																									$(
																											this)
																											.parents(
																													'.dialog-ovelay')
																											.fadeOut(
																													500,
																													function() {

																														$(
																																this)
																																.remove();

																														return false;
																													}); //g
																								});//g

																			} else {
																				$
																						.getJSON(
																								'${useSpStock}',//function, when  User Selected Special Opening Stock
																								{
																									qty : qty,
																									token : token,
																									ajax : 'true'
																								},
																								function(
																										data) {

																									if (data == "") {
																										alert("No records found !!");
																									} else {
																										$(
																												'#table_grid'
																														+ token
																														+ ' td')
																												.remove();
																									}

																									$
																											.each(
																													data,
																													function(
																															key,
																															spData) {
																														//appensFuction
																														allTotal = allTotal
																																+ appendToTable(
																																		key,
																																		spData,
																																		token,
																																		allTotal);
																													})
																									calTotal(
																											allTotal,
																											token)

																								});
																			}

																		}); //g
													});//g
									//}  //g
									//else{   use Regular
									$('.doAction')
											.click(
													function() {
														// window.open($link, "_blank"); /*new*/
														$(this)
																.parents(
																		'.dialog-ovelay')
																.fadeOut(
																		500,
																		function() {

																			$(
																					this)
																					.remove();

																			if (data.totalRegStock < qty) {
																				if (data.totalRegStock <= 0) {
																					// alert("Sorry Item Not Available !!");
																					emptyStock(
																							'OUT OF STOCK !!',
																							"Sorry, Item is not available in Regular Stock",
																							'OK'); /*change*/
																					$(
																							'.doAction')
																							.click(
																									function() {
																										// window.open($link, "_blank"); /*new*/
																										$(
																												this)
																												.parents(
																														'.dialog-ovelay')
																												.fadeOut(
																														500,
																														function() {

																															$(
																																	this)
																																	.remove();
																															return false;
																														}); //g
																									});
																				} else {
																					//var regLess = confirm("  Reg Stock Lessthan Qty. You want Avail.Qty: "+data.totalRegStock);
																					//if(regLess==true){
																					Confirm(
																							'Regular Stock is less than quantity',
																							"Regular Stock quantity is less than required quantity if you want use available quantity",
																							'CANCEL',
																							'Use Availabe Qty ('
																									+ data.totalRegStock
																									+ ')'); /*change*/

																					$(
																							'.cancelAction')
																							.click(
																									function() {

																										$(
																												this)
																												.parents(
																														'.dialog-ovelay')
																												.fadeOut(
																														500,
																														function() {

																															$(
																																	this)
																																	.remove();

																															qty = data.totalRegStock;
																															$
																																	.getJSON(
																																			'${useRegStock}',//function, when  User Selected available Reg Opening Stock
																																			{
																																				qty : qty,
																																				token : token,
																																				ajax : 'true'
																																			},
																																			function(
																																					data) {

																																				if (data == "") {
																																					alert("No records found !!");
																																				} else {
																																					$(
																																							'#table_grid'
																																									+ token
																																									+ ' td')
																																							.remove();
																																				}

																																				$
																																						.each(
																																								data,
																																								function(
																																										key,
																																										regData) {
																																									//appensFuction
																																									allTotal = allTotal
																																											+ appendToTable(
																																													key,
																																													regData,
																																													token,
																																													allTotal);
																																								})
																																				calTotal(
																																						allTotal,
																																						token)

																																			});
																														}); //g
																									});//g
																					//}
																					//else{
																					$(
																							'.doAction')
																							.click(
																									function() {
																										// window.open($link, "_blank"); /*new*/
																										$(
																												this)
																												.parents(
																														'.dialog-ovelay')
																												.fadeOut(
																														500,
																														function() {

																															$(
																																	this)
																																	.remove();

																															return false;
																															//}
																														}); //g
																									});//g
																				}
																			} else {

																				$
																						.getJSON(
																								'${useRegStock}',//function, when  User Selected available Reg Opening Stock
																								{
																									qty : qty,
																									token : token,
																									ajax : 'true'
																								},
																								function(
																										data) {

																									if (data == "") {
																										alert("No records found !!");
																									} else {
																										$(
																												'#table_grid'
																														+ token
																														+ ' td')
																												.remove();
																									}

																									$
																											.each(
																													data,
																													function(
																															key,
																															regData) {
																														//appensFuction
																														allTotal = allTotal
																																+ appendToTable(
																																		key,
																																		regData,
																																		token,
																																		allTotal);
																													})
																									calTotal(
																											allTotal,
																											token)

																								});
																			}

																			//}
																		});
													});

								}

								else {

									if (data.totalRegStock < qty) {
										if (data.totalRegStock <= 0) {
											// alert("Sorry Item Not Available !!");

											emptyStock(
													'OUT OF STOCK !!',
													"Sorry, Item is not available in Regular Stock",
													'OK'); /*change*/

											$('.doAction')
													.click(
															function() {
																// window.open($link, "_blank"); /*new*/
																$(this)
																		.parents(
																				'.dialog-ovelay')
																		.fadeOut(
																				500,
																				function() {

																					$(
																							this)
																							.remove();
																					return false;
																				}); //g
															});
										} else {
											//var regLess = confirm("  Reg Stock Lessthan Qty. You want Avail.Qty: "+data.totalRegStock);
											//if(regLess==true){
											Confirm(
													'Regular Stock is less than quantity',
													"Regular Stock quantity is less than required quantity if you want use available quantity",
													'CANCEL',
													'Use Availabe Qty ('
															+ data.totalRegStock
															+ ')'); /*change*/

											$('.cancelAction')
													.click(
															function() {

																$(this)
																		.parents(
																				'.dialog-ovelay')
																		.fadeOut(
																				500,
																				function() {

																					$(
																							this)
																							.remove();

																					qty = data.totalRegStock;
																					$
																							.getJSON(
																									'${useRegStock}',//function, when  User Selected available Reg Opening Stock
																									{
																										qty : qty,
																										token : token,
																										ajax : 'true'
																									},
																									function(
																											data) {

																										if (data == "") {
																											alert("No records found !!");
																										} else {
																											$(
																													'#table_grid'
																															+ token
																															+ ' td')
																													.remove();
																										}

																										$
																												.each(
																														data,
																														function(
																																key,
																																regData) {
																															//appensFuction
																															allTotal = allTotal
																																	+ appendToTable(
																																			key,
																																			regData,
																																			token,
																																			allTotal);
																														})
																										calTotal(
																												allTotal,
																												token)

																									});
																				}); //g
															});//g
											//	}
											//else{
											$('.doAction')
													.click(
															function() {
																// window.open($link, "_blank"); /*new*/
																$(this)
																		.parents(
																				'.dialog-ovelay')
																		.fadeOut(
																				500,
																				function() {

																					$(
																							this)
																							.remove();
																					return false;
																					//}
																				}); //g
															});//g
										}
									} else {

										$
												.getJSON(
														'${useRegStock}',//function, when  User Selected available Reg Opening Stock
														{
															qty : qty,
															token : token,
															ajax : 'true'
														},
														function(data) {

															if (data == "") {
																alert("No records found !!");
															} else {
																$(
																		'#table_grid'
																				+ token
																				+ ' td')
																		.remove();
															}

															$
																	.each(
																			data,
																			function(
																					key,
																					regData) {
																				//appensFuction
																				allTotal = allTotal
																						+ appendToTable(
																								key,
																								regData,
																								token,
																								allTotal);
																			})
															calTotal(allTotal,
																	token)

														});
									}

								}
								//first each 
							}); //ajax
			document.getElementById("barcode" + token).value = "";

			//	document.getElementById("generateBill"+token).focus();	
		} //main function
	</script>

	<script type="text/javascript">
		function appendToTable(key, data, token, allTotal) {

			var tr = $('<tr></tr>');

			tr.append($('<td></td>').html(key + 1));

			tr.append($('<td></td>').html(data.itemId));
			tr.append($('<td></td>').html(data.itemName));
			tr
					.append($('<td></td>')
							.html(
									"<div class=col-md-1 pull-left><input type=number min=0 max=30  style= width: 50px;class=form-control onchange=editQty("
											+ key
											+ ","
											+ token
											+ ","
											+ data.mrp
											+ ") onkeyup=editQty("
											+ key
											+ ","
											+ token
											+ ")    disabled id= billQty1"
											+ token
											+ ""
											+ key
											+ " name=billQty1"
											+ token
											+ ""
											+ key
											+ " value = "
											+ data.qty
											+ " ></div>"));
			tr.append($('<td></td>').html(data.mrp));

			var total = parseFloat(data.mrp) * parseFloat(data.qty);
			//tr.append($('<td></td>').html("<label id=total"+token+""+key+" for=>"+total+" </label>" ));
			tr.append($('<td></td>').html(
					"<div id=total"+token+key+">" + total + "</div>"));

			tr
					.append($('<td></td>')
							.html(
									"<a href='#' class='action_btn' onclick='edit("
											+ token
											+ ","
											+ key
											+ ","
											+ data.id
											+ ")'><abbr title='Edit'><i id=edit"+token+""+key+" class='fa fa-edit'></i></abbr></a>   <a href='#' class='action_btn' onclick='deleteOrder("
											+ token
											+ ","
											+ key
											+ ","
											+ data.id
											+ ")'><abbr title='Delete'><i  class='fa fa-trash'></i></abbr> </a>"));

			$('#table_grid' + token + ' tbody').append(tr);

			var container = document.getElementById('table-scroll');

			var rowToScrollTo = document.getElementById("edit" + token + ""
					+ key);
			rowToScrollTo.scrollIntoView(true);

			container.scrollTop = rowToScrollTo.offsetTop;

			$('.table-scroll').scrollTop(0);

			return total;
		}
	</script>

	<script type="text/javascript">
		function calTotal(allTotal, token) {
			document.getElementById("li" + token).style.backgroundColor = "skyblue";
			$("#total" + token).html(allTotal);
			document.getElementById("tot" + token).setAttribute('value',
					allTotal);

			var discount = $("#discount" + token).val();
			var grandAmt = allTotal - (allTotal * (discount / 100));

			document.getElementById("paidAmount" + token).setAttribute('value',
					grandAmt);
			var paidAmount = $("#paidAmount" + token).val();
			var grandMinusPaidAmt = grandAmt - paidAmount;
			$('#grandtotal' + token).html(grandAmt);
			document.getElementById("grandtot" + token).setAttribute('value',
					grandAmt);

			$('#remAmt' + token).html(grandMinusPaidAmt);
			document.getElementById("remAmount" + token).setAttribute('value',
					grandMinusPaidAmt);

			document.getElementById("barcode" + token).focus();
		}

		var editFlag = 0;

		function edit(token, key, itemId) {

			if (editFlag == 0) {
				//document.getElementById("edit"+token+""+key).value = "Save";
				$("#edit" + token + "" + key).removeClass("fa fa-edit");
				$("#edit" + token + "" + key).addClass("fa fa-save");
				document.getElementById("billQty1" + token + "" + key).disabled = false;

				editFlag = 1;
			} else {
				editFlag = 0;

				document.getElementById("billQty1" + token + "" + key).disabled = true;
				//document.getElementById("edit"+token+""+key).value = "Edit";
				$("#edit" + token + "" + key).removeClass("fa fa-save");
				$("#edit" + token + "" + key).addClass("fa fa-edit");
				var qty = document
						.getElementById("billQty1" + token + "" + key).value;

				$.getJSON('${editQty}', {
					id : itemId,
					qty : qty,
					token : token,
					key : key,

					ajax : 'true'
				}, function(data) {

					calTotal(data, token);

				});
			}

		}
		var a = 0;
		function editQty(key, token, rate) {

			var qty = document.getElementById("billQty1" + token + "" + key).value;
			document.getElementById("total" + token + "" + key).innerHTML = qty
					* rate;

		}

		function disMinusTotal(token) {

			var discount = $("#discount" + token).val();

			var total = $("#tot" + token).val();

			var grandAmt = total - (total * (discount / 100));
			grandAmt = grandAmt.toFixed(2);
			$('#grandtotal' + token).html(grandAmt);
			document.getElementById("grandtot" + token).setAttribute('value',
					grandAmt);

			$('#paidAmount' + token).html(grandAmt);
			document.getElementById("paidAmount" + token).setAttribute('value',
					grandAmt);

			var paidAmount = $("#paidAmount" + token).val();

			var remainingAmount = (grandAmt - paidAmount);
			remainingAmount = remainingAmount.toFixed(2);
			$('#remAmt' + token).html(remainingAmount);
			document.getElementById("remAmount" + token).setAttribute('value',
					remainingAmount);

			//document.getElementById("paidAmount"+token).setAttribute('value',grandAmt);
			//paidAmt(token);

			//document.getElementById("remAmount"+token).setAttribute('value',00);

		}
		function paidAmt(token) {
			var paidAmount = $("#paidAmount" + token).val();

			var grandAmount = $("#grandtot" + token).val();
			//alert(paidAmount);
			//alert(grandAmount);

			var remainingAmount = (grandAmount - paidAmount);
			remainingAmount = remainingAmount.toFixed(2);
			$('#remAmt' + token).html(remainingAmount);
			document.getElementById("remAmount" + token).setAttribute('value',
					remainingAmount);

		}

		function deleteOrder(token, key, itemId) {
			var allTotal = 0;
			var qty = 0;
			$.getJSON('${deleteOrder}', {
				id : itemId,
				qty : qty,
				token : token,
				key : key,

				ajax : 'true'
			}, function(data) {

				$('#table_grid' + token + ' td').remove();

				$.each(data, function(key, regData) {
					//appensFuction
					allTotal = allTotal
							+ appendToTable(key, regData, token, allTotal);
				})
				calTotal(allTotal, token)

			});

		}
	</script>

	<script type="text/javascript">
		function generateSellBill(token) {

			//var isValid = validation(token);
			var grandtot = $("#grandtot" + token).val();
			// Animate loader off screen
			$("#loader" + token).show();

			//	alert(grandtot);
			if (validation(token) && grandtot > 0) {
				var isb2b = 0;
				if (document.getElementById('is_b2b').checked && token == 1) {
					isb2b = 1;
				}

				var custName = $("#custName" + token).val();
				var gstNo = $("#gstNo" + token).val();
				var phoneNo = $("#phoneNo" + token).val();
				var discount = $("#discount" + token).val();
				var paymentMode = $("#paymentMode" + token).val();
				var paidAmount = $("#paidAmount" + token).val();

				//	$('#loader').show();
				//   var loginWindow = window.open('', 'UserLogin');

				$
						.getJSON(
								'${generateBill}',
								{
									isb2b : isb2b,
									custName : custName,
									gstNo : gstNo,
									phoneNo : phoneNo,
									discount : discount,
									paymentMode : paymentMode,
									paidAmount : paidAmount,
									token : token,
									ajax : 'true'

								},
								function(data) {

									$("#loader" + token).hide();
									$("#check" + token).show();
									if (data == "") {
										alert("Order Not Placed !!");
										$("#check" + token).hide();
									} else {
										//setTimeout('document.getElementById("check2").style.display="none"', 1000); 
										function showIt() {
											document.getElementById("check"
													+ token).style.visibility = "hidden";
										}
										setTimeout(showIt, 500);
										document.getElementById("li" + token).style.backgroundColor = "white";

										//  loginWindow.location.href = '${pageContext.request.contextPath}/pdfSellBill?billNo='
										//		+ data.sellBillNo;
										document.getElementById("sellBillNo"
												+ token).value = data.sellBillNo;
										document.getElementById("pdfBtn"
												+ token).disabled = false;
										document
												.getElementById("clear" + token).disabled = false;

										$('#table_grid' + token + ' td')
												.remove();
										// alert(data.sellBillNo);

										document.getElementById(
												"barcode" + token)
												.setAttribute('value', 0);

										$("#rateTdVal" + token).html(0);

										$("#total" + token).html(0.0);
										document.getElementById("tot" + token)
												.setAttribute('value', 0.0);

										document.getElementById(
												"paidAmount" + token)
												.setAttribute('value', 0.0);

										$('#grandtotal' + token).html(0.0);
										document.getElementById(
												"grandtot" + token)
												.setAttribute('value', 0.0);

										$('#remAmt' + token).html(
												grandMinusPaidAmt);
										document.getElementById(
												"remAmount" + token)
												.setAttribute('value', 0.0);
										$("#discount" + token).html(0);

										document.getElementById(
												"barcode" + token).focus();

									}

								});
			}
			document.getElementById("clear" + token).focus();

		}
	</script>
	<script type="text/javascript">
		function validation(token) {
			var custName = $("#custName" + token).val();
			var phoneNo = $("#phoneNo" + token).val();
			var itemName = $("#itemName" + token).val();
			var isValid = true;
			if (custName == "" || custName == null) {
				isValid = false;
				alert("Please Enter Customer Name");
			} else if (phoneNo != "" && phoneNo.length != 10) {
				isValid = false;
				alert("Please Enter Valid Phone No");
			} else if (itemName == "" || itemName == null) {
				isValid = false;
				alert("Please Enter Select Item");
			}
			return isValid;
		}

		function pdfBtn(token) {
			//var isValid = validation(token);
			var grandtot = $("#grandtot" + token).val();

			//	alert(grandtot);
			if (validation(token) && grandtot > 0) {
				var custName = $("#custName" + token).val();
				var gstNo = $("#gstNo" + token).val();
				var phoneNo = $("#phoneNo" + token).val();
				var discount = $("#discount" + token).val();
				var paymentMode = $("#paymentMode" + token).val();
				var paidAmount = $("#paidAmount" + token).val();

				$('#loader').show();
				var loginWindow = window.open('', 'UserLogin');

				$
						.getJSON(
								'${generateBill}',
								{
									custName : custName,
									gstNo : gstNo,
									phoneNo : phoneNo,
									discount : discount,
									paymentMode : paymentMode,
									paidAmount : paidAmount,
									token : token,
									ajax : 'true'

								},
								function(data) {

									$('#loader').hide();
									if (data == "") {
										alert("Order Not Placed !!");
									} else {

										document.getElementById("li" + token).style.backgroundColor = "white";
										loginWindow.location.href = '${pageContext.request.contextPath}/pdfSellBill?billNo='
												+ data.sellBillNo;
										document.getElementById("sellBillNo"
												+ token).value = data.sellBillNo;
										document.getElementById("pdfBtn"
												+ token).disabled = false;
										document
												.getElementById("clear" + token).disabled = false;

										$('#table_grid' + token + ' td')
												.remove();
										// alert(data.sellBillNo);

										document.getElementById(
												"barcode" + token)
												.setAttribute('value', 0);

										$("#rateTdVal" + token).html(0);

										$("#total" + token).html(0.0);
										document.getElementById("tot" + token)
												.setAttribute('value', 0.0);

										document.getElementById(
												"paidAmount" + token)
												.setAttribute('value', 0.0);

										$('#grandtotal' + token).html(0.0);
										document.getElementById(
												"grandtot" + token)
												.setAttribute('value', 0.0);

										$('#remAmt' + token).html(
												grandMinusPaidAmt);
										document.getElementById(
												"remAmount" + token)
												.setAttribute('value', 0.0);
										$("#discount" + token).html(0);

										document.getElementById(
												"barcode" + token).focus();

									}
								});
			}
			document.getElementById("clear" + token).focus();
		}
		function pdfPrint(token) {

			var billNo = document.getElementById("sellBillNo" + token).value;

			window
					.open("${pageContext.request.contextPath}/pdfSellBill?billNo="
							+ billNo);
			clearData(token);
		}

		function clearData(token) {
			$.getJSON('${clearData}', {
				token : token,
				ajax : 'true'
			}, function(data) {

				//	document.getElementById("pdfBtn" + token).disabled = true;
				document.getElementById("clear" + token).disabled = true;

			});
			document.getElementById("barcode" + token).focus();
		}

		function selectItem(token) {
			//alert(token);

			var barcode = (document.getElementById("barcode" + token).value);

			$.getJSON('${getItemIdByBarcode}', {
				itemId : barcode,
				ajax : 'true'
			}, function(data) {

				$('#itemName' + token).selectpicker('val', '' + data);

				$.getJSON('${findItemById}', {
					id : data,
					ajax : 'true'
				}, function(data) {

					$("#rateTdVal" + token).html(data.mrp);
				});
			});

			document.getElementById("itemName" + token).blur();
			document.getElementById("qty" + token).focus();

		}

		function onloadTab(token) {

			document.getElementById("barcode" + token).focus();

		}

		function onQty(event, token) {
			var x = event.which || event.keyCode;
			if (x == 13) {
				document.getElementById("b" + token).focus();
			}

		}

		function onBarcode(event, token) {
			var x = event.which || event.keyCode;
			if (x == 13) {
				document.getElementById("generateBill" + token).focus();
			}

		}

		function Confirm(title, msg, $true, $false) { /*change*/

			var prevDialog = document.getElementById("confirmDialog");

			if (prevDialog == null) {

				var $content = "<divid='confirmDialog' class='dialog-ovelay'>"
						+ "<div class='dialog'><header>"
						+ " <h3> "
						+ title
						+ " </h3> "
						+

						"</header>"
						+ "<div class='dialog-msg'>"
						+ " <p> "
						+ msg
						+ " </p> "
						+ "</div>"
						+ "<footer>"
						+ "<div class='controls'>"
						+ " <button class='button btn btn-primary doAction'>"
						+ $true
						+ "</button> &nbsp;&nbsp;&nbsp;&nbsp;"
						+ " <button class='button btn btn-success cancelAction' >"
						+ $false + "</button> " + "</div>" + "</footer>"
						+ "</div>" + "</div>";
				$('body').prepend($content);

			}

		}

		function emptyStock(title, msg, $true) { /*change*/

			var prevDialog = document.getElementById("emptyDialog");

			if (prevDialog == null) {

				var $content = "<div id='emptyDialog' class='dialog-ovelay'>"
						+ "<div class='dialog'><header>" + " <h3> " + title
						+ " </h3> " +

						"</header>" + "<div class='dialog-msg'>" + " <p> "
						+ msg + " </p> " + "</div>" + "<footer>"
						+ "<div class='controls'>"
						+ " <button class='button btn btn-primary doAction'>"
						+ $true + "</button> &nbsp;&nbsp;&nbsp;&nbsp;" +

						"</div>" + "</footer>" + "</div>" + "</div>";

				$('body').prepend($content);
			}

			//document.body.appendChild(div);

		}
		$('.doAction').click(function() {
			// window.open($link, "_blank"); /*new*/
			$(this).parents('.dialog-ovelay').fadeOut(500, function() {

				$(this).remove();

			}); //g
		});//g
	</script>

	<script type="text/javascript">
		function setCursor() {
			$("#barcode1").focus();

		}
		/* 	$(window).load(function() {
				// Animate loader off screen
			//	$(".se-pre-con").fadeOut("slow");
				$("#loader1").show();
			});  */
	</script>

	<!-- document.getElementById("mySelect").value = "orange"; -->
</body>
</html>
