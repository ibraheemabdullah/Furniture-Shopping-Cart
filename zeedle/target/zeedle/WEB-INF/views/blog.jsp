 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BLOG</title>
 
<style type="text/css">
.msg-val {
	color: red;
}
.msg-success {
	color: green;
} 
</style>
</head>
<body  ng-app="myApp">
<div ng-controller="BlogController as blogCtrl">
  <h1> Blogs CRUD </h1>
  <form name="blogForm"  method="POST" >
   <table>
   <tr>
   <td colspan="2">
		  <div ng-if="blogCtrl.flag != 'edit'">
		     <h3> Add New Blog </h3> 
		  </div>
		  <div ng-if="blogCtrl.flag == 'edit'">
		     <h3> Update Blog for ID: {{ blogCtrl.blog.id }} </h3> 
		  </div> </td>
     </tr>
     
     <tr>
		      <td>Title: </td> <td><input type="text" name="blogTitle" ng-model="blogCtrl.blog.blogTitle" required/> 
         	      <span ng-show="blogForm.blogTitle.$error.required" class="msg-val">Title is required.</span> </td>
		</tr>
		
		 <tr>
		      <td>Description: </td> <td><input type="text" name="blogDesc" ng-model="blogCtrl.blog.blogDesc" required/> 
         	      <span ng-show="blogForm.blogDesc.$error.required" class="msg-val">Description is required.</span> </td>
		</tr>
		
		<tr><td colspan="2">
	            <div ng-if="blogCtrl.flag != 'edit'">
		       <input  type="submit" ng-click="blogCtrl.addBlog()" value="Add Blog"/> 
		       <input type="button" ng-click="blogCtrl.reset()" value="Reset"/>
		    </div>
		    <div ng-if="blogCtrl.flag == 'edit'">
		       <input  type="submit" ng-click="blogCtrl.updateBlogDetail()" value="Update Blog"/> 	
			   <input type="button" ng-click="blogCtrl.cancelUpdate()" value="Cancel"/>				   
		    </div> </td>
		</tr>
		<tr>
		     <td colspan="2"> <span ng-if="blogCtrl.flag=='deleted'" class="msg-success">Blog successfully deleted.</span>
		</tr>
   </table>
   
    <table>
	      <tr><th>ID </th> <th>Title</th> <th>Desicription</th></tr>
	      <tr ng-repeat="row in blogCtrl.blogs">
	         <td><span ng-bind="row.id"></span></td>
	         <td><span ng-bind="row.blogTitle"></span></td>
	         <td><span ng-bind="row.blogDesc"></span></td>
	         <td>
		    <input type="button" ng-click="blogCtrl.deleteBlog(row.id)" value="Delete"/>
		    <input type="button" ng-click="blogCtrl.editBlog(row.id)" value="Edit"/>
		    <span ng-if="blogCtrl.flag=='updated' && row.id==blogCtrl.updatedId" class="msg-success">Blog successfully updated.</span> </td> 
	      </tr>	
	</table>
   
   </form>
</div>
		<script src="resources/js/angular.min.js"></script>
        <!--  <script src="resources/js/angular-resource.js"></script> --> 
           <script src="resources/js/angular-resource.min.js"></script> 
		 <script src="resources/js/app.js"></script> 
	

</body>
</html> 