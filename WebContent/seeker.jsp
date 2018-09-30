<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.sql.ResultSet" %>
  
<jsp:setProperty property="*" name="obj"/> 

<html>
<head>

<link rel="import" href="modal.html">

<style>
<!--body  {
    background-image: url("https://drive.google.com/uc?id=1jULsWe1fiA5_i2xld_r5w32tOPSR_Ybw"); 
}-->
.form-style-8{
    font-family: 'Open Sans Condensed', arial, sans;
    width: 500px;
    padding: 30px;
    background: #FFFFFF;
    margin: 50px auto;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -moz-box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -webkit-box-shadow:  0px 0px 15px rgba(0, 0, 0, 0.22);

   display: none; /* Hidden by default */
   
    z-index: 1; /* Sit on top */
    margin:auto;
    
    width: 50%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
}
.form-style-8 h2{
    background: #4D4D4D;
    text-transform: uppercase;
    font-family: 'Open Sans Condensed', sans-serif;
    color: #797979;
    font-size: 18px;
    font-weight: 100;
    padding: 20px;
    margin: -30px -30px 30px -30px;
}
.form-style-8 input[type="text"],
.form-style-8 input[type="date"],
.form-style-8 input[type="datetime"],
.form-style-8 input[type="email"],
.form-style-8 input[type="number"],
.form-style-8 input[type="search"],
.form-style-8 input[type="time"],
.form-style-8 input[type="url"],
.form-style-8 input[type="password"],
.form-style-8 textarea,
.form-style-8 select 
{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    outline: none;
    display: block;
    width: 100%;
    padding: 7px;
    border: none;
    border-bottom: 1px solid #ddd;
    background: transparent;
    margin-bottom: 10px;
    font: 16px Arial, Helvetica, sans-serif;
    height: 45px;
}
.form-style-8 textarea{
    resize:none;
    overflow: hidden;
}
.form-style-8 input[type="button"], 
.form-style-8 input[type="submit"]{
    -moz-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    -webkit-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    box-shadow: inset 0px 1px 0px 0px #45D6D6;
    background-color: #2CBBBB;
    border: 1px solid #27A0A0;
    display: inline-block;
    cursor: pointer;
    color: #FFFFFF;
    font-family: 'Open Sans Condensed', sans-serif;
    font-size: 14px;
    padding: 8px 18px;
    text-decoration: none;
    text-transform: uppercase;
}
.form-style-8 input[type="button"]:hover, 
.form-style-8 input[type="submit"]:hover {
    background:linear-gradient(to bottom, #34CACA 5%, #30C9C9 100%);
    background-color:#34CACA;
}


.topnav {
  overflow: hidden;
  padding: 10px 0px;
}

.topnav a.logout {
 display: block;
    color: white;
    text-align: center;
    text-decoration: none;
    float:right;
    font-size:15px;
   
   margin:25px 60px 0px 0px;
}
.topnav a.heading{
 display: block;
    color: white;
    text-align: center;
    padding-left:150px;
    text-decoration: none;
    float:left;
    font-size:40px;  
    
}
.table{
   display: block;
    color: white;
    text-align: center;
    padding-left:150px;
  
    float:right;
    font-size:20px;
    margin:50px 170px 0px 0px;  
    
}
.button{
padding-left:20px;
color:blue;
}
hr{color:white;}

</style>
</head>
<body>

<div class="topnav">
<a class="heading">Feeding Poor From Web</a>
<div class="topnav-right"><a href="logout.jsp" class="logout">LogOut</a></div>
 </div>
<table class="table">
<tr>
<td><label>Posts from Event Managers:</label>
</tr>
<hr>
</table>



 
 <!-- The Modal -->

    <div id="myModal" class="form-style-8">
  <h2>Login to your account</h2>
  
    <span class="close">&times;</span>
  <form action="FoodPost.jsp">
    <input type="text" name="name" placeholder="Full Name" required/>
    <input type="email" name="email" placeholder="Email" required/>
    <input type="number" name="mobileno" placeholder="Mobileno" required />
    <textarea placeholder="address" name="address" onkeyup="adjust_textarea(this)" required></textarea>
    <button style="margin-top:20px" id="button"  type="submit" class="signupbtn">Post</button>
   
  </form>
</div>
 

<script>
</script>

<script type="text/javascript">
//auto expand textarea
function adjust_textarea(h) {
    h.style.height = "20px";
    h.style.height = (h.scrollHeight)+"px";
}
</script>
<%@ include file='FoodDisplay.jsp' %>
</body>
</html>
