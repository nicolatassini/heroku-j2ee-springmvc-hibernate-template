package com.template.demo.controller;

import com.template.demo.model.Category;
import com.template.demo.dao.CategoryDao;
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
@RequestMapping("/admin")
public class BackendHomeController extends BaseController implements Serializable {

	private static final long serialVersionUID = 1324281204513252404L;

	private static final Logger logger = LoggerFactory
			.getLogger(BackendHomeController.class);
	
	@Autowired
	private CategoryDao categoryDao;

	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("====> [Backend] Home page!");
		return "backend/backend";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Model model) {
		logger.info("====> [Backend] Category page!!");
		List<Category> categoryList = categoryDao.getCategories();
		model.addAttribute("categoryList", categoryList);
		return "backend/category";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/category/{id}", method = RequestMethod.GET)
	public String categoryDetail(Model model, @PathVariable String id) {
		logger.info("====> [Backend] Category detail page!!");
		Category category = categoryDao.find(id);
		model.addAttribute("category", category);
		return "backend/categoryDetail";
	}
}
