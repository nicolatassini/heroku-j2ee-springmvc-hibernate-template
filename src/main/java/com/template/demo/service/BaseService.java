package com.template.demo.service;

import java.util.List;

import com.template.demo.model.BaseEntity;
import com.template.demo.model.User;


/**
 * Generic service - with common methods
 * 
 * @author nicolatassini
 *
 */
public interface BaseService<T extends BaseEntity> {
	
	/**
	 * Save a new object
	 * 
	 * @param object
	 * @param user (created by)
	 * @return
	 */
	public T save(T object, User user);
	
	/**
	 * Update an existing object
	 * 
	 * @param object
	 * @param user (last modified by)
	 * @return
	 */
	public T update(T object, User user);
	
	/**
	 * Delete an object
	 * 
	 * @param object
	 * @return
	 */
	public Boolean delete(T object);
	
	/**
	 * Find by ID
	 * 
	 * @param id
	 * @return
	 */
	public T findById(Object id);
	
	/**
	 * Find all the records
	 * 
	 * @return
	 */
	public List<T> findAll();
	
	/**
	 * Find all the records with pagination
	 * 
	 * @return
	 */	
    public List<T> findAll(int firstResult, int maxResults);
	
	/**
	 * Find by property
	 * 
	 * @param prop
	 * @param val
	 * @return
	 */
	public List<T> findByProperty(String prop, Object val);
	
    /**
     * Find by RSQL query 
     * 
     * @param firstResult
     * @param maxResults
     * @param query
     * @return
     * @throws FirstyRQLBuilderException 
     */
    public List<T> findByQuery(int firstResult, int maxResults, String query) throws Exception;
	
}