package kr.gudi.pay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class paymentFinish {
		@RequestMapping("main/paymentFinish")
		public String paymentFinish() {
			return "pay/paymentFinish";
		}
		
}
