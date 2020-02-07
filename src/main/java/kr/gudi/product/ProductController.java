package kr.gudi.product;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {

	@Autowired ProductService ps;
	
	@RequestMapping(value = "setProduct", method = RequestMethod.POST)
	public @ResponseBody int setProduct(@RequestBody Map<String, Object> paramMap) {
		System.out.println(paramMap.get("color"));
		return ps.setProduct(paramMap);
	}
	
}
