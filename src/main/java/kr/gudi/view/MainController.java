package kr.gudi.view;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String main() {
		return "redirect:main/index";
	}
	
	@RequestMapping("/header")
	public String header(HttpSession session) {
		System.out.println(session.getAttribute("User"));
		return "main/header";
	}
	
	@RequestMapping("/footer")
	public String footer() {
		return "main/footer";
	}
	
	@ControllerAdvice
	public class CommonExceptionAdvice {

		private final Logger logger = LoggerFactory.getLogger(CommonExceptionAdvice.class);

		@ExceptionHandler(Exception.class)
		public ModelAndView common(Exception e) {
			logger.info(e.toString());

	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("/main/index");
	    mv.addObject("exception", e);

			return mv;
		}
	}
}