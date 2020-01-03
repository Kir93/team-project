package kr.gudi.pay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class paymentController {
	
		@RequestMapping("main/payment")
			public String payment() {
				return "pay/payment";
		}

}
