<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



</head>
<body>

	<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
	<c:url var="editFrSupplier" value="/editFrSupplier"></c:url>

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
						action="${pageContext.request.contextPath}/insertVehicle">
						<input type="hidden" name="mod_ser" id="mod_ser"
							value="search_result">

						<div class="order-left">
							<h2 class="pageTitle">Order List</h2>

						</div>

						<%-- <div class="col1title" align="right"> 
						<a href="${pageContext.request.contextPath}/addEmployee"><input type="button" value="Add New Employee" class="btn btn-info">
										</a>
					</div> --%>
						<div class="colOuter"></div>
						<div class="colOuter"></div>


						<div id="table-scroll" class="table-scroll">
							<div id="faux-table" class="faux-table" aria="hidden"></div>
							<div class="table-wrap table-wrap-custbill">
								<table id="table_grid1" class="main-table small-td">
									<thead>
										<tr class="bgpink">
											<th class="col-sm-1">Sr no.</th>
											<th class="col-md-1">Name</th>
											<th class="col-md-1">Email Id</th>
											<th class="col-md-1">Address</th>
											<th class="col-md-1">City</th>
											<th class="col-md-1">State</th>
											<th class="col-md-1">Pincode</th>

											<th class="col-md-1">Order Quantity</th>

											<th class="col-md-1">Action</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${buyNowOrderList}" var="buyNowOrderList"
											varStatus="count">
											<tr>
												 <td class="col-md-1"><c:out value="${count.index+1}" /></td>

												<td class="col-md-1"><c:out
														value="${buyNowOrderList.name}" /></td>
												<td class="col-md-1"><c:out
														value="${buyNowOrderList.emailId}" /></td>
												<td class="col-md-1"><c:out
														value="${buyNowOrderList.address}" /></td>

												<td class="col-md-1"><c:out
														value="${buyNowOrderList.city}" /></td>

												<td class="col-md-1"><c:out
														value="${buyNowOrderList.state}" /></td>

												<td class="col-md-1"><c:out
														value="${buyNowOrderList.pincode}" /></td>

												<td class="col-md-1"><c:out
														value="${buyNowOrderList.orderQty}" /></td>
 

												<td><a
													href="${pageContext.request.contextPath}/updateOrderStatusList/${buyNowOrderList.orderId}"
													onclick="if (confirm('Do you really want to update ${buyNowOrderList.name}?')){return true;}else{event.stopPropagation(); event.preventDefault();};">
														<input type="button" class="btn btn-info" value="Update"
														id="submit">
												</a></td>  
											</tr>
										</c:forEach>

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



</body>
</html>
