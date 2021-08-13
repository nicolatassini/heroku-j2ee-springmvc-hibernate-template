package com.template.demo.model;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;


/**
 * Entity to map the User object
 * 
 * @author nicolatassini
 *
 */
@Entity
public class Product extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 5344160974873744816L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

	@Column(length=10000)
    private String name;

	@Column(length=10000)
	private String description;

	@Column
	private Long categoryId;

	@Column
	private Long brandId;


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public Long getBrandId() {
		return brandId;
	}

	public void setBrandId(Long brandId) {
		this.brandId = brandId;
	}
}
