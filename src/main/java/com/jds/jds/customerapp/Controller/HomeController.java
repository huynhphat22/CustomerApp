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
}
