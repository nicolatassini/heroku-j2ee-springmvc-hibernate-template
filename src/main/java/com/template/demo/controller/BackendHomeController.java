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
import org.springframework.http.*;
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
	@RequestMapping(value = "/category/add", method = RequestMethod.GET)
	public String categoryDetail(Model model) {
		logger.info("====> [Backend] Create category page!!");
		model.addAttribute("categoryActive", "active");
		return "backend/category-create";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Model model) {
		logger.info("====> [Backend] Category page!!");
		List<Category> categoryList = categoryDao.getCategories();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("categoryActive", "active");
		return "backend/category";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/category/{id}", method = RequestMethod.GET)
	public String categoryDetail(Model model, @PathVariable Integer id) {
		logger.info("====> [Backend] Category detail page!!");
		Category category = categoryDao.find(id);
		model.addAttribute("category", category);
		model.addAttribute("categoryActive", "active");
		return "backend/category-detail";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/api/category", method = RequestMethod.PUT, produces="application/json")
	@ResponseBody
	public String updateCategory(@RequestParam(required=false) Integer id, @RequestParam String name ) {
		logger.info("====> [Backend] Category update: " + id + name);
		Category category = new Category();
		category.setId(id);
		category.setName(name);
		categoryDao.save(category);
		return "success";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/api/category/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public String deleteCategory(Model model, @PathVariable Integer id) {
		logger.info("====> [Backend] Category delete: " + id);
		categoryDao.delete(id);
		return "success";
	}
	
}
