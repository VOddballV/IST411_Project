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
             /* This code will check to see if the user has given a name
                if no name was given, it prompts the user to enter a name
                once the user enters a name, it will then output the name
                when the submit button is pressed */
             
          if (request.getParameter("fName") == null) {
        out.println("First Name N/A.");
    } else {
        out.println(request.getParameter("fName")+"</b>!");
    }
          
          if (request.getParameter("lName") == null) {
        out.println("Last Name N/A.");
    } else {
        out.println(request.getParameter("lName")+"</b>!");
    }
          
          if (request.getParameter("street") == null) {
        out.println("Street Address N/A.");
    } else {
        out.println(request.getParameter("street")+"</b>!");
    }
          
          if (request.getParameter("state") == null) {
        out.println("State N/A.");
    } else {
        out.println(request.getParameter("state")+"</b>!");
    }
          
          if (request.getParameter("zip") == null) {
        out.println("Zip N/A.");
    } else {
        out.println(request.getParameter("zip")+"</b>!");
    }
          
          if (request.getParameter("phone") == null) {
        out.println("Phone Number N/A");
    } else {
        out.println(request.getParameter("phone")+"</b>!");
    }
          
          if (request.getParameter("email") == null) {
        out.println("Email Address N/A");
    } else {
        out.println(request.getParameter("email")+"</b>!");
    }
%>
<hr>
    </body>
</html>
