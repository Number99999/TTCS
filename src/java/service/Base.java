/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

/**
 *
 * @author MSII
 */
import java.sql.*;
public class Base {
    	  static final String DB_URL = "jdbc:mysql://localhost/ttcs";
	  static final String USER = "root";
	  static final String PASS = "";

	  public static Connection getConnection()  throws SQLException
	  {
	     try {
	       Class.forName("com.mysql.jdbc.Driver");
	     } catch (ClassNotFoundException e) {
	       e.printStackTrace();
	     }
	    Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
	    return conn;
	  }
}
