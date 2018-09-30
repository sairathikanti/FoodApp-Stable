<%@page import="com.food.Dao.RegisterDao"%>  
<jsp:useBean id="obj" class="com.food.beans.User"/>  
  
<jsp:setProperty property="*" name="obj"/> 
    
   
  <% 
  int i=RegisterDao.register(obj); 
    if (i > 0) {
    	
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>

