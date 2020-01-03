package kr.gudi.loginteam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class loginteamController {
	@RequestMapping("/{name}")
	public String loginteam(@PathVariable("name") String name) {
		String url = "loginteam/" + name;	
		return url;
	}
}
