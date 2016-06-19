package com.cai.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cai.model.Spitter;

@Controller
public class HomeController {

	@RequestMapping(value="/",method=RequestMethod.GET)
	public String homePage(){
		return "home";
	}
	
	@RequestMapping(value="/home1",method=RequestMethod.GET)
	public String homePage1(){
		return "home1";
	}
	
	@RequestMapping(value="/getUser",method=RequestMethod.GET)
	public String getUserInfo(Map model){
		List<String> list= new ArrayList<>();
		list.add("1");
		list.add("2");
		list.add("3");
		model.put("spittleList", list);
		return "home";
	}
	@RequestMapping(value="/springtags",method=RequestMethod.GET)
	public String springtags(String ss,Map model){
		model.put("spitter", new Spitter());
		return "springtags";
	}
}
