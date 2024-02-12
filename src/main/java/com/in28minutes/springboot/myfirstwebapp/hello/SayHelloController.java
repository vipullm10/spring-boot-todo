package com.in28minutes.springboot.myfirstwebapp.hello;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {

	//"say-hello" => "Hello! What are you learning today?"
	
	@RequestMapping("say-hello")
	@ResponseBody
	public String sayHello() {
		return "Hello! What are you learning today?";
	}
	
	
	@RequestMapping("say-hello-html")
	@ResponseBody
	public String sayHelloHtml() {
		String html = 
				"""
				<html>
					<head>
						<title> My first HTML Page</title>
					</head>
					<body>
						<h1>My first html page with body</h1>
					</body>
				</html>
				
				""";
		return html; 
	}
	
	@RequestMapping("say-hello-jsp")
	public String sayHelloJsp() {
		return "sayHello"; 
	}
}
