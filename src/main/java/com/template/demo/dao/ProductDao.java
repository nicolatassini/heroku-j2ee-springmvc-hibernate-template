package com.template.demo.dao;

import com.template.demo.model.*;
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
		
		List<Product> productList = entityManager.createQuery("select c from Product c where 1=1 AND (:name = '' OR lower(c.name) like lower(concat('%', :name,'%'))) AND (:categoryId = -1 OR c.categoryId = :categoryId) AND (:brandId = -1 OR c.brandId = :brandId)")
			.setParameter("name", name)
			.setParameter("categoryId", categoryId)
			.setParameter("brandId", brandId)
			.getResultList();
		
		for(Product p: productList){
			if(null != p.getBrandId()){
				Brand brand = entityManager.find(Brand.class, p.getBrandId());
				p.setBrand(brand.getName());
			}
			if(null != p.getCategoryId()){
				Category category = entityManager.find(Category.class, p.getCategoryId());
				p.setCategory(category.getName());
			}
			Image image = entityManager.createQuery("select c from Image c where c.productId = :productId)
				.setParameter("productId", categoryId)
				.getSingleResult();
			
			p.setCategory(image.getLink());					
		}
		return productList;
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
