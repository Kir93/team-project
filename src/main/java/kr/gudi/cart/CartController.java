package kr.gudi.cart;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CartController {

	@Autowired CartService cs;
	
	@RequestMapping("/main/shoppingBasket")
	public String cartView(@RequestParam("no") int no, Model model) {
		model.addAttribute("cart", cs.cartView(no));
		return "main/shoppingBasket";
	}
	
	@RequestMapping(value="repairCount", method=RequestMethod.POST)
	public @ResponseBody int repairCount(@RequestBody Map<String, Object> paramMap) {
		return cs.repairCount(paramMap);
	}
	
	@RequestMapping(value="repairColor", method=RequestMethod.POST)
	public @ResponseBody int repairColor(@RequestBody Map<String, Object> paramMap) {
		return cs.repairColor(paramMap);
	}
	
	@RequestMapping(value="delAllCart", method=RequestMethod.POST)
	public @ResponseBody int delAllCart(@RequestBody String no) {
		return cs.delAllCart(no);
	}
	
	@RequestMapping(value="delSelectCart", method=RequestMethod.POST)
	public @ResponseBody int delSelectCart(@RequestBody List<Map<String, Object>> paramList) {
		return cs.delSelectCart(paramList);
	}
}
