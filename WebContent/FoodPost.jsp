
<%@page import="java.util.List"%>
<%@page import="com.food.Dao.FoodPostDao"%>  
<%@page import="com.food.Dao.FoodDisplayDao"%> 
<%@page import="com.food.beans.EmailSending"%> 
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<jsp:useBean id="obj" class="com.food.beans.FoodPostBean"/>  
  
<jsp:setProperty property="*" name="obj"/> 
   
   
   
  <%
  int i=FoodPostDao.post(obj); 
  System.out.print(i);
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("success.jsp");
        List<String> emails = FoodPostDao.getSeekerEmails();
        for (String email : emails) {
        	//EmailSending.sendEmail(email);
        	
        	
        	   String result;
        	   
        	   // Recipient's email ID needs to be mentioned.
        	   
        	   out.print("emails sending to -->"+email);
        	   String to = email;

        	   // Sender's email ID needs to be mentioned
        	   String from = "vamshi.sai.9866@gmail.com";

        	   // Assuming you are sending email from localhost
        	   String host = "localhost";

        	   // Get system properties object
        	   Properties properties = System.getProperties();

        	   // Setup mail server
        	   properties.setProperty("mail.smtp.host", host);

        	   // Get the default Session object.
        	   Session mailSession = Session.getDefaultInstance(properties);

        	   try {
        	      // Create a default MimeMessage object.
        	      MimeMessage message = new MimeMessage(mailSession);
        	      
        	      // Set From: header field of the header.
        	      message.setFrom(new InternetAddress(from));
        	      
        	      // Set To: header field of the header.
        	      message.addRecipient(Message.RecipientType.TO,
        	                               new InternetAddress(to));
        	      // Set Subject: header field
        	      message.setSubject("This is the Subject Line!");
        	      
        	      // Now set the actual message
        	      message.setText("food post");
        	      
        	      // Send message
        	      Transport.send(message);
        	      result = "Sent message successfully....";
        	   } catch (MessagingException mex) {
        	      mex.printStackTrace();
        	      result = "Error: unable to send message....";
        	   }
        	
   	
        	
        	
        	
        	
        	
        	
        	   
    	}
       // EmailSending email = new EmailSending();
        
     
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
    	out.println("Failed to post the food, "+"<a href='success.jsp'>Go to Home</a>");
        // response.sendRedirect("success.jsp");
    }
%>

