package com.tech.stack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.tech.stack.entities.User;

public class UserDao {

	private Connection con;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	public User getUserbyUesrnameAndPas(String email1,String pass1) {
		
		System.out.println("Start...");
		try {
			
			String q = "select * from signup where email = ? and pass = ?";
			
			PreparedStatement ps=con.prepareStatement(q);
			ps.setString(1, email1);
			ps.setString(2, pass1);
			System.out.println("Working 1");
			
			ResultSet set=ps.executeQuery();
			
			if(set.next()) {
				User u = new User();
				int id=set.getInt(1);
				String username = set.getString(2);
				String email = set.getString(3);
				String pass = set.getString(4);
				String gender= set.getString(5);
				String about= set.getString(6);
				
				u.setId(id);
				u.setUsername(username);
				u.setEmail(email);
				u.setPass(pass);
				u.setGender(gender);
				u.setAbout(about);
				

				
//				System.out.println(id+" "+username+" "+email+" "+pass+" "+gender+" "+about);
				
				if (u.getEmail().equals(email) && u.getPass().equals(pass)) {
					System.out.println("Login successful...");
					return u;
				}
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("Login Failed...");
		return null;
		
	}

	public boolean saveUser(User user) {
		try {
			String q = "insert into signup (username,email,pass,gender,about) values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(q);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPass());
			ps.setString(4, user.getGender());
			ps.setString(5, user.getAbout());
			
			int count=ps.executeUpdate();
			
			if (count>0) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
