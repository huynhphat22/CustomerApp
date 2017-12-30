package com.jds.jds.customerapp.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Dao.CustomerDAO;
import com.jds.jds.customerapp.Dao.OrderFoodDAO;
import com.jds.jds.customerapp.Model.Customer;
import com.jds.jds.customerapp.Model.OrderFood;

@Controller
public class HistoryController {
	
	@Autowired
	OrderFoodDAO orderFoodDAO;
	
	@Autowired
	CustomerDAO customerDAO;
	
	@RequestMapping(value = "/History", method = RequestMethod.GET)
	public ModelAndView about(HttpServletRequest request, @RequestParam("page") int page) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer == null){
			return new ModelAndView("redirect:/Login");
		}
		customer = this.customerDAO.findById(customer.getCustomerId());
		ModelAndView mav = new ModelAndView("history");
		List<OrderFood> list = (List<OrderFood>) this.orderFoodDAO.paginateOrderFoodByCustomerId(page, "orderId", customer.getCustomerId());
		long count = this.orderFoodDAO.countByCustomerId(customer.getCustomerId());
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("customer", customer);
		
		return mav;
	}
}
