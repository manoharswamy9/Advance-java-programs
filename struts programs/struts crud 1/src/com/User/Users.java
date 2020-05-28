package com.User;

public class Users {

String firstname,lastname,username, password,companyname,city, country;
	
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

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
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

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

	int id;

	@Override
	public String toString() {
		return String.format(firstname+ " "+ lastname+ " "+ companyname+" "+city+" "+country+ " "+username);
	}
	
}
