package com.food.Dao;

import java.sql.*;

import com.food.beans.User;





public class RegisterDao {

	public static int register(User u){  
		
			int status=0;  
			try{  
				  Class.forName("com.mysql.jdbc.Driver"); 
				  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food_app",
				            "root", "root");
				  Statement st = con.createStatement();
				    //ResultSet rs;
				     status = st.executeUpdate("insert into user(name, email, password, mobileno, user_type) values ('" + u.getName() + "','" + u.getEmail() + "','" + u.getPsw() + "','" + u.getMobileno() + "','" + u.getUserType() + "')");
		//	status=ps.executeUpdate();  
			System.out.println(status);
			}catch(Exception e){}  
			return status;  
			}  
	
	

	
}
