package com.tech.stack.servlets;

import java.io.IOException;

import com.tech.stack.entities.Message;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SignoutServlet")
public class SignoutServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		session.removeAttribute("userKey");
		
		Message msg = new Message("Singout Successfully","success","alert-success");	
		
		session.setAttribute("msgKey", msg);
		
		resp.sendRedirect("signin.jsp");
		
	}
	
}
