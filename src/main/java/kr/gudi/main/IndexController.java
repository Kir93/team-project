package kr.gudi.main;



import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

	@Autowired IndexService is;
	@Autowired SqlSession sql;
	
	@RequestMapping(value="mainList", method=RequestMethod.POST)
	public String mainList(Model model) {
		model.addAttribute("data", is.mainList());
		return "index/mainList";
	}
	
	@RequestMapping(value="newList", method=RequestMethod.POST)
	public String newList(Model model) {
		model.addAttribute("data", is.newList());
		return "index/mainList";
	}
	
	@RequestMapping(value="bestList", method=RequestMethod.POST)
	public String bestList(Model model) {
		model.addAttribute("data", is.bestList());
		return "index/mainList";
	}
	
	@RequestMapping(value="choseList", method=RequestMethod.POST)
	public String choseList(@RequestBody int no, Model model) {
		model.addAttribute("data", is.choseList(no));
		return "index/mainList";
	}
	
	@RequestMapping(value="setChose", method=RequestMethod.POST)
	public @ResponseBody int setChose(@RequestBody Map<String, Object> paramMap, HttpSession session) {
		if(is.setChose(paramMap) > 0) {
			session.setAttribute("Chose", sql.selectList("chose.getChose", paramMap));
			System.out.println(session.getAttribute("Chose"));
			return 1;
		}
		return 0;
	}
	
	@RequestMapping(value="delChose", method=RequestMethod.POST)
	public @ResponseBody int delChose(@RequestBody Map<String, Object> paramMap, HttpSession session) {
		if(is.delChose(paramMap) > 0) {
			session.setAttribute("Chose", sql.selectList("chose.getChose", paramMap));
			System.out.println(session.getAttribute("Chose"));
			return 1;
		}
		return 0;
	}
}
