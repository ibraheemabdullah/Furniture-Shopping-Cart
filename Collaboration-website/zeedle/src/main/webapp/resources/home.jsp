 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  
 <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

<style>
.mySlides {display:none;}
</style>

<title>Home page</title>



</head>
<body style="background-color:#00bfff; ng-controller="UserController as userCtrl">
<header>
    <div class="container">
	<div class="row">
		<div class="col-sm-6">
		<div ng-controller="HomeController as homeCtrl">
 <div ng-hide="currentUser==''">
  
   
</div>
</div>
		
			<div class="logo"> Welcome: {{currentUser.name}} <br>User Rle: {{currentUser.role}}</div>
		</div>
		<div class="col-sm-6 hidden-xs">
		<form name="userForm"   ng-submit="ctrl.login()"  method="POST" >
		<div ng-if="userCtrl.flag != 'edit'">
		     <h3 align=center></h3> 
		  </div>
		  <div ng-if="userCtrl.flag == 'edit'">
		     <h3> Update User for ID: {{ userCtrl.user.id }} </h3> 
		  </div>
			<div class="row">
				<div class="col-sm-5">
					  <div class="form-group" >
					    <input type="text" class="form-control"name="name" ng-model="userCtrl.user.name" placeholder="User name">
					    <div class="login-bottom-text checkbox hidden-sm">
						    <label>
						      <input type="checkbox" id="">
						      Keep me sign in
						    </label>
						  </div>
					  </div>
				</div>	
				<div class="col-sm-5">
					 <div class="form-group">
					    <input type="password" class="form-control"  name="password" ng-model="userCtrl.user.password" placeholder="Password">
					    <div class="login-bottom-text hidden-sm"> Forgot your password?  </div>
					  </div>
				</div>
				<div class="col-sm-2">
					 <div class="form-group">
					    <input type="submit"  ng-click="userCtrl.login()" value="login"  class="btn btn-default btn-header-login">
					  </div>
				</div>
			</div>	
			</form>
		</div>
	</div>
	</div>

 <div id="wrapper">
        <div id="sidebar-wrapper">
            <aside id="sidebar">
                <ul id="sidemenu" class="sidebar-nav">
                    <li>
                        <a href="#">
                            <span class="sidebar-icon"><i class="fa fa-dashboard"></i></span>
                            <span class="sidebar-title">Home</span>
                        </a>
                    </li>
                    <li>
                        <a class="accordion-toggle collapsed toggle-switch" data-toggle="collapse" href="#submenu-2">
                            <span class="sidebar-icon"><i class="fa fa-users"></i></span>
                            <span class="sidebar-title">Job Opportunities</span>
                            <b class="caret"></b>
                        </a>
                        <ul id="submenu-2" class="panel-collapse collapse panel-switch" role="menu">
                            <li><a href="#"><i class="fa fa-caret-right"></i>Search Job</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Add New Job</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Vacant Job</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="accordion-toggle collapsed toggle-switch" data-toggle="collapse" href="#submenu-3">
                            <span class="sidebar-icon"><i class="fa fa-newspaper-o"></i></span>
                            <span class="sidebar-title">Blog</span>
                            <b class="caret"></b>
                        </a>
                        <ul id="submenu-3" class="panel-collapse collapse panel-switch" role="menu">
                            <li><a href="#">Add New Blogs</a></li>
                            <li><a href="#">View Blogs</a></li>
                        </ul>
                    </li>
                    <li>
                          <a class="accordion-toggle collapsed toggle-switch" data-toggle="collapse" href="#submenu-4">
                            <span class="sidebar-icon"></i></span>
                            <span class="glyphicons glyphicons-search"></span>Friends</span>
                            <b class="caret"></b>
                        </a>
                        <ul id="submenu-4" class="panel-collapse collapse panel-switch" role="menu">
                            <li><a href="#">Add New Friends</a></li>
                            <li><a href="#">View List Of Friends</a></li>
                        </ul>
                    </li>
                    <li>
                       
                    </li>
                </ul>
            </aside>            
        </div>
        </header>
<div class="container">
		<div class="row">

			<div class="col-sm-8">
				<div class="w3-container">
				<br>
				<div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="resources\images\collage-2016-11-14.jpg" style="width:100%">
  <img class="mySlides" src="resources\images\collage-6.jpg" style="width:100%">
  <img class="mySlides" src="resources\images\collage-3.jpg" style="width:100%">
  <img class="mySlides" src="resources\images\collage-4.jpg" style="width:100%">
  
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

				<!-- <img src="C:\Users\dell\Downloads\Zeedle IMG\col-img2.jpg" alt="Lights" class="w3-image" width="450" height="350"> -->
				</div>
			</div>
			<div class="col-sm-4">
				<div class="">
				
				<h3><i class="fa fa-shield"></i> Register now</h3>
			  	<hr>
			  	
			  	
			  	<div class="form-group">
				  <label class="control-label" for="">User Name</label>
				  <input type="text" class="form-control"  name="name"  ng-model="userCtrl.user.name"  placeholder="Username">
				</div>
			  	
				<div class="form-group">
				  <label class="control-label" for="">Email Address</label>
				  <input type="text" class="form-control"  name="email" ng-model="userCtrl.user.email"  placeholder="Email Address">
				</div>

				<div class="form-group">
				  <label class="control-label" for="">Password</label>
				  <input type="password" class="form-control"   name="password"  ng-model="userCtrl.user.password" placeholder="Password">
				</div>

				

					 
		      
				<small>
					By clicking Sign Up, you agree to our Terms and that you have read our
					 Data Use Policy, including our Cookie Use.
				</small>	 
				<div style="height:10px;"></div>
				<div class="form-group">
				  <label class="control-label" for=""></label>
				  <input type="submit"  class="btn btn-primary" ng-click="userCtrl.addUser()">
				   <input type="Reset"  class="btn btn-primary" ng-click="userCtrl.reset()">
				</div>	 

				  </div>
			</div>
			</div>
		</div>






<hr>
</body>
 <link rel="stylesheet" href="resources/css/login_logo.css" type="text/css"></link>
 <link rel="stylesheet" href="resources/css/sidebar.css" type="text/css"></link>
 
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>  

<script src="resources/js/angular.js"></script>

</html>