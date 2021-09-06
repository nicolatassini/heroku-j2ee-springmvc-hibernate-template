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
		Product p = entityManager.find(Product.class, id);
		if(null != p.getBrandId()){
				Brand brand = entityManager.find(Brand.class, p.getBrandId());
				p.setBrand(brand.getName());
			}
			if(null != p.getCategoryId()){
				Category category = entityManager.find(Category.class, p.getCategoryId());
				p.setCategory(category.getName());
			}
			List<Image> imageList = entityManager.createQuery("select c from Image c where c.productId = :productId")
				.setParameter("productId", p.getId())
				.getResultList();
								      
			if(imageList.size() > 0){
				p.setImage(imageList.get(0).getLink());
			}
		return p;
	}
	
	public ProductType findType(Integer id) {
		ProductType p = entityManager.find(ProductType.class, id);
			List<Image> imageList = entityManager.createQuery("select c from Image c where c.productTypeId = :productTypeId")
				.setParameter("productTypeId", p.getId())
				.getResultList();
								      
			if(imageList.size() > 0){
				p.setImage(imageList.get(0).getLink());
			}
		return p;
	}
	
	
	
	@Transactional
	public void deleteType(Integer id) {
		ProductType productType = entityManager.find(ProductType.class, id);
		entityManager.remove(productType);
		List<Image> imageList = entityManager.createQuery("select c from Image c where c.productTypeId = :productTypeId")
				.setParameter("productTypeId", productType.getId())
				.getResultList();
								      
		if(imageList.size() > 0){
			Image image = imageList.get(0);
			entityManager.remove(image);
		}
	}
	
	@Transactional
	public void delete(Integer id) {
		Product product = entityManager.find(Product.class, id);
		entityManager.remove(product);
		List<Image> imageList = entityManager.createQuery("select c from Image c where c.productId = :productId")
				.setParameter("productId", product.getId())
				.getResultList();
								      
		if(imageList.size() > 0){
			Image image = imageList.get(0);
			entityManager.remove(image);
		}
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
			List<Image> imageList = entityManager.createQuery("select c from Image c where c.productId = :productId")
				.setParameter("productId", p.getId())
				.getResultList();
								      
			if(imageList.size() > 0){
				p.setImage(imageList.get(0).getLink());
			}				
		}
		return productList;
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> getList(String name, Integer categoryId, Integer brandId, Integer first, Integer record) {
		
		List<Product> productList = entityManager.createQuery("select c from Product c where 1=1 AND (:name = '' OR lower(c.name) like lower(concat('%', :name,'%'))) AND (:categoryId = -1 OR c.categoryId = :categoryId) AND (:brandId = -1 OR c.brandId = :brandId) ORDER BY c.lastModifiedDate DESC, c.createdDate DESC")
			.setParameter("name", name)
			.setParameter("categoryId", categoryId)
			.setParameter("brandId", brandId)
			.setMaxResults(record)
			.setFirstResult(first == null? 0 : first);
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
			List<Image> imageList = entityManager.createQuery("select c from Image c where c.productId = :productId")
				.setParameter("productId", p.getId())
				.getResultList();
								      
			if(imageList.size() > 0){
				p.setImage(imageList.get(0).getLink());
			}				
		}
		return productList;
	}
	
	@SuppressWarnings("unchecked")
	public List<ProductType> getAllType(Integer productId) {
		List<ProductType> productTypeList = entityManager.createQuery("select c from ProductType c where c.productId = :productId")
				.setParameter("productId", productId)
				.getResultList();
		for(ProductType p: productTypeList){
			List<Image> imageList = entityManager.createQuery("select c from Image c where c.productTypeId = :productTypeId")
				.setParameter("productTypeId", p.getId())
				.getResultList();
								      
			if(imageList.size() > 0){
				p.setImage(imageList.get(0).getLink());
			}				
		}
		return productTypeList;
	}
	
	@Transactional
	public Product save(Product product) {
		if (product.getId() == null) {
			entityManager.persist(product);
			entityManager.flush();
			Image image = new Image();
			image.setProductId(product.getId());
			image.setLink(product.getImage());
			entityManager.persist(image);
			return product;
		} else {
			
			List<Image> imageList = entityManager.createQuery("select c from Image c where c.productId = :productId")
				.setParameter("productId", product.getId())
				.getResultList();
								      
			if(imageList.size() > 0){
				Image image = imageList.get(0);
				image.setLink(product.getImage());
				entityManager.merge(image);
			}
			
			return entityManager.merge(product);
		}		
	}
	
	@Transactional
	public ProductType saveType(ProductType productType) {
		if (productType.getId() == null) {
			entityManager.persist(productType);
			entityManager.flush();
			Image image = new Image();
			image.setProductTypeId(productType.getId());
			image.setLink(productType.getImage());
			entityManager.persist(image);
			return productType;
		} else {
			
			List<Image> imageList = entityManager.createQuery("select c from Image c where c.productTypeId = :productTypeId")
				.setParameter("productTypeId", productType.getId())
				.getResultList();
								      
			if(imageList.size() > 0){
				Image image = imageList.get(0);
				image.setLink(productType.getImage());
				entityManager.merge(image);
			}
			
			return entityManager.merge(productType);
		}		
	}
	
}
