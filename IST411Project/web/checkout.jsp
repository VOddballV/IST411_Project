<%-- 
    Document   : checkout
    Created on : Apr 19, 2015, 12:31:05 AM
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="Resources/css/style.css" />
        <title>Store Checkout Page</title>
    </head>

    <body>
        <div id="wrapper">
            <div id="header">
                <h1><a href="home.jsp">The Electronics Store</a></h1>
                <nav>
                    <ul>
                        <li><a href="redirect.jsp" >Home</a></li>
                        <li><a href="#" class="current" id = "checkout" onclick = "toCheckout()">Checkout</a></li>
                    </ul>
                </nav>
            </div>
           <div id="productWrapper">
         <h1>Checkout</h1>
        <form name="frm" method="post" action="checkout.jsp">
            <input type="text" placeholder="First Name" name="fName">
            <input type="text" placeholder="Last Name" name="lName"><br>
            <input type="text" placeholder="Street Address" name="street">
            <input type="text" placeholder="State" name="state">
            <input type="text" placeholder="Zipcode" name="zip"><br>
            <input type="text" placeholder="Phone ex:(717-873-5828)" name="phone"><br>
            <input type="text" placeholder="Email" name="email"><br><br>
        
        <select>
            <option value="Credit">Credit</option>
        </select>
        <input type="text" placeholder="Credit Card Number" name="cardNumber"><br><br>
        <hr>
            <button onclick="submitBtn()">Submit</button><br>
        </form>
           </div>
            <div id="footer"/>
         <script>
            
                /* This code will check to see if the user has given the required
                parameters. if any were not given, it will ask the user to enter
                all of the required fields */
    
                function submitBtn(){
                 if (("fName") = null || ("lName") = null
                 || ("street") = null || ("state") = null
                 || ("zip") = null || ("phone") = null
                 ||  ("email") = null || ("cardNumber" = null)) {
                    out.println("Please Enter All Required Fields.");
                    } else {
                        // CONNECT TO CONFIRMATION PAGE HERE
                    }
             }
         </script>
    </body>  
</html>