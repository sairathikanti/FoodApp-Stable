<%@page import="com.food.Dao.LoginDao"%> 
<%@ page import="java.sql.ResultSet" %> 

<%@ page import="com.food.beans.LoginUser" %> 
<jsp:useBean id="obj" class="com.food.beans.LoginUser"/>  
  
<jsp:setProperty property="*" name="obj"/> 
    
 <%  
boolean status=LoginDao.login(obj);  
 System.out.println(status);
if(status){  
	System.out.println("Found Row");
	String userType= LoginDao.getUserType();
	System.out.println(userType);
	if(userType.equals("provider")) {
		response.sendRedirect("success.jsp");
		session.setAttribute("userid","true");
	} else if(userType.equals("seeker")) {
		response.sendRedirect("seeker.jsp");
		session.setAttribute("userid","true");
	}
	else {
		response.sendRedirect("login.jsp");
	} //else {
	//	response.sendRedirect("login.jsp");
//	}
// response.sendRedirect("success.jsp");
} else {
    out.println("Invalid details <a href='index.html'>try again</a>");
} 
%> 
