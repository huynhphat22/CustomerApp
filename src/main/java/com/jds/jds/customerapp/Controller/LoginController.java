package com.jds.jds.customerapp.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Dao.CustomerDAO;
import com.jds.jds.customerapp.Model.Customer;

@Controller
public class LoginController {

	@Autowired
	CustomerDAO customerDAO;
    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public ModelAndView loginPage(){
        return new ModelAndView("login");
    }
    
    @RequestMapping(value = "/Logout", method = RequestMethod.GET)
    public ModelAndView logoutPage(HttpServletRequest request){
    	HttpSession session = request.getSession(false);
    	if (session != null) {
    	    session.invalidate();
    	}
        return new ModelAndView("redirect:/Home");
    }
    
    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    public ModelAndView login(HttpServletRequest request, @RequestParam("phoneNumber") String phoneNumber, @RequestParam("password") String password){
    	List<String> errors = new ArrayList<String>();
    	System.out.println("phoneNumber: " + phoneNumber);
    	System.out.println("password: " + password);
    	Customer customer = this.customerDAO.findByPhoneNumber(phoneNumber); 
    	if(customer == null){
    		errors.add("Phone Number is incorrect!");
    		ModelAndView mav = new ModelAndView("login");
    		mav.addObject("errors", errors);
    		return mav;
    	}
    	
    	System.out.println("password: " + password);
    	BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();
    	if(!bpe.matches(password, customer.getPassword())){
    		errors.add("Phone Number or password was wrong!");
    	}
    	System.out.println("password: " + password);
    	if(!errors.isEmpty()){
    		ModelAndView mav = new ModelAndView("login");
    		mav.addObject("errors", errors);
    		return mav;
    	}
    	else{
    		request.getSession().setAttribute("customer", customer);
    		return new ModelAndView("redirect:/Home");
    	}
    }
}
