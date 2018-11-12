package coid.bca.iklan;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IklanController {
	
	@RequestMapping(value= {"/iklan", "/welcome**"}, method=RequestMethod.GET)
	public String viewLogin(ModelMap model) {
		model.addAttribute("greeting", "Hello World from Spring MVC !!!");
		return "iklan/iklan";
	}
}
