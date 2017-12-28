package com.jds.jds.customerapp.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Dao.CustomerDAO;
import com.jds.jds.customerapp.Model.Customer;

@Controller
public class SignUpController {
	
	@Autowired
	private CustomerDAO customerDAO;
	@RequestMapping(value = "/SignUp", method = RequestMethod.GET)
	public ModelAndView signUp() {
		ModelAndView mav = new ModelAndView("sign-up");
		mav.addObject("customerForm", new Customer());
		return mav;
	}
	
	@RequestMapping(value = "/SignUp", method = RequestMethod.POST)
	public ModelAndView doSignUp(@ModelAttribute("customerForm") Customer customer, @RequestParam("rePassword") String rePassword){
		
		ModelAndView mav =  new ModelAndView("sign-up");
		List<String> errors = new ArrayList<String>();
		customer.setCustomerName(customer.getCustomerName().trim());
		customer.setPhoneNumber(customer.getPhoneNumber().trim());
		try{
			Integer.parseInt(customer.getPhoneNumber());
		}
		catch(Exception e){
			errors.add("Phone Number is incorrect!");
		}
		
		if(customer.getPhoneNumber().length() < 10 ||customer.getPhoneNumber().length() > 11 ){
			errors.add("Phone Number must have about 10 to 11 digits");
		}
		
		if(customer.getPassword().length() < 6){
			errors.add("Password must have at least 6 characters");
		}
		
		if(!customer.getPassword().equals(rePassword)){
			errors.add("Confirm password does not match!");
		}
		if(this.customerDAO.findByPhoneNumber(customer.getPhoneNumber()) != null){
			errors.add("Phone Number was exist!");
		}
		
		if(!errors.isEmpty()){
			mav.addObject("errors", errors);
		}
		else{
			String password = new BCryptPasswordEncoder().encode(customer.getPassword());
			customer.setPassword(password);
			customer.setCustomerType("NORMAL");
			customer.setFlags(true);
			this.customerDAO.save(customer);
			mav.addObject("message", "Sign Up Successfully");
			mav.addObject("customerForm", new Customer());
		}
		return mav; 
	}
}


