package com.synex.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GatewayController {
	
	@RequestMapping(value = "/test",method = RequestMethod.GET)
	public String test() {
		return "test";
	}
	
	@RequestMapping(value = "/welcome",method = RequestMethod.GET)
	public String welcome() {
		return "welcome";
	}
	
	@RequestMapping(value = "/restrict",method = RequestMethod.GET)
	public String restrict() {
		return "restrict";
	}

}
