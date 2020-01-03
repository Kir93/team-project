package kr.gudi.faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class faqcontroller {

	@RequestMapping("/main/faq")
	public String faq() {
		return "faq/faq";
	}
}
