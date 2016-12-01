<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Register</title>
<style type="text/css">

</style>
</head>
<div ng-controller="UserController as Ctrl">
<body >
 <div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h5 class="text-center">SIGN UP</h5>
                    <form class="form form-signup"  ng-submit="ctrl.addUser()" role="form" name="userForm"  method="POST">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                            <input type="text" class="form-control" name="name" ng-model="userCtrl.user.name" placeholder="Username" />
                            <span ng-show="userForm.name.$error.required" class="msg-val">Username is required.</span></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                            </span>
                            <input type="text"  name="email" type="text" ng-model="userCtrl.user.email" class="form-control" placeholder="Email Address" />
                            <span ng-show="userForm.email.$error.required" class="msg-val">Email is required.</span></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="password" name="password" type="password" ng-model="userCtrl.user.password" class="form-control" placeholder="Password" />
                        </div>
                    </div>
                </div>
                <a href="#" class="btn btn-sm btn-primary btn-block"  role="button" ng-click="userCtrl.addUser()">REGISTER</a> 
                <a href="#" class="btn btn-sm btn-primary btn-block"  role="button" ng-click="userCtrl.reset()">RESET</a>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
			
	
</html>