package kr.gudi.login;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
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
		
		@Autowired private SqlSession sql;
		
		@RequestMapping(value = "/loginTeam", method = RequestMethod.POST)
		public @ResponseBody boolean getUser(UserBean ub, HttpSession session){
			Map<String, Object> userMap = loginService.getUser(ub);
			System.out.println(userMap);
			if(userMap != null) {
				session.setAttribute("User", userMap);
				session.setAttribute("Chose", sql.selectList("chose.getChose", userMap));
				System.out.println("User : " + session.getAttribute("User"));
				System.out.println("Chose : " + session.getAttribute("Chose"));
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
