package com.jds.jds.customerapp.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jds.jds.customerapp.Dao.DepartmentDAO;
import com.jds.jds.customerapp.Model.Department;

@Controller
public class DepartmentsController {
	
	@Autowired
	private DepartmentDAO departmentDAO;
	
	
	@RequestMapping(value = "/Departments", method = RequestMethod.GET)
	public ModelAndView departments(@RequestParam("page") int page) {
		ModelAndView mav = new ModelAndView("departments");
		List<Department> listDepartments = (List<Department>) this.departmentDAO.paginateDepartment(page, "departmentId");
		long count = this.departmentDAO.count()/10;
		mav.addObject("count", count);
		mav.addObject("page", page);
		mav.addObject("listDepartments", listDepartments);
		return mav;
	}
}
