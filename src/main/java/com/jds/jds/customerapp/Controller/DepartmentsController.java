package com.jds.jds.customerapp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DepartmentsController {
	@RequestMapping(value = "/Departments", method = RequestMethod.GET)
	public ModelAndView departments() {
		return new ModelAndView("departments");
	}
}
