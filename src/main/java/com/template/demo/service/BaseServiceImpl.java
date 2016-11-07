package com.template.demo.service;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.template.demo.model.BaseEntity;
import com.template.demo.model.User;

//import cz.jirutka.rsql.hibernate.RSQL2CriteriaConverter;
//import cz.jirutka.rsql.hibernate.RSQL2HibernateFactory;

/**
 * @author nicolatassini
 *
 */
@Service
@Repository
public class BaseServiceImpl<T extends BaseEntity> implements BaseService<T> {
	
	private static final Logger logger = LoggerFactory.getLogger(BaseServiceImpl.class);
	
	@PersistenceContext private EntityManager entityManager;
	@PersistenceUnit private EntityManagerFactory entityManagerFactory;
	
    protected Class type;
    protected String entity;
    
    /**
     * Find by ID
     */
    @SuppressWarnings("unchecked")
    @Transactional(readOnly=true)
    public T findById(Object id) {
    	return (T) entityManager.find(type, id);
    }

    /**
     * Delete instance
     */
    @Transactional()
    public Boolean delete(T object) {
    	entityManager.remove(object);
        return true;
    }

    /**
     * Find All
     */
    @SuppressWarnings("unchecked")
    @Transactional(readOnly=true)
    public List<T> findAll() {
        Query query = entityManager.createQuery("select x from " + getEntityName() + " x");
        return (List<T>) query.getResultList();
    }
    
    /**
     * Find All
     */
    @SuppressWarnings("unchecked")
    @Transactional(readOnly=true)
    public List<T> findAll(int firstResult, int maxResults) {
        Query query = entityManager.createQuery("select x from " + getEntityName() + " x");
        query.setFirstResult(firstResult);
        query.setMaxResults(maxResults);
        return (List<T>) query.getResultList();
    }
    
    /**
     * Find by property
     */
    @SuppressWarnings("unchecked")
    @Transactional(readOnly=true)
    public List<T> findByProperty(String prop, Object val) {
        Query query = entityManager.createQuery("select x from " + getEntityName() + " x where x." + prop + " = ?1");
        query.setParameter(1, val);
        return (List<T>) query.getResultList();
    }

    /**
     * Find by RSQL query
     * @throws FirstyRQLBuilderException 
     */
    @SuppressWarnings("unchecked")
    @Transactional(readOnly=true)
    public List<T> findByQuery(int firstResult, int maxResults, String query) {
    	// if(StringUtils.isBlank(query)) {
    	// 	return this.findAll(firstResult,maxResults);
    	// } else {
	    // 	try {
	    // 		RSQL2HibernateFactory factory = RSQL2HibernateFactory.getInstance();
	    // 		factory.setSessionFactory(entityManagerFactory.unwrap(SessionFactory.class));
	
	    // 		RSQL2CriteriaConverter converter = factory.createConverter();
	    // 		DetachedCriteria detached = converter.createCriteria(query, type);
	
	    // 		Criteria criteria = detached.getExecutableCriteria(entityManager.unwrap(Session.class));
	    // 		criteria.setFirstResult(firstResult);
	    // 		criteria.setMaxResults(maxResults);
	
	    // 		return criteria.list();
	    // 	} catch(Exception e) {
	    // 		throw new BaseException("Something wrong in building RQL query", e, logger);
	    // 	}
    	// }
        // @TODO Fix this
        return null;
    }
    
    /**
     * Save instance
     */
    @Transactional()
    public T save(T object, User user) {
    	object.setCreatedDate(new Date());
    	object.setCreatedBy(user);
        entityManager.persist(object);
        return object;
    }

    /**
     * Update instance
     */
    @Transactional()
    public T update(T object, User user) {
    	object.setLastModifiedDate(new Date());
    	object.setLastModifiedBy(user);
    	return entityManager.merge(object);
    }
    
    @SuppressWarnings("rawtypes")
    public Class getType() {
        return type;
    }

    @SuppressWarnings("rawtypes") 
    public void setType(Class type) {
        this.type = type;
    }
    
    @SuppressWarnings("unchecked")
    public String getEntityName() {
    	if(entity == null) {
    		logger.error("Type is " + type);
    		Entity entityAnn = (Entity) type.getAnnotation(Entity.class);
            
            if (entityAnn != null && !entityAnn.name().equals("")) {
            	entity = entityAnn.name();
            } else {
                entity = type.getSimpleName();
            }
        }
        
        return entity;
    }
    
}