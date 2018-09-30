package com.food.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.food.beans.FoodDisplayBean;
import com.food.beans.FoodPostBean;

public class FoodPostDao {
	static Statement st;
	static Connection con;

	public static int post(FoodPostBean f) {
		int status = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food_app", "root", "root");
			st = con.createStatement();

			status = st.executeUpdate("insert into food_posting(name, email, mobileno, address, quantity,date) values ('"
					+ f.getName() + "','" + f.getEmail() + "','" + f.getMobileno() + "','" + f.getAddress() + "','"
					+ f.getQuantity() + "','" + f.getDate() + "')");
			System.out.println("food post STATUS" + status);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	public static List<String> getSeekerEmails() throws SQLException {
		List<String> emails = new ArrayList<String>();
		st = con.createStatement();
		ResultSet rs = st.executeQuery("select email from user where user_type='seeker'");
		while (rs.next()) {
			String email = rs.getString("email");
			emails.add(email);
		}
		return emails;
	}

}
