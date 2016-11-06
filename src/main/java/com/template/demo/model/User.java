package com.template.demo.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonProperty;


/**
 * Entity to map the User object
 * 
 * @author nicolatassini
 *
 */
@Entity
@Table(name="NT_USER")
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.NONE, getterVisibility = JsonAutoDetect.Visibility.NONE) 
public class User extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 5344160974873744816L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
	
	@Column
    private String firstName;

	@Column
    private String lastName;
    
	@Column
    private String email;
    
	@Column(length=10000)
    private String bio;
    
	@Column(length=10000)
    private String headline;
    
	@Column
    private Integer numConnections;
    
	@Column
    private String industry;
    
	@Column(length=10000)
    private String summary;
    
	@Column
    private String linkedinId;
    
	@Column
    private String linkedinPictureUrl;
    
	@Column
    private String linkedinPublicProfileUrl;
    
	@Column
    private Date birthday;
    
	@Column
    private String locationName;
    
	@Column
    private String locationCountryCode;
	
	
    /**
     * 
     */
    public User() {
    }

	/**
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	/**
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	/**
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + "]";
	}
    
	@JsonProperty
    public String getHeadline() {
		return headline;
	}

	public void setHeadline(String headline) {
		this.headline = headline;
	}

	@JsonProperty
	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	@JsonProperty
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

	@JsonProperty
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

	@JsonProperty
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the numConnections
	 */
	@JsonProperty
	public Integer getNumConnections() {
		return numConnections;
	}

	/**
	 * @param numConnections the numConnections to set
	 */
	public void setNumConnections(Integer numConnections) {
		this.numConnections = numConnections;
	}

	/**
	 * @return the industry
	 */
	@JsonProperty
	public String getIndustry() {
		return industry;
	}

	/**
	 * @param industry the industry to set
	 */
	public void setIndustry(String industry) {
		this.industry = industry;
	}

	/**
	 * @return the summary
	 */
	@JsonProperty
	public String getSummary() {
		return summary;
	}

	/**
	 * @param summary the summary to set
	 */
	public void setSummary(String summary) {
		this.summary = summary;
	}

	/**
	 * @return the linkedinId
	 */
	@JsonProperty
	public String getLinkedinId() {
		return linkedinId;
	}

	/**
	 * @param linkedinId the linkedinId to set
	 */
	public void setLinkedinId(String linkedinId) {
		this.linkedinId = linkedinId;
	}

	/**
	 * @return the linkedinPictureUrl
	 */
	@JsonProperty
	public String getLinkedinPictureUrl() {
		return linkedinPictureUrl;
	}

	/**
	 * @param linkedinPictureUrl the linkedinPictureUrl to set
	 */
	public void setLinkedinPictureUrl(String linkedinPictureUrl) {
		this.linkedinPictureUrl = linkedinPictureUrl;
	}

	/**
	 * @return the birthday
	 */
	@JsonProperty
	public Date getBirthday() {
		return birthday;
	}

	/**
	 * @param birthday the birthday to set
	 */
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	/**
	 * @return the locationName
	 */
	@JsonProperty
	public String getLocationName() {
		return locationName;
	}

	/**
	 * @param locationName the locationName to set
	 */
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	/**
	 * @return the locationCountryCode
	 */
	public String getLocationCountryCode() {
		return locationCountryCode;
	}

	/**
	 * @param locationCountryCode the locationCountryCode to set
	 */
	public void setLocationCountryCode(String locationCountryCode) {
		this.locationCountryCode = locationCountryCode;
	}

	/**
	 * @return the linkedinPublicProfileUrl
	 */
	@JsonProperty
	public String getLinkedinPublicProfileUrl() {
		return linkedinPublicProfileUrl;
	}

	/**
	 * @param linkedinPublicProfileUrl the linkedinPublicProfileUrl to set
	 */
	public void setLinkedinPublicProfileUrl(String linkedinPublicProfileUrl) {
		this.linkedinPublicProfileUrl = linkedinPublicProfileUrl;
	}

	/**
	 * @return the bio
	 */
	@JsonProperty
	public String getBio() {
		return bio;
	}

	/**
	 * @param bio the bio to set
	 */
	public void setBio(String bio) {
		this.bio = bio;
	}

}