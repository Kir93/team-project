package kr.gudi.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/")
public class LoginController {
	
		@Autowired private LoginService loginService;
		
		@RequestMapping(value = "/loginTeam", method = RequestMethod.POST)
		public @ResponseBody boolean getUser(UserBean ub, HttpSession session){
			Map<String, Object> userMap = loginService.getUser(ub);
			System.out.println(userMap);
			if(userMap != null) {
				session.setAttribute("User", userMap);
				//user count
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put("no", userMap.get("no")); 
				paramMap.put("name",userMap.get("name"));
				loginService.loginCount(paramMap);
				return true;
			}			
			return false;
		}
		
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public RedirectView removeUser(HttpSession session){
			session.invalidate();
			return new RedirectView("/main/index");
		}
		

}
