package com.tech.stack.entities;

import java.sql.Timestamp;

public class User {
	private int id;
	private String username;
	private String pass;
	private String email;
	private String gender;
	private String about;
	private Timestamp dateTime;

	public User(int id, String username, String pass, String email, String gender, String about, Timestamp dateTime) {
		super();
		this.id = id;
		this.username = username;
		this.pass = pass;
		this.email = email;
		this.gender = gender;
		this.about = about;
		this.dateTime = dateTime;
	}
	

	public User() {

	}

	public User(String username, String pass, String email, String gender, String about) {
		super();
		this.username = username;
		this.pass = pass;
		this.email = email;
		this.gender = gender;
		this.about = about;
	}

//	getter and setter
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public Timestamp getDateTime() {
		return dateTime;
	}

	public void setDateTime(Timestamp dateTime) {
		this.dateTime = dateTime;
	}



	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", pass=" + pass + ", email=" + email + ", gender="
				+ gender + ", about=" + about + ", dateTime=" + dateTime + "]";
	}

	
}
