package com.template.demo.model;

import java.util.Date;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Baseline for all the entities
 * 
 * @author nicolatassini
 *
 */
@MappedSuperclass
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.NONE, getterVisibility = JsonAutoDetect.Visibility.NONE) 
public abstract class BaseEntity {
	
	/**
	 * When the record has been created
	 */
	private Date createdDate;
	
	/**
	 * User that has created the record
	 */
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CREATED_BY_USER_ID")
	private User createdBy;
	
	/**
	 * When the record has been last modified
	 */
	private Date lastModifiedDate;
	
	/**
	 * User that has last modified the record
	 */
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "LAST_MODIFIED_BY_USER_ID")
	private User lastModifiedBy;
	
	/**
	 * Default Constructor
	 */
	public BaseEntity() {}
	
	/**
	 * Utils to return only created by userId
	 * @return
	 */
	@JsonProperty
	public Integer getCreatedByUserId() {
		return (createdBy != null) ? createdBy.getId() : null;
	}

	/**
	 * Utils to return only last modified by userId
	 * @return
	 */
	@JsonProperty
	public Integer getLastModifiedByUserId() {
		return (lastModifiedBy != null) ? lastModifiedBy.getId() : null;
	}
	
	/**
	 * @return the createdDate
	 */
	@JsonProperty
	public Date getCreatedDate() {
		return createdDate;
	}

	/**
	 * @param createdDate the createdDate to set
	 */
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	/**
	 * @return the createdBy
	 */
	public User getCreatedBy() {
		return createdBy;
	}
	
	/**
	 * @param createdBy the createdBy to set
	 */
	public void setCreatedBy(User createdBy) {
		this.createdBy = createdBy;
	}

	/**
	 * @return the lastModifiedDate
	 */
	@JsonProperty
	public Date getLastModifiedDate() {
		return lastModifiedDate;
	}

	/**
	 * @param lastModifiedDate the lastModifiedDate to set
	 */
	public void setLastModifiedDate(Date lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}

	/**
	 * @return the lastModifiedBy
	 */
	public User getLastModifiedBy() {
		return lastModifiedBy;
	}

	/**
	 * @param lastModifiedBy the lastModifiedBy to set
	 */
	public void setLastModifiedBy(User lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}
	
}