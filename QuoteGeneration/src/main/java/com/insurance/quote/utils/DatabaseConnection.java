package com.insurance.quote.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import oracle.jdbc.OracleDriver;

public class DatabaseConnection {
private static Connection conn=null;
	public static Connection getConnection() {
	try {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="System";
		String pass="System";
		//Class.forName("oracle.jdbc.driver.OracleDriver");
		DriverManager.registerDriver(new OracleDriver());
		conn=DriverManager.getConnection(url,user,pass);
	} catch (SQLException e) {
		e.printStackTrace();
	}
return conn;
}
public static void closeConnection() {
	try {
		conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
}