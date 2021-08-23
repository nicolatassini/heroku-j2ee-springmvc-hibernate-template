package com.template.demo.controller;

import com.template.demo.model.Category;
import com.template.demo.dao.CategoryDao;
import com.template.demo.model.Brand;
import com.template.demo.dao.BrandDao;
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
	
	@Autowired
	private BrandDao brandDao;

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
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product(Model model) {
		logger.info("====> [Backend] Brand page!!");
		List<Brand> brandList = brandDao.getList();
		model.addAttribute("brandList", brandList);
		model.addAttribute("productActive", "active");
		return "backend/product";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/brand/add", method = RequestMethod.GET)
	public String brandCreate(Model model) {
		logger.info("====> [Backend] Create brand page!!");
		model.addAttribute("brandActive", "active");
		return "backend/brand-create";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/brand", method = RequestMethod.GET)
	public String brand(Model model) {
		logger.info("====> [Backend] Brand page!!");
		List<Brand> brandList = brandDao.getList();
		model.addAttribute("brandList", brandList);
		model.addAttribute("brandActive", "active");
		return "backend/brand";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/brand/{id}", method = RequestMethod.GET)
	public String brandDetail(Model model, @PathVariable Integer id) {
		logger.info("====> [Backend] Brand detail page!!");
		Brand brand = brandDao.find(id);
		model.addAttribute("brand", brand);
		model.addAttribute("brandActive", "active");
		return "backend/brand-detail";
	}
	
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/category/add", method = RequestMethod.GET)
	public String categoryCreate(Model model) {
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
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/api/brand", method = RequestMethod.PUT, produces="application/json")
	@ResponseBody
	public String updateBrand(@RequestParam(required=false) Integer id, @RequestParam String name ) {
		logger.info("====> [Backend] Brand update: " + id + name);
		Brand brand = new Brand();
		brand.setId(id);
		brand.setName(name);
		brandDao.save(brand);
		return "success";
	}
	
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/api/brand/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public String deleteBrand(Model model, @PathVariable Integer id) {
		logger.info("====> [Backend] Brand delete: " + id);
		brandDao.delete(id);
		return "success";
	}
	
}
