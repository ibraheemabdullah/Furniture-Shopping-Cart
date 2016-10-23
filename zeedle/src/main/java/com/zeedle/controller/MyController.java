package com.zeedle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	@RequestMapping("/")
	public String getHome(){
		return "index";
	}
	
	@RequestMapping("/blogs")
	public String getBlog()
	{
		return "blog";
	}
}