package com.template.demo.dao;

import com.template.demo.model.Category;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class CategoryDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public Category find(Long id) {
		return entityManager.find(Category.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Category> getCategories() {
		return entityManager.createQuery("select c from Category c").getResultList();
	}
	
	@Transactional
	public Category save(Category category) {
		if (category.getId() == null) {
			entityManager.persist(category);
			return category;
		} else {
			return entityManager.merge(category);
		}		
	}	
	
}
