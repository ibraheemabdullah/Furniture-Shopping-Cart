package com.zeedle.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.zeedle.model.UserDetail;
import com.zeedle.service.FriendService;
import com.zeedle.service.UserService;

@RestController
public class UserController {
	@Autowired (required=true)
	private UserService userService;
	
	@Autowired (required=true)
	private FriendService friendService;
	
	
	//for getting id
	@RequestMapping(value="/user/{id}", method = RequestMethod.GET )
	public ResponseEntity<UserDetail> getUserById(@PathVariable("id") Integer id) {
		UserDetail user = userService.getUserById(id);
		return new ResponseEntity<UserDetail>(user, HttpStatus.OK);
	}
	
	// for getAll user
	@RequestMapping(value= "/user", method = RequestMethod.GET)
	public ResponseEntity<List<UserDetail>> getAllUser() {
		List<UserDetail> list = userService.getAllUser();
		return new ResponseEntity<List<UserDetail>>(list, HttpStatus.OK);
	}
	
	//For add user
	@RequestMapping(value= "/user", method = RequestMethod.POST)
	public ResponseEntity<Void> addUser(@RequestBody UserDetail user, UriComponentsBuilder builder) {
        boolean flag = userService.addUser(user);
               if (flag == false) {
        	  return new ResponseEntity<Void>(HttpStatus.CONFLICT);
               }
               HttpHeaders headers = new HttpHeaders();
               headers.setLocation(builder.path("/user/{id}").buildAndExpand(user.getId()).toUri());
               return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	}
	
	
	//For update user
	@RequestMapping(value="/user/{id}", method = RequestMethod.PUT )
	public ResponseEntity<UserDetail> updateUser(@RequestBody UserDetail user) {
		userService.updateUser(user);
		return new ResponseEntity<UserDetail>(user, HttpStatus.OK);
	}
	//For delete user
	@RequestMapping(value="/user/{id}", method = RequestMethod.DELETE )
	public ResponseEntity<Void> deleteUser(@PathVariable("id") Integer id) {
		userService.deleteUser(id);
		return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
}
	  
	  @RequestMapping(value="/user/authenticate/", method=RequestMethod.POST)
	  public ResponseEntity<UserDetail> authenticate(@RequestBody UserDetail user, HttpSession session){
		  user = userService.authenticate(user.getName(), user.getPassword());
		  if(user==null){
			  user = new UserDetail(); // Do we need to create new user?
			  user.setErrorCode("404");
			  user.setErrorMessage("Invalid Credentials. please enter valid credentials");
			  }
		  else
		  {
			  user.setErrorCode("200");
			  session.setAttribute("loggedInUser", user);
			  session.setAttribute("loggedInUserId", user.getId());
			  int loggedInUserId =(Integer)session.getAttribute("loggedInUserId");
			  System.out.println("stored in session"+loggedInUserId);
			  System.out.println("user name is="+user.getName());
			  String currentUserName=user.getName();
			  session.setAttribute("currentUserName", currentUserName);
			  System.out.println("password is="+user.getPassword());
			  System.out.println("user id"+user.getId());
			  friendService.setOnline(user.getId());
			  /*userService.setOnline(user.getId());*/
			  
		  }
		  return new ResponseEntity<UserDetail> (user, HttpStatus.OK );
	  }
	    
	  @RequestMapping(value="/user/logout", method=RequestMethod.GET)
	  public  String logout(HttpSession session){
		  int loggedInUserId =(Integer)session.getAttribute("loggedInUserId");
		  session.invalidate();
		  
		  return("You successfully loggouedout");
	  }
	    
	    
	  
}
