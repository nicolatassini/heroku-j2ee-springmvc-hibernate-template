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
public class BillDetail extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 5344160974873744816L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

	@Column
	private Long billId;

	@Column
	private Long productTypeId;

	@Column
	private Long quantity;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Long getBillId() {
		return billId;
	}

	public void setBillId(Long billId) {
		this.billId = billId;
	}

	public Long getProductTypeId() {
		return productTypeId;
	}

	public void setProductTypeId(Long productTypeId) {
		this.productTypeId = productTypeId;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}
}
