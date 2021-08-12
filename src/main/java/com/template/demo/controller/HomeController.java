package com.template.demo.controller;

import com.template.demo.model.Category;
import com.template.demo.dao.CategoryDao;
import java.io.Serializable;
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
		model.addAttribute("controllerMessage",
				"This is the message from the controller!");
		return "home";
	}
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String homecate(Model model) {
		Category category = new Category();
		category.setName("Thể thao");
		categoryDao.save(category);
		return "home";
	}
	

}
