package com.template.demo.model;

import javax.persistence.*;
import java.io.Serializable;


/**
 * Entity to map the User object
 * 
 * @author nicolatassini
 *
 */
@Entity
public class Cart extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 5344160974873744816L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

	@Column
	private Long productTypeId;

	@Column
	private Long userId;

	@Column
    private Long quantity;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Long getProductTypeId() {
		return productTypeId;
	}

	public void setProductTypeId(Long productTypeId) {
		this.productTypeId = productTypeId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}
}
