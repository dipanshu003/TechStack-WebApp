package com.tech.stack.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import com.tech.stack.dao.UserDao;
import com.tech.stack.entities.User;
import com.tech.stack.helper.ConnectionProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/signup")
@MultipartConfig
public class SignupServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username1");
		String pass = req.getParameter("pass1");
		String email = req.getParameter("email1");
		String gender = req.getParameter("gender1");
		String about = req.getParameter("about1");
		
		PrintWriter out = resp.getWriter();
		Connection con = ConnectionProvider.makeCon();
		
		User user = new User(username, pass, email, gender, about);
		UserDao userDao = new UserDao(con);
		boolean userRes= userDao.saveUser(user);
		
		System.out.println(userRes);

	}

}
