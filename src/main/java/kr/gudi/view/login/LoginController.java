package kr.gudi.view.login;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")

public class LoginController {
	
		@Autowired private LoginService loginService;
		
		@RequestMapping(value = "login", method = RequestMethod.GET)
		public String login(HttpSession session) {
			return "login";
			}
		
		@RequestMapping(value = "/loginTeam", method = RequestMethod.POST)
		public @ResponseBody Map<String, Object> getUser(UserBean ub){
			System.out.println("Con");
			System.out.println(ub);
			return loginService.getUser(ub);
		}

}
