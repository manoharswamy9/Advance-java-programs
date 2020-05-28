package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.user;
import com.dao.userdao;


@WebServlet("/usercontroller")
public class usercontroller extends HttpServlet {

	
		private static final long serialVersionUID = 1L;
	       
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			PrintWriter out=response.getWriter();
			
			user users=new user();
			userdao dao=new userdao();
			
			users.setFirstname(request.getParameter("firstname"));
			users.setLastname(request.getParameter("lastname"));
			users.setCompanyname(request.getParameter("companyname"));
			users.setCity(request.getParameter("city"));
			users.setCountry(request.getParameter("country"));
			
			try 
			{
				int res=dao.register(users);
				if(res>0)
				{
					response.sendRedirect("Thankyou.jsp");
				}
				
			} 
			catch (Exception e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	}

