package com.bean;

public class user {
	
	private String firstname;
	private String lastname;
	private String companyname;
	private String city;
	private String country;
	
	
	public user() {
		// TODO Auto-generated constructor stub
	}
	
	public user(String firstname, String lastname, String companyname, String city, String country) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.companyname = companyname;
		this.city = city;
		this.country = country;
	}
	
	
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
	
}
