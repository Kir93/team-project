package kr.gudi.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class ViewController {
	
	@RequestMapping("/{name}")
	public String main(@PathVariable("name") String name) {
		String url = "main/" + name;
		return url;
	}
}