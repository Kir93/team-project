package kr.gudi.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		return adminService.setbank(paramMap);
	}
	
	@RequestMapping(value="orderListView", method=RequestMethod.POST)
	public String orderListView(Model model) {
		model.addAttribute("orderResult", adminService.getOrder());
		return "main/page/admin/orderList";
	}
	
	@RequestMapping(value="salesView", method=RequestMethod.POST)
	public @ResponseBody List<Map<String, Object>> salesView() {
		return adminService.getSales();
	}
	
	@RequestMapping(value="selectOrder", method=RequestMethod.POST)
	public String selectOrder(@RequestBody Map<String, Object> search, Model model) {
		model.addAttribute("orderResult", adminService.selectOrder(search));
		return "main/page/admin/orderList";
	}
	
	@RequestMapping(value="getDeposit", method=RequestMethod.POST)
	public String getDeposit(Model model) {
		model.addAttribute("orderResult", adminService.getDeposit());
		return "main/page/admin/orderList";
	}
	
	@RequestMapping(value="selectCancel", method=RequestMethod.POST)
	public String selectCancel(Model model) {
		model.addAttribute("cancelResult", adminService.selectCancel());
		return "main/page/admin/cancelList";
	}
	
	@RequestMapping(value="approve", method=RequestMethod.PATCH)
	public @ResponseBody int approve(@RequestBody List<Map<String, Integer>> paramMap) {
		return adminService.approve(paramMap);
	}
	
	@RequestMapping(value="denial", method=RequestMethod.PATCH)
	public @ResponseBody int denial(@RequestBody List<Map<String, Integer>> paramMap) {
		return adminService.denial(paramMap);
	}
	
	@RequestMapping(value="selectExchange", method=RequestMethod.POST)
	public String selectExchange(Model model) {
		model.addAttribute("cancelResult", adminService.selectExchange());
		return "main/page/admin/cancelList";
	}
	
	@RequestMapping(value="ExchangeListView", method=RequestMethod.POST)
	public @ResponseBody List<Map<String, Object>> ExchangeListView() {
		return adminService.getExchange();
	}
	
	@RequestMapping(value="adminHome", method=RequestMethod.POST)
	public @ResponseBody List<Map<String, Object>> adminHome() {
		return adminService.getHome();
	}
}
