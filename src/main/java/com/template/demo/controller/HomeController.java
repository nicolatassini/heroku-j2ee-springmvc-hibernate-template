package com.template.demo.controller;

import com.template.demo.model.Category;
import com.template.demo.dao.CategoryDao;
import java.io.Serializable;
import java.util.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("Welcome home!");
		List<Category> categoryList = categoryDao.getCategories();
		for (Category category : categoryList) {
			System.out.println(category.getName());
		}
		model.addAttribute("categoryList", categoryList);
		return "home";
	}
	
	@RequestMapping(value = "/fake/cate", method = RequestMethod.GET)
	public String fakeCate(Model model) {
		categoryDao.save(new Category(1, "Bánh ngọt"));
		categoryDao.save(new Category(2, "Đồ gia dụng"));
		categoryDao.save(new Category(3, "Quần áo"));
		categoryDao.save(new Category(4, "Chợ"));
		return "home";
	}
	

}
