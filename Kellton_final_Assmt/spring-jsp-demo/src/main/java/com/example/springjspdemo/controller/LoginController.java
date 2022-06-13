package com.example.springjspdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller


public class LoginController {
	
	@RequestMapping("/")
    public String home() {
		
        return "home";
    }
	@RequestMapping(value="/login",method = RequestMethod.GET)
    public String login() {
		
        return "login";
    }

	@RequestMapping( value = "/login" , method = RequestMethod.POST)
	public String LoginPage(ModelMap model ,@RequestParam String Username  , @RequestParam String Password) {
		
		if(Username.equals("abc") && Password.equals("1234")) {
			
			return "loginsuccess";
		}
		else if(Username.equals("ABC ") && Password.equals("1234")) {
			
			return "loginsuccess";
		}
		model.put("errorMsg","Incorrect Login Credentials");
		return "login";}

	@RequestMapping("/contact")
    public String contact() {
		
        return "contact";
    }
	@RequestMapping("/pictures")
    public String pictures() {
		
        return "pictures";
	}
	@RequestMapping("/home")
    public String home1() {
		
        return "home";
    }
	@RequestMapping("/aboutus")
    public String aboutus() {
		
        return "aboutus";
    }
	@RequestMapping( value = "/booking" , method = RequestMethod.GET)
	
	public String bookingPage() {
		
		return "booking";
		
	}
	
	

	
	@RequestMapping( value = "/booking" , method = RequestMethod.POST)
	
	public String WelcomePage(ModelMap model ,@RequestParam String Source  , @RequestParam String Destination) {
		
		if(Source.equals("Delhi") && Destination.equals("Punjab")) {
			
			return "welcome";
		}
		else if(Source.equals("Punjab") && Destination.equals("Delhi")) {
			
			return "welcome";
		}
		
		
		model.put("errorMsg","We Don't have a flight Facility at these stations..");
		return "booking";
		
	}
	
	
}
