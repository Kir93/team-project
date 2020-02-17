package kr.gudi.item;



import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ItemController {

	@Autowired ItemService is;
	@Autowired SqlSession sql;
	
	@RequestMapping("/main/item")
	public String itemView(@RequestParam("no") int no, Model model, HttpSession session) {
		model.addAttribute("item", is.itemView(no));
		return "main/item";
	}
	
	@RequestMapping(value="setCart", method=RequestMethod.POST)
	public @ResponseBody int setCart(@RequestBody Map<String, Object> paramMap) {
		return is.setCart(paramMap);
	}
}
