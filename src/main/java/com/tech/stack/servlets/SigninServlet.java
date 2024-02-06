package com.tech.stack.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.print.attribute.standard.Media;

import com.tech.stack.dao.UserDao;
import com.tech.stack.entities.Message;
import com.tech.stack.entities.User;
import com.tech.stack.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/signin")
public class SigninServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("do post start...");
		String email=req.getParameter("email1");
		String pass = req.getParameter("pass1");
		PrintWriter out = resp.getWriter();
		
		Connection con=ConnectionProvider.makeCon();
		UserDao userDao = new UserDao(con);
		User user=userDao.getUserbyUesrnameAndPas(email, pass);
		
		if (user!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("userKey", user);
			resp.sendRedirect("profile.jsp");
		}
		else {
			//error
//			out.print("Invalid Username or Password...");
			
			Message msg = new Message("Invalid Details ! try Again","error","alert-danger");
			
			HttpSession session = req.getSession();
			session.setAttribute("msgKey", msg);
			
			resp.sendRedirect("signin.jsp");
		}
		
	}
	
}
