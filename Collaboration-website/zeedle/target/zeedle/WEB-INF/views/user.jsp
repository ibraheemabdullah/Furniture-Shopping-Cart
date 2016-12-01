 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="/WEB-INF/views/header.jsp"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
 <title>Registeration</title>
 <style type="text/css">
 .msg-val {
	color: red;
}
.msg-success {
	color: green;
}
 </style>
</head>
<div ng-controller="UserController as userCtrl">
<body ng-app="">
<div class="w3-container w3-teal">
  <h2>Registeration Here</h2>
</div>

<form class="w3-container" class="w3-card-4" name="userForm"  method="POST"  >
<!-- Radio input -->
<div ></div>
<div class="w3-row">
<div  >
<label>Register As:</label>  
<p>      <input  class="w3-radio" type="radio" name="role" ng-model="userCtrl.user.role" value="student" checked>
      <label class="w3-validate"> Student </label>
      <input  class="w3-radio" type="radio" name="role" ng-model="userCtrl.user.role" value="alumini">
      <label class="w3-validate"> Alumini</label>
      <input  class="w3-radio" type="radio" name="role" ng-model="userCtrl.user.role" value="employee">
      <label class="w3-validate"> Employee</label>
       <span ng-show="userForm.role.$error.required" class="msg-val">Role is required.</span></p>
<!-- Text input-->
<div class="w3-col s6 w3-green w3-center"></div>
  <p><label  class="w3-label w3-text-teal">Name</label>  
  <input   class="w3-input w3-border w3-light-grey" type="text" name="name" ng-model="userCtrl.user.name" placeholder="" class="form-control input-md" required="">
  <span ng-show="userForm.name.$error.required" class="msg-val">Username is required.</span></p>
  
<!-- Text input-->

<p><label class="w3-label w3-text-teal">Password</label>  
<input  class="w3-input w3-border w3-light-grey" name="password" type="password" ng-model="userCtrl.user.password" placeholder="" class="form-control input-md" required="">
 <span ng-show="userForm.password.$error.required" class="msg-val">Password is required.</span></p>
<!-- Text input-->

  <p><label class="w3-label w3-text-teal">Email</label>  
  <input class="w3-input w3-border w3-light-grey" name="email" type="text" ng-model="userCtrl.user.email" placeholder="" class="form-control input-md" required="">
  <span ng-show="userForm.email.$error.required" class="msg-val">Email is required.</span></p>
 <!-- Text input-->
 <p> <label class="w3-label w3-text-teal">Mobile</label>  
 <input  class="w3-input w3-border w3-light-grey" name="mobile" type="text" ng-model="userCtrl.user.mobile" placeholder="" class="form-control input-md" required="">
 <span ng-show="userForm.mobile.$error.required" class="msg-val">Mobile No. is required.</span></p>
  
<!-- Text input-->

  <p><label class="w3-label w3-text-teal">Address</label>  
  <textarea   class="w3-input w3-border w3-light-grey" name="address" type="text" ng-model="userCtrl.user.address" placeholder="" class="form-control input-md" required=""></textarea>
     <span ng-show="userForm.address.$error.required" class="msg-val">Address is required.</span></p>

<!-- Button (Double) -->
<div class="form-group">
    <button  class="w3-btn w3-teal" ng-click="userCtrl.addUser()">Register</button>
    <button  class="w3-btn w3-teal"  ng-click="userCtrl.reset()">Reset Form</button>
</form>

</div>
</body>
</div>
</html> 