package com.jds.jds.customerapp.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Dao.CategoryDAO;
import com.jds.jds.customerapp.Model.Category;

@Controller
public class MenuController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value = "/Menu", method = RequestMethod.GET)
	public ModelAndView menu(@RequestParam("deptId") int departmentId) {
		ModelAndView mav = new ModelAndView("menu");
		
		List<Category> list = (List<Category>) this.categoryDAO.findByDepartmentId(departmentId);
		mav.addObject("deptId", departmentId);
		mav.addObject("listCategories", list);
		
		return mav;
	}
}
