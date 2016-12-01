package com.zeedle.dao;

import java.util.List;

import com.zeedle.model.Blog;

public interface BlogDAO {
	 List<Blog> getAllBlog();
	 Blog getBlogById(int id);
	    boolean addBlog(Blog blog);
	    void updateBlog(Blog blog);
	    void deleteBlog(int id);

}
