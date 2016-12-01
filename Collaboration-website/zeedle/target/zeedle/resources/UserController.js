'use strict';


app.factory('UserDetail', ['$resource', function ($resource) {
    return $resource('http://localhost:8080/zeedle/user/:id', {id: '@id'},
	{
		updateUser: {method: 'PUT'}
	}
    );
}]);
app.controller('UserController', ['$http','$scope','$cookieStore','UserDetail','UserService','$location','$rootScope',function($http,$scope,$cookieStore,UserDetail, UserService,$location, $rootScope)   {
    var ob = this;
    ob.users=[];
    ob.user = new UserDetail(); 
    ob.fetchAllUsers = function(){
        ob.users = UserDetail.query();
    };
    ob.fetchAllUsers();
    ob.addUser = function(){
	console.log('Inside save');
	if($scope.userForm.$valid) {
	  ob.user.$save(function(user){
	     console.log(user); 
	     ob.flag= 'created';	
	     ob.reset();	
	     ob.fetchAllUsers();
	  },
	  function(err){
	     console.log(err.status);
	     ob.flag='failed';
	  }
          );
        }
    }; 
    ob.editUser = function(id){
	    console.log('Inside edit');
            ob.user = UserDetail.get({ id: id}, function() {
	       ob.flag = 'edit'; 
	    });
    };    
    ob.updateUserDetail = function(){
	console.log('Inside update');
	if($scope.userForm.$valid) {
    	   ob.user.$updateUser(function(user){
    		console.log(user); 
		ob.updatedId = user.id;
		ob.reset();
		ob.flag = 'updated'; 
    		ob.fetchAllUsers();
           });
	}
    };	
    ob.deleteUser = function(id){
	    console.log('Inside delete');
	    ob.user = UserDetail.delete({ id: id}, function() {
		ob.reset();  
		ob.flag = 'deleted';
    		ob.fetchAllUsers(); 
	    });
    };		
    ob.reset = function(){
    	ob.user = new UserDetail();
        $scope.userForm.$setPristine();
    };	
    ob.cancelUpdate = function(id){
	    ob.user = new UserDetail();
	    ob.flag= '';	
   	    ob.fetchAllUsers();
    };    
    
    
    ob.login= function (){
    	{
    	console.log('Login Validation????????', ob.user);
    	ob.authenticate(ob.user);
    }
    };
    ob.logout = function(){
    	$rootScope.currentUser = {};
    	$cookieStore.remove('currentUser');
    	
    	console.log('calling the method logout of user service');
    	UserService.logout()
    	$location.path('/');	
    }

    ob.authenticate = function(user){
    	console.log("authenticate...")
    	UserService
    		.authenticate(user)
    		.then(
    				function(d){
    					
    					ob.user = d;
    					console.log("user.errorcode:" + ob.user.errorCode)
    					if(ob.user.errorCode == "404")
    						{
    							alert("Invalid credentials. Please try again.")
    							ob.user.name = "";
    							ob.user.password = "";
    						}else{
    							console.log("Valid credentials. Navigating to home page")
    							$rootScope.currentUser = {
    								id : ob.user.id,
    								name : ob.user.name,
    								role : ob.user.role
    							};
    							$http.defaults.headers.common['Authorization'] = 'Basic'
    								+ $rootScope.currentUser;
    							$cookieStore
    								.put(
    										'currentUser',
    										$rootScope.currentUser);
    							$location.path('/');
    						}		
    				},
    				function(errorResponse){
    					console.error('Error while authenticate Users');
    				});
    }
    
   
    
   /* ob.submit= function (){
    	{
    	console.log('Saving new user', ob.user);
    	ob.addUser(ob.user);
    }
    ob.reset();
   };*/


    
    
    
    
    
    
    
    
    
    
    
    
    
}]);      