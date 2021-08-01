package com.love2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("hello")
public class HelloWorldController {

	//Controller Method to show initial form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	//controller method to process the form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersion2")
	public String givingYoutShoutOut(HttpServletRequest request, Model model) {
		
		 String theName = request.getParameter("studentName");
		 
		 theName = theName.toUpperCase();
		 
		 String result = "Yo! "+ theName;
		 
		 model.addAttribute("result", result);
		
		return "helloworld";
	}
	
	@RequestMapping("/processversion3")
	public String processVersion3(@RequestParam("studentName")String studentName, Model model) {
		studentName = studentName.toUpperCase();
		String result = "Oh Yeah! "+studentName;
		model.addAttribute("result", result);
		return "helloworld";
	} 
}
