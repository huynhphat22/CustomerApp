package com.jds.jds.customerapp.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Dao.FoodDAO;
import com.jds.jds.customerapp.Dao.MenuDepartmentDAO;
import com.jds.jds.customerapp.Model.MenuDepartment;


@Controller
public class FoodsController {
	
	@Autowired
	private MenuDepartmentDAO menuDepartmentDAO;
	@RequestMapping(value = "/Foods", method = RequestMethod.GET)
    public ModelAndView foods(@RequestParam("deptId") int departmentId, @RequestParam("catId") int categoryId,
    		@RequestParam("page") int page){
		ModelAndView mav = new ModelAndView("foods");
		List<MenuDepartment> listFoods = (List<MenuDepartment>) this.menuDepartmentDAO.findByDepartmentIdAndCategoryId(departmentId, categoryId, page, "id");
		long count  = this.menuDepartmentDAO.countByDepartmentIdAndCategoryId(departmentId, categoryId);
		count = (count % 9 != 0) ? (count / 9) + 1 : count / 9;
		mav.addObject("listFoods", listFoods);
		mav.addObject("deptId", departmentId);
		mav.addObject("catId", categoryId);
		mav.addObject("count", count);
		mav.addObject("page", page);
        return mav;
    }
}
