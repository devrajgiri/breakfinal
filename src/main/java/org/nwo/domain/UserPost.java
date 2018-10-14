package org.nwo.domain;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class UserPost {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private long Id;
	
	private String post;
	
	private Blob image;
	
	private String visibility;
	
	private String reacts;

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}

	
	
	public String getVisibility() {
		return visibility;
	}

	public void setVisibility(String visibility) {
		this.visibility = visibility;
	}

	public String getReacts() {
		return reacts;
	}

	public void setReacts(String reacts) {
		this.reacts = reacts;
	}
	
	
	
}
