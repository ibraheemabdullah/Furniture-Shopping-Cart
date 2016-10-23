<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
     <%@ include file="/WEB-INF/views/header.jsp"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
     <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT LIST</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-theme.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>

 
 <script type="text/javascript" src="resources/js/angular.min.js"></script>
 <script src="<u:url value="resources/js/controller.js" />" ></script>
 
 <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			//$scope.searchKeyword=location.search.substr(15);
			$scope.productdata= ${productList};
			//alert($scope.productdata);
		 
		 });
	
</script>
  
</head>

  <body ng-app="myApp" ng-controller="getData">  
<!-- <div class="jumbotron"> -->
<div class="container" style="background-color: lavenderblush;">
	<h2>
		<center> </center>
		
	</h2>
	<center>
		

			
			
			
			<div id="custom-search-input">
                            <div class="input-group col-sm-4">
                                <input type="text"ng-model="searchKeyword" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </div>
<!-- </div> -->
 <br>
<div class="container">
<style>
th {
    background-color: #cc0000;
    color: white;
}</style>
	<h3>Product List</h3>
	<c:if test="${!empty productList}">
		<div class="table-responsive">

			<table class="table table-bordered">
				<tr>
					<th width="80">Product ID</th>
					<th width="80">Sub Category ID</th>
					<th width="80">Supplier ID</th>
					<th width="120">Product Name</th>
					<th width="120">Image</th>
					
					<th width="120">Product Description</th>
					<th width="80">Product Qty</th>
					<th width="80">Product Price</th>
					<th width="60"> <sec:authorize access="hasRole('ROLE_ADMIN')">Edit</th> </sec:authorize>
					<th width="60" > <sec:authorize access="hasRole('ROLE_ADMIN')">Delete</th></sec:authorize>
					<th width="120">View</th>
				</tr>
			
					<tr  ng-repeat="group in productdata | filter:searchKeyword">
						<td>{{group.id}}</td>
						<td>{{group.sub_id}}</td>
						<td>{{group.supplier_id}}</td>
						<td>{{group.name}}</td>
					<td><img style="width:40px;height:40px" src="{{group.image}}" /> </td>
						<td>{{group.desc}}</td>
						<td>{{group.qty}}</td>
						<td>{{group.price}}</td>
						<td ><a href="<c:url value='product/edit/{{group.id}}' />"><sec:authorize access="hasRole('ROLE_ADMIN')">Edit</a></td></sec:authorize>
						<td ><a href="<c:url value='product/remove/{{group.id}}' />"><sec:authorize access="hasRole('ROLE_ADMIN')">Delete</a></td></sec:authorize>
					
		<td><a href="<c:url value='/productview{{group.id}}' />"><button type="button" class="btn btn-primary">View</button></a></td>
					</tr>
			
			</table>
		</div>
	</c:if>
</div>
 

</body>
</html>