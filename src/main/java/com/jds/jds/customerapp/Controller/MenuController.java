package com.jds.jds.customerapp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController {
	@RequestMapping(value = "/Menu", method = RequestMethod.GET)
	public ModelAndView menu() {
		return new ModelAndView("menu");
	}
}
