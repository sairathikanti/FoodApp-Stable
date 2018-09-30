<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
please enter valid data;
<a href="index.html">Please Login</a>
<%} else {
%>
<%@ include file ="successpage.jsp" %>
<%   
    }
%>
