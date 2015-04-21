<%-- 
    Document   : confirmation
    Created on : Apr 21, 2015, 11:14:42 AM
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmation Page</title>
    </head>
    <body>
        <h1>Order Summary:</h1>
        <hr>
        <%
             if (request.getParameter("fName") == null) {
        out.println("First Name N/A.");
    } else {
        out.println(request.getParameter("fName"));
    }
          
          if (request.getParameter("lName") == null) {
        out.println("Last Name N/A.");
    } else {
        out.println(request.getParameter("lName"));
    }
          
          if (request.getParameter("street") == null) {
        out.println("Street Address N/A.");
    } else {
        out.println(request.getParameter("street"));
    }
          
          if (request.getParameter("state") == null) {
        out.println("State N/A.");
    } else {
        out.println(request.getParameter("state"));
    }
          
          if (request.getParameter("zip") == null) {
        out.println("Zip N/A.");
    } else {
        out.println(request.getParameter("zip"));
    }
          
          if (request.getParameter("phone") == null) {
        out.println("Phone Number N/A");
    } else {
        out.println(request.getParameter("phone"));
    }
          
          if (request.getParameter("email") == null) {
        out.println("Email Address N/A");
    } else {
        out.println(request.getParameter("email"));
    }
%>
<hr>
    </body>
</html>
