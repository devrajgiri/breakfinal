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
public class Nepal {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id" , nullable=false, updatable=false)
	private int id;
	
	private int userId;
	
	private String sellerName;
	
	private String website;
	
	private String country;
	
	private String city;
	
	private String location;
	
	 @Lob
	 @Column(name="imgfile", nullable=false, columnDefinition="mediumblob")
	 private byte[] image;
	 
	
	private String item1;
	
	private String item2;
	
	private String item3;
	
	private String item4;
	
	
	@Transient
	private String imgUtility;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
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

	public String getItem3() {
		return item3;
	}

	public void setItem3(String item3) {
		this.item3 = item3;
	}

	public String getItem4() {
		return item4;
	}

	public void setItem4(String item4) {
		this.item4 = item4;
	}

		
}
