package com.tech.stack.entities;

import java.sql.Connection;

import com.tech.stack.dao.UserDao;
import com.tech.stack.helper.ConnectionProvider;

public class Test {
	public static void main(String[] args) {
		Connection con=ConnectionProvider.makeCon();
		UserDao userDao = new UserDao(con);
		userDao.getUserbyUesrnameAndPas("rudragurve@gmail.com", "rudra123");
	}
}
