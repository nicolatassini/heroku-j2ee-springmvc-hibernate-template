package com.template.demo.dao;

import com.template.demo.model.Brand;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class BrandDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public Brand find(Integer id) {
		return entityManager.find(Brand.class, id);
	}
	@Transactional
	public void delete(Integer id) {
		Brand brand = entityManager.find(Brand.class, id);
		entityManager.remove(brand);
	}
	
	@SuppressWarnings("unchecked")
	public List<Brand> getList() {
		return entityManager.createQuery("select c from Brand c").getResultList();
	}
	
	@Transactional
	public Brand save(Brand brand) {
		if (brand.getId() == null) {
			entityManager.persist(brand);
			return brand;
		} else {
			return entityManager.merge(brand);
		}		
	}	
	
}
