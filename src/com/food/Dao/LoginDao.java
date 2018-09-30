package com.food.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.food.beans.LoginUser;


public class LoginDao {
	public static String userType = "";
	static ResultSet rs;
	public static boolean login(LoginUser u){  
		boolean status=false;
		try{  
			  Class.forName("com.mysql.jdbc.Driver"); 
			  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food_app",
			            "root", "root");
			  Statement st = con.createStatement();
			 
			   rs = st.executeQuery("select * from user where email='" + u.getEmail() + "' and password='" + u.getPsw() + "'");
			 //System.out.println(status);
			   status=rs.next();
		}catch(Exception e){}  
		      
		return status;  
		}
	public static String getUserType() throws SQLException {
			System.out.println(rs.getString("user_type"));
		    userType = rs.getString("user_type");		  
		return userType;
	}
}
