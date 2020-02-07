package kr.gudi.admin;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminController {

	@Autowired AdminService adminService;
	
	@RequestMapping(value="bank", method=RequestMethod.POST)
	public @ResponseBody int setbank(@RequestBody Map<String, Object> paramMap, HttpSession session) {
		Map<String, Object> noMap = (Map<String, Object>) session.getAttribute("User");
		paramMap.put("no", noMap.get("no"));
		System.out.println("컨트롤러" + paramMap);
		
		return adminService.setbank(paramMap);
	}
}
