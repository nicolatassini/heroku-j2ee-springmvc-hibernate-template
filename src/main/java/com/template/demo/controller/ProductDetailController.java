package com.template.demo.controller;

import com.template.demo.dao.CategoryDao;
import com.template.demo.model.Category;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.Serializable;
import java.util.List;

/**
 * Sample controller for going to the home page with a message
 */
@Controller
public class ProductDetailController extends BaseController implements Serializable {

	private static final long serialVersionUID = 1324281204513252404L;

	private static final Logger logger = LoggerFactory
			.getLogger(ProductDetailController.class);

	@Autowired
	private CategoryDao categoryDao;
	/**
	 * Selects the home page and populates the model with a message
	 */
	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String home(Model model, @PathVariable(required = false) Long id) {
		logger.info("product!");
		List<Category> categoryList = categoryDao.getCategories();
		model.addAttribute("categoryList", categoryList);
		return "detail";
	}

}
