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
public class SearchFoodsController {
	
	@Autowired
	private MenuDepartmentDAO menuDepartmentDAO;
	@RequestMapping(value = "/SearchFoods", method = RequestMethod.GET)
    public ModelAndView foods(@RequestParam("deptId") int departmentId, @RequestParam("q") String q,
    		@RequestParam("page") int page){
		ModelAndView mav = new ModelAndView("searchFoods");
		List<MenuDepartment> listFoods = null;
		long count = 1;
		try{
			int price = Integer.parseInt(q);
			listFoods = (List<MenuDepartment>) this.menuDepartmentDAO.searchByPriceInRange(departmentId, price, page);
			count = this.menuDepartmentDAO.countBySearchPriceInRange(departmentId, price);
		}
		catch(Exception e){
			listFoods = (List<MenuDepartment>) this.menuDepartmentDAO.searchByFoodName(departmentId, q, page);
			count = this.menuDepartmentDAO.countBySearchFoodName(departmentId, q);
		}
		
		mav.addObject("listFoods", listFoods);
		mav.addObject("deptId", departmentId);
		mav.addObject("count", count);
		mav.addObject("page", page);
		mav.addObject("q", q);
        return mav;
    }
}
