package com.food.beans;

import java.io.IOException;

import com.sendgrid.Content;
import com.sendgrid.Email;
import com.sendgrid.Mail;
import com.sendgrid.Method;
import com.sendgrid.Request;
import com.sendgrid.Response;
import com.sendgrid.SendGrid;

public class EmailSending {
	
	
	public static void sendEmail(String email) {
		
		Email from = new Email("vamshi.sai.9866@gmail.com");
	    String subject = "New Food Post";
	    System.out.println("to email"+email);
	    Email to = new Email(email);
	    Content content = new Content("text/plain", "New Food posted on the portal, Please Check.");
	    Mail mail = new Mail(from, subject, to, content);
	
	    SendGrid sg = new SendGrid("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");
	    Request request = new Request();
	    try {
	      request.setMethod(Method.POST);
	      request.setEndpoint("mail/send");
	      request.setBody(mail.build());
	      Response response = sg.api(request);
	      System.out.println("STATUS CODE:" + response.getStatusCode());
	      System.out.println("Response Body:" + response.getBody());
	      System.out.println("Res Headers:" + response.getHeaders());
	    } catch (IOException ex) {
	    	System.out.println("IO Exception");
	      try {
			throw ex;
		} catch (IOException e) {
			System.out.println("IO Exception");
			e.printStackTrace();
		}
	    }
	  }


}
