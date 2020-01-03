package kr.gudi.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class adminController {
	
	@RequestMapping("/main/admin")
	public String admin() {
		return "admin/admin";	
	}
	
}
