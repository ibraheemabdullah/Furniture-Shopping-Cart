package com.zeedle.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zeedle.dao.BlogDAOImpl;
import com.zeedle.model.Blog;

@Service
@Transactional
public class BlogService {
@Autowired (required=true)
BlogDAOImpl blogDAO;

public List<Blog> getAllBlog() {
	return blogDAO.getAllBlog();
}

public Blog getBlogById(int id) {
	return blogDAO.getBlogById(id);
}

public boolean addBlog(Blog blog) {
	return blogDAO.addBlog(blog);
}

public void updateBlog(Blog blog) {
	blogDAO.updateBlog(blog);
}
public void deleteBlog(int id) {
	blogDAO.deleteBlog(id);
}
}