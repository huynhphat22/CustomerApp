package com.jds.jds.customerapp.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Dao.FoodDAO;
import com.jds.jds.customerapp.Model.Food;


@Controller
public class FoodsController {
	
	@Autowired
	private FoodDAO foodDAO;
	@RequestMapping(value = "/Foods", method = RequestMethod.GET)
    public ModelAndView foods(@RequestParam("deptId") int departmentId, @RequestParam("catId") int categoryId,
    		@RequestParam("page") int page){
		ModelAndView mav = new ModelAndView("foods");
		Map<Food, Integer> listFoods = (Map<Food, Integer>) this.foodDAO.findByDepartmentIdAndCategoryId(departmentId, categoryId, page, "foodName");
		mav.addObject("listFoods", listFoods);
        return mav;
    }
}
