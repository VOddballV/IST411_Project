<%-- 
    Document   : checkout
    Created on : Apr 19, 2015, 12:31:05 AM
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store Checkout Page</title>
    </head>
    <body>
         <h1>Checkout</h1>
        <form name="frm" method="post" action="checkout.jsp">
            <input type="text" placeholder="First Name" name="fName">
            <input type="text" placeholder="Last Name" name="lName"><br>
            <input type="text" placeholder="Street Address" name="street">
            <input type="text" placeholder="State" name="state">
            <input type="text" placeholder="Zipcode" name="zip"><br>
            <input type="text" placeholder="Phone ex:(717-873-5828)" name="phone"><br>
            <input type="text" placeholder="email" name="email"><br>
        <hr>
        <select>
            <option value="Credit/Debit">Credit</option>
            <option value="Paypal">Paypal</option>
        </select>
        <hr>
            <button onclick="submitBtn()">Submit</button><br>
        </form>
         <script>
             function submitBtn(){
                 if (("fName") = null || ("lName") = null
                 || ("street") = null || ("state") = null
                 || ("zip") = null || ("phone") = null
                 ||  ("email") = null) {
                    out.println("Please Enter All Required Fields.");
                    } else {
                        // CONNECT TO CONFIRMATION PAGE HERE
                    }
%>
             }
         </script>
    </body>  
</html>