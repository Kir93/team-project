package kr.gudi.pay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shoppingBasketController {

		@RequestMapping("main/shoppingBasket")
		public String shoppingBasket(){
			return "pay/shoppingBasket";
		}
}
