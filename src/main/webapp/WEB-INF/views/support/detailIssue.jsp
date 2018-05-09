

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

 

</head>
<body>
 --%>

<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<c:url var="editFrSupplier" value="/editFrSupplier"></c:url>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>

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
					action="${pageContext.request.contextPath}/submitGenerateToken">
					<input type="hidden" name="mod_ser" id="mod_ser"
						value="search_result">

					
						<div class="col-md -3">
							
								<div class="col1title" align="left"><h3>Detail</h3></div>
								 
						</div>
						
					<div class="colOuter">
						<div class="col-md-2">
							<div class="col1title" align="left">Customer Name: </div>
						</div>
						<div class="col-md-3">
							<input id="custName" class="form-control"
								placeholder="Customer Name" value="${getUserByUserId.userName}" style="text-align: left;" name="custName" type="text" disabled>
								<input id="userId"   value="${getUserByUserId.userId}"  name="userId" type="hidden"  >
								<input id="tokenId"   value="${getSupportById.tokenId}"  name="tokenId" type="hidden"  > 

						</div>
						<div class="col-md-1">
							 
						</div>

						<div class="col-md-2">
							<div class="col1title" align="left">Mobile No*: </div>
						</div>
						<div class="col-md-3">
							<input id="custAdd" class="form-control" style="text-align: left;"
								placeholder="Customer Address" value="${getUserByUserId.userMobile}" name="custAdd" type="text" disabled>

						</div>
					 
					</div>
					
					<div class="colOuter">
						 
					 
						<div class="col-md-2">
							<div class="col1title" align="left">Email: </div>
						</div>
						<div class="col-md-3">
							<input id="mob" class="form-control"
								placeholder="Mobile No" name="mob" style="text-align: left;" value="${getUserByUserId.userEmail}" pattern="^\d{10}$" type="text" disabled>

						</div>
				 
					</div>
					
					<div class="colOuter"></div>
					<div class="colOuter"></div>
					
					<div class="colOuter">
						<div class="col-md-2">
							<div class="col1title" align="left">Issue: </div>
						</div>
						<div class="col-md-3">
						<textarea class="form-control"   style="text-align: left;" name="issue" id="issue" placeholder="Issue" readonly="readonly">${getSupportById.issueDesc}</textarea>
							 

						</div>
						<div class="col-md-1"> </div>

						<div class="col-md-2">
							<div class="col1title" align="left">Solution Provided: </div>
						</div>
						<div class="col-md-3">
						<textarea class="form-control" style="text-align: left;" name="solution" id="solution" placeholder="Solution Provided" readonly="readonly">${getSupportById.solutionProvided}</textarea>
							 

						</div>
				 
					</div>
					
					<div class="colOuter">
						<div class="col-md-2">
							<div class="col1title" align="left">Issue Date: </div>
						</div>
						<div class="col-md-3">
						<input id="custAdd" class="form-control" style="text-align: left;"
								placeholder="Customer Address" value="${getSupportById.issueRaisedDatetime}" name="custAdd" type="text" disabled>

						</div>
						<div class="col-md-1"> </div>

						<div class="col-md-2">
							<div class="col1title" align="left">Resolved Date: </div>
						</div>
						<div class="col-md-3">
						<input id="custAdd" class="form-control" style="text-align: left;"
								placeholder="Customer Address" value="${getSupportById.solutionDatetime}" name="custAdd" type="text" disabled>
						</div>
				 
					</div>
					
					<div class="colOuter">
						<div class="col-md-2">
							<div class="col1title" align="left">Status: </div>
						</div>
						<div class="col-md-3">
							<input id="custAdd" class="form-control" style="text-align: left;"
								placeholder="Customer Address" value="Resolved" name="custAdd" type="text" disabled>
						</div>
						<div class="col-md-1"> </div>

						  
					</div>
					 
						 
					
					 
					<!-- <div class="colOuter">
						<div align="center">
							<input name="submit" class="buttonsaveorder" value="Submit"
								type="submit" align="center">
								<input type="button" class="buttonsaveorder" value="Cancel" id="cancel" onclick="cancel1()" disabled>
						</div>
				 
					</div> -->
					
				 

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
function edit(suppId) {
 
	  
	$('#loader').show();

	$
			.getJSON(
					'${editFrSupplier}',

					{
						 
						suppId : suppId, 
						ajax : 'true'

					},
					function(data) { 
						
						document.getElementById("suppId").value=data.suppId;
						document.getElementById("suppName").value=data.suppName;  
						document.getElementById("suppAdd").value=data.suppAddr;
						document.getElementById("city").value=data.suppCity;
						document.getElementById("mob").value=data.mobileNo;
						document.getElementById("email").value=data.email;
						document.getElementById("gstnNo").value=data.gstnNo;
						document.getElementById("panNo").value=data.panNo;
						document.getElementById("liceNo").value=data.suppFdaLic;
						document.getElementById("creditDays").value=data.suppCreditDays;
						document.getElementById("isSameState").value=data.isSameState; 
						document.getElementById("cancel").disabled=false;
					});

 
	   

}

function validation() {

    //alert("cancel");
	var sts = document.getElementById("status").value; 
	if(sts==2)
	{
		document.getElementById("solution").required = true; 
	}
	else
		{
		document.getElementById("solution").required = false; 
		}

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
