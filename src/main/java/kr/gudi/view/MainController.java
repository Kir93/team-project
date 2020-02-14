package kr.gudi.view;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String main() {
		return "redirect:main/index";
	}
	
	@RequestMapping("/header")
	public String header(HttpSession session) {
		System.out.println(session.getAttribute("User"));
		return "main/header";
	}
	
	@RequestMapping("/footer")
	public String footer() {
		return "main/footer";
	}
}