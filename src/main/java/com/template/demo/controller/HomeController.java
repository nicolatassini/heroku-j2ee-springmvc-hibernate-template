package com.template.demo.controller;

import com.template.demo.model.*;
import com.template.demo.dao.*;
import java.io.Serializable;
import java.util.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.*;
/**
 * Sample controller for going to the home page with a message
 */
@Controller
public class HomeController extends BaseController implements Serializable {

	private static final long serialVersionUID = 1324281204513252404L;

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	private ProductDao productDao;

	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, 
			   @RequestParam(defaultValue = "-1") Integer categoryId, 
			   @RequestParam(defaultValue = "") String name,
			   @RequestParam(defaultValue = "-1") Integer brandId
			   ) {
		logger.info("Welcome home!");
		
		List<Category> categoryList = categoryDao.getCategories();
		model.addAttribute("categoryList", categoryList);
		
		List<Product> productNewList = productDao.getList(name,categoryId, brandId, 12);
		model.addAttribute("productNewList", productNewList);
		
		return "home";
	}
}
