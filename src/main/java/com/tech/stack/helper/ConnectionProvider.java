package com.tech.stack.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	public static Connection con;

	public static Connection makeCon() {
		if (con == null) {
			try {
				// load the Driver
				DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

				// create the Connection
				String url = "jdbc:mysql://localhost:3306/techstack";
				String username = "root";
				String pass = "dip piyu";
				con = DriverManager.getConnection(url, username, pass);

			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		return con;
	}
}
