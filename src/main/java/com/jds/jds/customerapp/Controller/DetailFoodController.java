package com.jds.jds.customerapp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Dao.MenuDepartmentDAO;
import com.jds.jds.customerapp.Model.MenuDepartment;
import com.jds.jds.customerapp.Model.MenuDepartmentId;

@Controller
public class DetailFoodController {
	@Autowired
	private MenuDepartmentDAO menuDepartmentDAO;
	
	
	@RequestMapping(value = "/DetailFood", method = RequestMethod.GET)
	public ModelAndView contact(@RequestParam("foodId") int foodId, @RequestParam("deptId") int departmentId) {
		ModelAndView mav = new ModelAndView("detail-food");
		MenuDepartmentId menuDepartmentId = new MenuDepartmentId(departmentId, foodId);
		MenuDepartment foodDetail = this.menuDepartmentDAO.findById(menuDepartmentId);
		mav.addObject("foodDetail", foodDetail);
		return mav;
	}
}
