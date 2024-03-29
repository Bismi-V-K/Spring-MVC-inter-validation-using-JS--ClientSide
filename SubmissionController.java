package com.spring.mvc.intermediate.validation.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mvc.intermediate.validation.dtoClass.DtoClass;

@Controller
public class SubmissionController {

	@RequestMapping("/")
	public String submit(@ModelAttribute("Submission")DtoClass dto) {
		return "home-page";
	}
	
	@RequestMapping("/processing")
	public String processing(@ModelAttribute("Submission")DtoClass dto) {
		return "register-page";
	}
}
