package com.controller;

import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.dao.DaoAdmin;
import com.User.Users;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction implements SessionAware{
	private SessionMap<String,Object> sessionMap;
	
	@Override
	public void setSession(Map<String, Object> map) 
	{
		sessionMap=(SessionMap)map;
	}
	
private Users users=new Users();
	
	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
	String msg="";
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String execute() throws Exception
	{
		System.out.println(users);
		DaoAdmin admin=new DaoAdmin();
		ResultSet rs=admin.loginUser(users.getUsername());
		while(rs.next())
		{
			String pass=rs.getString("password");
			if(users.getPassword().equals(pass))
			{
				
				
				sessionMap.put("login","true");
				sessionMap.put("name",users.getUsername());
				sessionMap.put("fn",rs.getString("firstname"));
				sessionMap.put("ln",rs.getString("lastname"));
				sessionMap.put("cn",rs.getString("companyname"));
				sessionMap.put("c",rs.getString("city"));
				sessionMap.put("co",rs.getString("country"));
				
				return "success";
			}
			else
			{
				msg="Invalid Credentials";
				return "error";
			}
		}
		return "success";
	}


	public String logout()
	{
		if(sessionMap!=null)
		{
			sessionMap.put("login","false");
			sessionMap.invalidate();
		}
		return "success";
	}
}

