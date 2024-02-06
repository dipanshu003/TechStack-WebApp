package com.tech.stack.entities;

public class Message {

	private String cotent;
	private String type;
	private String cssClass;
	
	public Message()
	{
		
	}
	
	public Message(String cotent, String type, String cssClass) {
		super();
		this.cotent = cotent;
		this.type = type;
		this.cssClass = cssClass;
	}

	public String getCotent() {
		return cotent;
	}

	public void setCotent(String cotent) {
		this.cotent = cotent;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCssClass() {
		return cssClass;
	}

	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}
	
	
	
}
