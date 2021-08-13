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
public class ProductType extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 5344160974873744816L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

	@Column
	private Long productId;

	@Column(length=10000)
    private String productTypeName;

	@Column
    private Long stock;

	@Column
    private BigDecimal price;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getProductTypeName() {
		return productTypeName;
	}

	public void setProductTypeName(String productTypeName) {
		this.productTypeName = productTypeName;
	}

	public Long getStock() {
		return stock;
	}

	public void setStock(Long stock) {
		this.stock = stock;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
}
