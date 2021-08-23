package com.template.demo.dao;

import com.template.demo.model.Product;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ProductDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public Product find(Integer id) {
		return entityManager.find(Product.class, id);
	}
	@Transactional
	public void delete(Integer id) {
		Product product = entityManager.find(Product.class, id);
		entityManager.remove(product);
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> getList() {
		return entityManager.createQuery("select c from Product c").getResultList();
	}
	
	@Transactional
	public Product save(Product product) {
		if (product.getId() == null) {
			entityManager.persist(product);
			return product;
		} else {
			return entityManager.merge(product);
		}		
	}	
	
}
