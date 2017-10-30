package com.jds.jds.customerapp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OffersController {
	@RequestMapping(value = "/Offers", method = RequestMethod.GET)
	public ModelAndView offers() {
		return new ModelAndView("offers");
	}
}
