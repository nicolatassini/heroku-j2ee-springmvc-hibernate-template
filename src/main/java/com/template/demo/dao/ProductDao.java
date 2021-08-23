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
	public List<Product> getList(String name, Integer categoryId, Integer brandId) {
		return entityManager.createQuery("select c from Product c where 1=1 AND (:name = '' OR c.name LIKE '%:name%') AND (:categoryId = -1 OR c.categoryId = :categoryId) AND (:brandId = -1 OR c.brandId = :brandId)")
			.setParameter("name", name)
			.setParameter("categoryId", categoryId)
			.setParameter("brandId", brandId)
			.getResultList();
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
