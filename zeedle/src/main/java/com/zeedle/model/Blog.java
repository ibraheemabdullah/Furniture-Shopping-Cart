package com.zeedle.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Blog{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private String blogTitle;
private String blogDesc;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
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


}
