/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jds.jds.customerapp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HuynhTanPhat
 */
@Controller
public class HomeController {
    @RequestMapping(value = "/Home", method = RequestMethod.GET)
    public ModelAndView init(){
        return new ModelAndView("home");
    }
    
    @RequestMapping(value = "/Menu", method = RequestMethod.GET)
    public ModelAndView menu(){
        return new ModelAndView("menu");
    }
    
    @RequestMapping(value = "/Foods", method = RequestMethod.GET)
    public ModelAndView foods(){
        return new ModelAndView("foods");
    }
    
    @RequestMapping(value = "/Login", method = RequestMethod.GET)
    public ModelAndView login(){
        return new ModelAndView("login");
    }
    
    @RequestMapping(value = "/SignUp", method = RequestMethod.GET)
    public ModelAndView signUp(){
        return new ModelAndView("sign-up");
    }
    
    @RequestMapping(value = "/Contact", method = RequestMethod.GET)
    public ModelAndView contact(){
        return new ModelAndView("contact");
    }
    
    @RequestMapping(value = "/Departments", method = RequestMethod.GET)
    public ModelAndView departments(){
        return new ModelAndView("departments");
    }
    
    @RequestMapping(value = "/About", method = RequestMethod.GET)
    public ModelAndView about(){
        return new ModelAndView("about");
    }
}


