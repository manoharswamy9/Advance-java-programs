package com.dao;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.User.Users;

public class DaoAdmin {

	public static Connection getConnection()
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "123456");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return null;
		}
	}
	
	public int registerUser(Users users) throws SQLException
	{
		String sql = "insert into users(firstname,lastname,username,password,companyname,city,country) VALUES (?,?,?,?,?,?,?)";
		PreparedStatement ps = getConnection().prepareStatement(sql);
		ps.setString(1, users.getFirstname());
		ps.setString(2, users.getLastname());
		ps.setString(3, users.getUsername());
		ps.setString(4, users.getPassword());
		ps.setString(5, users.getCompanyname());
		ps.setString(6, users.getCity());
		ps.setString(7, users.getCountry());
		
		int res=ps.executeUpdate();
		
		return res;
	}
	
	public ResultSet loginUser(String username)
	{
		String password="";
		try 
		{
			String sql = "select firstname,lastname,companyname,city,country,password from users where username=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, username);
			
			ResultSet rs=ps.executeQuery();

			return rs;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return null;
		}
	}
	
}
