package com.jds.jds.customerapp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutController {
	@RequestMapping(value = "/About", method = RequestMethod.GET)
	public ModelAndView about() {
		return new ModelAndView("about");
	}
}
