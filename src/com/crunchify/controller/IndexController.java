package com.crunchify.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.crunchify.dao.UserDAO;


@Controller
public class IndexController {
 
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam String username, @RequestParam  String password) {
		
		System.out.println("Username: "+username+" Password:"+password);
		
		
		return new ModelAndView("welcome", "username", username);
	}
}