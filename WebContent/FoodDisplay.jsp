<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<style>
.card {
    width: 70%;
    height: 200px;
    margin: 0 auto;
    align-items: center;
    border: 1px dotted;
    background-color: #deedde;
    margin-top: 2%;
}
.left, .right {
	width: 50%
 }
 .left {
 	float: left;
 }
 .right {
 	float: right;
 }
 p {
 	margin: 0 5%
 }
.left>p, .right>p {
	margin: 1% 10%;
}

}
    
</style>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "food_app";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center">
	<font><strong>Food Posts List</strong></font>
</h2>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM FOOD_POSTING";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
	<div class="card">
			<h3 style="text-align: center;">Posted By <%=resultSet.getString("name") %></h3>
		<p>Address: <strong><%=resultSet.getString("address") %></strong></p>
		<div class="left">
		<p>Email: <strong><%=resultSet.getString("email") %></strong></p>
		<p>Can Feed upto: <strong><%=resultSet.getInt("quantity") %></strong> <p>
		</div>
		<div class="right">
		<p>Mobile: <strong><%=resultSet.getString("mobileno") %></strong></p>
		<p>Posted Date: <strong><%=resultSet.getDate("date") %> <%=resultSet.getTime("date") %></strong></p>
		</div>
	</div>	
<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>