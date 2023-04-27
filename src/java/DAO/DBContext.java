/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author levan
 */
public class DBContext {
    
    InitialContext initial;
    Context context;
    String dbname, serverName, portNumber, image, username, password;
    private static DBContext instance;
    
    public DBContext(){
        try{
            initial = new InitialContext();
            Object obj = initial.lookup("java:comp/env");
            context = (Context) obj;
            serverName = context.lookup("serverName").toString();
            dbname = context.lookup("dbName").toString();
            portNumber = context.lookup("portNumber").toString();
            image = context.lookup("image").toString();
            username = context.lookup("username").toString();
            password = context.lookup("password").toString();
        } catch (NamingException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static DBContext getInstance(){
        if(instance==null){
            instance = new DBContext();
        }
        return instance;
    }
    
    public Connection getConnection(){
        String url = "jdbc:mysql://localhost:3306/ttcs";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url, "root", "");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    public void freeConnection(Connection c) {
        try {
            c.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
       public static void main(String[] args) {
           try {
               System.out.println(new DBContext().getConnection());
           } catch (Exception e) {
           }
    }
}
