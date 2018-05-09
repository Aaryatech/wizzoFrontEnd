

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



</head>
<body>

	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<c:url var="getUserByMobileNo" value="/getUserByMobileNo"></c:url>

	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>

	<!--datepicker-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#fromdatepicker").datepicker({
				dateFormat : 'dd-mm-yy'
			});
		});
		$(function() {
			$("#todatepicker").datepicker({
				dateFormat : 'dd-mm-yy'
			});
		});
	</script>
	<!--datepicker-->

	<!--topLeft-nav-->
	<div class="sidebarOuter"></div>
	<!--topLeft-nav-->

	<!--wrapper-start-->
	<div class="wrapper">

		<!--topHeader-->
		<c:url var="findAddOnRate" value="/getAddOnRate" />
		<c:url var="findItemsByCatId" value="/getFlavourBySpfId" />
		<c:url var="findAllMenus" value="/getAllTypes" />
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



				<div class="sidebarright">

					<form name="frm_search" id="frm_search" method="post"
						action="${pageContext.request.contextPath}/insertEmployee">
						<input type="hidden" name="mod_ser" id="mod_ser"
							value="search_result">
						<div class="colOuter"></div>
						<div class="colOuter"></div>
						<div class="order-left">
							<h2 class="pageTitle">New Token</h2>

						</div>

						<div class="col1title" align="right">
							<a href="${pageContext.request.contextPath}/allEmpLlist"><input
								type="button" value="Employee List" class="btn btn-info">
							</a>
						</div>
						<div class="colOuter"></div>
						<div class="colOuter"></div>

						<div class="colOuter">
							  
							<div class="col-md-2">
								<div class="col1title" align="left">Mobile No*:</div>
							</div>
							<div class="col-md-3">
								<input id="mob" class="form-control" placeholder="Mobile No"
									name="mob" style="text-align: left;"
									value="${customer.custMobNo}" pattern="^\d{10}$" type="text"
									required>

							</div>

						</div>
 
						<div class="colOuter">
							<div align="center">
								<input type="button" class="btn additem_btn" value="Serach" onclick="search();"
												id="b1"/>
							</div>

						</div>
						
						<div id="table-scroll" class="table-scroll">
						 

							<div id="faux-table" class="faux-table" aria="hidden"></div>
							<div class="table-wrap table-wrap-custbill">
								<table id="table_grid" class="main-table small-td">
									<thead>
										<tr class="bgpink">
											<th class="col-sm-1">Sr no.</th>
											<th class="col-md-1">User Name</th>
											<th class="col-md-1">Mobile No</th>
											<th class="col-md-1">Email</th>
											<th class="col-md-1">Action</th>
										</tr>
									</thead>
									<tbody>
 

									</tbody>

								</table>
							</div>
						</div>



					</form>


				</div>
				<!--tabNavigation-->
				<!--<div class="order-btn"><a href="#" class="saveOrder">SAVE ORDER</a></div>-->
				<%-- <div class="order-btn textcenter">
						<a
							href="${pageContext.request.contextPath}/showBillDetailProcess/${billNo}"
							class="buttonsaveorder">VIEW DETAILS</a>
						<!--<input name="" class="buttonsaveorder" value="EXPORT TO EXCEL" type="button">-->
					</div> --%>


			</div>
			<!--rightSidebar-->

		</div>
		<!--fullGrid-->
	</div>
	<!--rightContainer-->

	</div>
	<!--wrapper-end-->
	<!--easyTabs-->
	<!--easyTabs-->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<!--easyTabs-->


	<script>
		  
		function search()
		{
			var mob=document.getElementById("mob").value; 
			$
			.getJSON(
					'${getUserByMobileNo}',

					{
						 
						mob : mob, 
						ajax : 'true'

					},
					function(data) {
						
						  	 
								 
						$('#table_grid td').remove(); 
						  
					  

										var tr = $('<tr></tr>');
										 
										tr.append($('<td ></td>').html(1));
										tr.append($('<td ></td>').html(data.userName));
									  	tr.append($('<td ></td>').html(data.userMobile));
									  	tr.append($('<td  ></td>').html(data.userEmail)); 
								  		tr.append($('<td></td>').html('<a href="${pageContext.request.contextPath}/generateToken/'+data.userId+'" class="action_btn" ><input type="button" class="btn additem_btn" value="Generate Token" onclick="search();" id="b1"/></a> ')); 
									    $('#table_grid tbody').append(tr);

								 
					});
			
			
		}
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

</body>
</html>
