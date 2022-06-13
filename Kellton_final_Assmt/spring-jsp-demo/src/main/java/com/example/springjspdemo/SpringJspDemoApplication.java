package com.example.springjspdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.example.springjspdemo.controller"})

public class SpringJspDemoApplication  extends SpringBootServletInitializer {
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(SpringJspDemoApplication.class);
	}
	public static void main(String[] args) {
		
		
		SpringApplication.run(SpringJspDemoApplication.class, args);
		System.out.println("your application has run");
	}

}
