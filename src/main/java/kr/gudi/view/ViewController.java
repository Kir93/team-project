package kr.gudi.view;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class ViewController {
	
	@RequestMapping("/{name}")
	public String main(@PathVariable("name") String name, HttpSession session) {
		String url = "main/" + name;
//		System.out.println(session.getAttribute("User"));
		return url;
	}
}