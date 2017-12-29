package com.jds.jds.customerapp.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Model.Customer;

@Controller
@Scope("session")
public class CartController {
	@RequestMapping(value = "/Cart", method = RequestMethod.GET)
	public ModelAndView about(HttpServletRequest request) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer == null){
			return new ModelAndView("redirect:/Login");
		}
		return new ModelAndView("cart");
	}
}
