package com.food.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.food.beans.FoodDisplayBean;


public class FoodDisplayDao {

	
	 public  List<FoodDisplayBean> display() throws SQLException {
		List<FoodDisplayBean> data = new ArrayList<>();
		ResultSet rs = null;
		String query="select * from food_posting";
		try{  
			  Class.forName("com.mysql.jdbc.Driver"); 
			  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food_app",
			            "root", "root");
			  Statement st = con.createStatement();			  
		   rs = st.executeQuery(query);
		   System.out.println("result set"+rs);
			  while (rs.next()) {
		            String name = rs.getString("name");
		            String email = rs.getString("email");
		            String mobileno = rs.getString("mobileno");
		            String address = rs.getString("address");
		            int quantity = rs.getInt("quantity");
		            Date datePosted = rs.getDate("date"); 
		            FoodDisplayBean f = new FoodDisplayBean(name,email,mobileno,address,quantity, datePosted);
		            data.add(f);
		            
		            System.out.println("data..."+data);
		        }
			  
		}catch(Exception e){}  
		      
		 return data;
		}  

}
