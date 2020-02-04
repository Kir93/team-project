package kr.gudi.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String main() {
		return "redirect:main/index";
	}
	
	@RequestMapping("/header")
	public String header() {
		return "main/header";
	}
	
	@RequestMapping("/footer")
	public String footer() {
		return "main/footer";
	}
}