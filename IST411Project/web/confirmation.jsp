<%-- 
    Document   : confirmation
    Created on : Apr 21, 2015, 11:14:42 AM
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
                <h1>Order Confirmation</h1>
                <br>
                <h2>Shopping Cart</h2>
                <br>
                <h1 id='cart' onLoad='getCookie()'></h1>
                <script src='Cookies.js' type="text/javascript">
                </script>
                
                <hr>
                <br>
                <h2>Shipping: <%= request.getAttribute("myShippingChoiceJSP") %></h2>
                
                    
                
            </div>
        </div>
    </body>
</html>
