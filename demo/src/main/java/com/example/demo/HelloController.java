package com.example.demo;

import java.util.Locale;

import javax.xml.ws.RequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	@Autowired
	MessageSource messageSource;
	
	@RequestMapping("/hello")
	public String Hello(Model model,Locale locale) {
		model.addAttribute("title", messageSource.getMessage("app.title", null, locale));
		model.addAttribute("hello", "Hello World!!");
		return "hello";
	} 
}
