package com.jds.jds.customerapp.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Dao.CustomerDAO;
import com.jds.jds.customerapp.Dao.OrderDetailDAO;
import com.jds.jds.customerapp.Dao.OrderFoodDAO;
import com.jds.jds.customerapp.Model.Customer;
import com.jds.jds.customerapp.Model.OrderDetail;
import com.jds.jds.customerapp.Model.OrderFood;

@Controller
public class HistoryController {
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@Autowired
	OrderFoodDAO orderFoodDAO;
	
	@Autowired
	CustomerDAO customerDAO;
	
	@RequestMapping(value = "/History", method = RequestMethod.GET)
	public ModelAndView about(HttpServletRequest request, @RequestParam("page") int page, 
			@RequestParam(value = "orderId", required=false) String oid) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer == null){
			return new ModelAndView("redirect:/Login");
		}
		ModelAndView mav = new ModelAndView("history");
		List<OrderDetail> listDetails = null;
		
		if(oid != null){
			int orderId = 0;
			try{
				orderId = Integer.parseInt(oid);
				listDetails = (List<OrderDetail>) this.orderDetailDAO.findByCustomerIdAndOrderId(orderId, customer.getCustomerId());
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
		}
		customer = this.customerDAO.findById(customer.getCustomerId());
		
		List<OrderFood> list = (List<OrderFood>) this.orderFoodDAO.paginateOrderFoodByCustomerId(page, "orderId", customer.getCustomerId());
		long count = this.orderFoodDAO.countByCustomerId(customer.getCustomerId());
		count = (count % 10 != 0) ? (count / 10) + 1 : count / 10;
		mav.addObject("listDetails", listDetails);
		System.out.println("Duoc ne 3!");
		mav.addObject("list", list);
		mav.addObject("page", page);
		mav.addObject("count", count);
		mav.addObject("customer", customer);
		return mav;
	}
	
	@RequestMapping(value = "/History", method = RequestMethod.POST)
	public ModelAndView changePassword(HttpServletRequest request, @RequestParam("page") int page, 
			@RequestParam(value = "orderId", required=false) String oid,
			@RequestParam("password") String password, @RequestParam("newPassword") String newPassword,
			@RequestParam("reNewPassword") String reNewPassword) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer == null){
			return new ModelAndView("redirect:/Login");
		}
		ModelAndView mav = new ModelAndView("history");
		List<OrderDetail> listDetails = null;
		
		if(oid != null){
			int orderId = 0;
			try{
				orderId = Integer.parseInt(oid);
				listDetails = (List<OrderDetail>) this.orderDetailDAO.findByCustomerIdAndOrderId(orderId, customer.getCustomerId());
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
		}
		customer = this.customerDAO.findById(customer.getCustomerId());
		List<OrderFood> list = (List<OrderFood>) this.orderFoodDAO.paginateOrderFoodByCustomerId(page, "orderId", customer.getCustomerId());
		long count = this.orderFoodDAO.countByCustomerId(customer.getCustomerId());
		mav.addObject("listDetails", listDetails);
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("customer", customer);
		
		
		
		if(!newPassword.equals(reNewPassword) || newPassword.length() < 6){
			mav.addObject("message", "Invalid New Password Or Confirm Password Is Incorrect!");
			return mav;
		}
		
		BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
    	if(!bpe.matches(password, customer.getPassword())){
    		mav.addObject("message", "Password is incorrect!");
			return mav;
    	}
    	
		customer.setPassword(bpe.encode(newPassword));
		mav.addObject("page", page);
		this.customerDAO.update(customer);
		mav.addObject("message", "Change Password successfully");
		return mav;
	}
}
