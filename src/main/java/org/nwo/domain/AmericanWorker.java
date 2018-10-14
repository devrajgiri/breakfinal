package org.nwo.domain;

import java.io.UnsupportedEncodingException;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Transient;

import org.apache.commons.codec.binary.Base64;

@Entity
public class AmericanWorker {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id" , nullable=false, updatable=false)
	private int id;
	
	private int userId;
	
	private String workerName;
	
	private String website;
	
	private String country;
	
	private String city;
	
	private String location;
	
	private String item1;
	
	private String item2;

	 @Lob
	 @Column(name="imgfile", nullable=false, columnDefinition="mediumblob")
	 private byte[] image;
	
	 @Transient
		private String imgUtility;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}
	
	

	public String getImgUtility() throws UnsupportedEncodingException {
		
		byte[] encodeBase64 = Base64.encodeBase64(getImage());
		 String base64Encoded = new String(encodeBase64, "UTF-8");   		    
		return base64Encoded;
	}

	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getWorkerName() {
		return workerName;
	}

	public void setWorkerName(String workerName) {
		this.workerName = workerName;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getItem1() {
		return item1;
	}

	public void setItem1(String item1) {
		this.item1 = item1;
	}

	public String getItem2() {
		return item2;
	}

	public void setItem2(String item2) {
		this.item2 = item2;
	}
	
	
	
	
}
