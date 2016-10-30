<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FOOTER</title>
<link rel="stylesheet" src="resources/cs/w3.css">
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.min.css" />
<script src="<u:url value="resources/js/controller.js" />" ></script>
 <style type="text/css">
.noBullets{
    	list-style:none;
		padding:auto;
	}
    
	#last-footer h5{
		text-align:center;
	}
	.footlinks li a{
	text-align:center;
	margin-left:5px ;
	}
	.subscribe li{padding:3px;}

</style>
</head>
<body>
<div class="container">
	<div class="row">
		
	</div>
</div>
	<footer class="text-muted well" id="last-footer">
		<section>
		<div class="row" style="font-size:11px;">
		<div class="container">
		<h3 class="subhead" style="text-align:center;">All We Need Is Your Love</h3>
		   <div class="col-md-9">
        <div class="row" >
			<div class="col-md-3">
			<div class="row footlinks">
			<div class="col-xs-12">
			<h5>About School</h5>
			<ul class="noBullets">
			<li><i class="fa fa-angle-right"></i><a href="#">History</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Location</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Faculty</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Architecture</a></li>
			</ul>
			</div>
			</div>
			</div>
			<div class="col-md-3">
			<div class="row footlinks">
			<div class="col-xs-12">
			<h5>Join Us</h5>
			<ul class="noBullets">
			<li><i class="fa fa-angle-right"></i><a href="#">Facbook Page</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Follow Twitter</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Google Plus</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">E-Mail</a></li>
			</ul>
			</div>
			</div>
			</div>
			<div class="col-md-3">
			<div class="row footlinks">
			<div class="col-xs-12">
			<h5>Facilities</h5>
			<ul class="noBullets">
			<li><i class="fa fa-angle-right"></i><a href="#">Transport Facility</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">AC Classrooms</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Monthly Trips</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Computer Lab</a></li>
			</ul>
			</div>
			</div>
			</div>
			<div class="col-md-3">
			<div class="row footlinks">
			<div class="col-xs-12">
			<h5>Access Links</h5>
			<ul class="noBullets">
			<li><i class="fa fa-angle-right"></i><a href="#">Future Plans</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Objectives</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Achievements</a></li>
			<li><i class="fa fa-angle-right"></i><a href="#">Honours</a></li>
			</ul>
			</div>
			</div>
			</div>
			<hr/>			
        </div><!--/.row inner--> 
		</div>
		 <div class="col-md-3 subscribe">
		 <div class="row">
		 <div class="col-xs-12">
		 <form class="form-inline" role="form">
		 <ul class="noBullets">
		<h5>Subscribe Newsletters!</h5>
		 <li>
		 <div class="form-group">
				    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter your email address">
		</div>
				  </li>
				  <li class="text-center">
				  <button type="submit" class="btn btn-success btn-sm">Subscribe Now!</button>
				  </li>
				  </ul>		
				</form>		
		</div></div>		
		 </div>
		
    
		<footer>	<div class="row">
			<div class="container text-center">
				<h5>All Rights Reserved © 2014.<a href="mailto:chance2seo@gmail.com">Passionate Rahul</a></h5>
			</div>
			</div></footer>
			 </div><!--/.container--> 
			 </div><!--/.row outer--> 
		</section>
				</footer>				
</body>
</html>