<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 <title></title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/zeedle">Zeedle Collaberation</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/zeedle">Home</a></li>
          <li><a href="#">Job Opportunities</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Blogs <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#/blog">Add New Blogs</a></li>
            <li><a href="#">Show List of Blogs</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Friends <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Add New Friends</a></li>
            <li><a href="#">Show List of Friends</a></li>
          </ul>
        </li>
        <li><a href="#/event">Events</a>
		  <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Chat Forums <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Add New Friends</a></li>
            <li><a href="#">Show List of Friends</a></li>
          </ul>
        </li>
		        
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <div ng-hide="currentUser">
        <li><a href="#/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
         </div>
          <div ng-show="currentUser">
           <li><a href="#/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
           </div>
      </ul>
    </div>
  </div>
</nav>
  

</body>
</html>