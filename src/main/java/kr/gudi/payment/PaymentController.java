package kr.gudi.payment;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/main")
public class PaymentController {

	@Autowired PaymentService paymentService;
	
	@RequestMapping(value="bankView", method = RequestMethod.POST)
	public @ResponseBody List<Map<String, Object>> getbank(HttpSession session){
		List list = new ArrayList<Map<String, Object>>();
		Map<String, Object> paymentMap = new HashMap<String, Object>();
		paymentMap = (Map<String, Object>) session.getAttribute("User");
		if(paymentMap != null) {
			list.add(paymentMap);
			list.add(paymentService.getbank());
			return list;
		}
		
		return null;
	}
	
}
