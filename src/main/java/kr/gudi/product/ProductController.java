package kr.gudi.product;

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
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ProductController {

	@Autowired ProductService ps;
	
	@RequestMapping(value = "setProduct", method = RequestMethod.POST)
	public @ResponseBody int setProduct(@RequestBody Map<String, Object> paramMap) {
		System.out.println(paramMap);
		return ps.setProduct(paramMap);
	}
	
	@RequestMapping(value = "upProduct", method = RequestMethod.POST)
	public @ResponseBody int upProduct(@RequestBody Map<String, Object> paramMap) {
		System.out.println(paramMap);
		return 1;
//		return ps.upProduct(paramMap);
	}
	
	@RequestMapping(value = "setImage", method = RequestMethod.POST)
	public @ResponseBody boolean setImage(@RequestParam("tImg") MultipartFile tImg, @RequestParam("dImg") MultipartFile dImg) {
		return ps.setImage(tImg, dImg);
	}
	
	@RequestMapping(value="productStatus", method=RequestMethod.POST)
	public String productStatus(Model model) {
		model.addAttribute("status", ps.productStatus());
		return "product/productStatus";
	}
		
	@RequestMapping(value="productList", method=RequestMethod.POST)
	public String productList(Model model) {
		model.addAttribute("data", ps.productList());
		return "product/productList";
	}
	
	@RequestMapping(value="findProduct", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> findProduct(@RequestBody String no, Model model) {
		System.out.println(no);
//		model.addAttribute("find", ps.findProduct(no));
//		System.out.println(model);
//		return "main/admin";
		return ps.findProduct(no);
	}
	
}
