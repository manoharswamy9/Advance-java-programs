package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.user;

public class userdao {
	
	public int register(user users) throws ClassNotFoundException
	{
		int res=0;
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try
		{
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "123456");
		
			PreparedStatement preparedStatement=connection.prepareStatement("insert into register(firstname,lastname,companyname,city,country) values(?,?,?,?,?);");
					
			System.out.println(users);
			preparedStatement.setString(1, users.getFirstname());
			preparedStatement.setString(2, users.getLastname());
			preparedStatement.setString(3, users.getCompanyname());
			preparedStatement.setString(4, users.getCity());
			preparedStatement.setString(5, users.getCountry());
			System.out.println(preparedStatement);
			
			res=preparedStatement.executeUpdate();
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return res;
	}

}
