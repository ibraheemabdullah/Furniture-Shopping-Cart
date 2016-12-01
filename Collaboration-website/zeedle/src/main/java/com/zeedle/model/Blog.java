package com.zeedle.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Blog{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private int userId;
private String blogTitle;
private String blogDesc;
@ManyToOne
@JoinColumn(name="userId", insertable=false, updatable=false, nullable=false)
UserDetail user;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getBlogTitle() {
	return blogTitle;
}
public void setBlogTitle(String blogTitle) {
	this.blogTitle = blogTitle;
}
public String getBlogDesc() {
	return blogDesc;
}
public void setBlogDesc(String blogDesc) {
	this.blogDesc = blogDesc;
}
public UserDetail getUser() {
	return user;
}
public void setUser(UserDetail user) {
	this.user = user;
}


}
