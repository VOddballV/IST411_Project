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
                <hr>
                <br>
                <h2>Customer Information:</h2>
                <br>
                <h3>Name: <%= request.getAttribute("fName") %> <%= request.getAttribute("lName") %></h3>
                <h3>Address: <%= request.getAttribute("street") %>, <%= request.getAttribute("state") %>, <%= request.getAttribute("zip") %></h3>
                <h3>Phone: <%= request.getAttribute("phone") %></h3>
                <h3>Email: <%= request.getAttribute("email") %></h3>
                <br>
                <hr>
                <br>
                <h2>Payment Information:</h2>
                <br>
                <h3>Payment Type: Credit</h3>
                <h3>Card Verification: <%= request.getAttribute("verify") %></h3>
                <br>
                <hr>
                <br>
                <h2>Shopping Cart:</h2>
                <br>
                <h1 id='cart' onLoad='getCookie()'></h1>
                <script src='Cookies.js' type="text/javascript">
                </script>
                <h3 id='subTotal'></h3>
                
                <br>
                <hr>
                <br>


                <h2>Shipping Information:</h2>
                <br>
                <h3>Shipping Address: <%= request.getAttribute("street") %>, <%= request.getAttribute("state") %>, <%= request.getAttribute("zip") %></h3>
                <h3 id='shipping'>Shipping Cost: $<%= request.getAttribute("myShippingCostJSP") %></h3>
                <br>
                <hr>
                <br>
                
                <h2 id='total'></h2> 
            </div>

                <script>
                    var totalAmountPaid = Cookies.get('UsersTotal');
                    var shippingCost = <%= request.getAttribute("myShippingCostJSP")%>;
                    document.getElementById('total').textContent = "Total: $" + totalAmountPaid + " + Shipping";
                    document.getElementById('subTotal').textContent = "Subtotal: $" + totalAmountPaid;
                </script>
            <div id="footer">
                <p>Copyright &copy 2012 BoxPress by Youssef Nassim. All Rights Reserved.</p>
            </div>
        </div>
    </body>
</html>
