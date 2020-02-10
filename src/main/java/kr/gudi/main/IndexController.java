package kr.gudi.main;



import java.util.Map;

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
		System.out.println(no); 
		model.addAttribute("data", is.choseList(no));
		return "index/mainList";
	}
}
