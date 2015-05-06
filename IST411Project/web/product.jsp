<%-- 
    Document   : product
    Created on : Apr 20, 2015, 10:09:01 PM
    Author     : Justin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="Resources/css/style.css" />
        <title>The Electronics Store</title>
    </head>
    <body>
	<div id="wrapper">
            <div id="header">
                <h1><a href="home.jsp">The Electronics Store</a></h1>
                <nav>
                    <ul>
                        <li><a href="redirect.jsp" class="current">Home</a></li>
                        <li><a href="checkout.jsp">Checkout</a></li>
                    </ul>
                </nav>
            </div>
            <div id="productWrapper">
                <product>
                <a href="#"><img src="Resources/<%= request.getAttribute("imageLinkJSP") %>"  alt=""/></a>
                    <h1 id="Name"><%= request.getAttribute("productNameJSP") %></h1>
                    <p id="Price">$<%= request.getAttribute("productPriceJSP") %> </p>
                </product>
                <productDescriptionBox>
                    <p><%= request.getAttribute("productDescJSP") %>
                    </p>
                </productDescriptionBox>
            </div>
                    <button type="button" onclick='buy()'> BUY </button>
            <div id="footer">
                <p>Copyright &copy 2012 BoxPress by Youssef Nassim. All Rights Reserved.</p>
            </div>
	</div>
    </body>
    <script src='Cookies.js' type="text/javascript"></script>
    <script>
            function buy() {
                var itemAdd = document.getElementById('Name').textContent;
                var itemAddPrice = document.getElementById('Price').textContent
                var itemOriginalPrice = <%= request.getAttribute("productPriceJSP") %>
                // sets the cookie cookie1/
                var history = Cookies.get('UserCart');
                var total = Cookies.get('UsersTotal');
                var itemPriceInt = parseInt(itemOriginalPrice);
                var totalPrice = parseInt(total)
                if(history === undefined){
                Cookies.set('UserCart', itemAdd + "(" + itemAddPrice + ")"); 
                Cookies.set('UsersTotal', itemPriceInt)
                console.log(itemPriceInt);
                document.location.href="checkout.jsp";                     
                } else {
                
                Cookies.set('UserCart', itemAdd + "(" + itemAddPrice + ")" + ", " + history);
                Cookies.set('UsersTotal', itemPriceInt + totalPrice);
                console.log(itemPriceInt);
                console.log(totalPrice);
                document.location.href="checkout.jsp";
                
                } 
            }
        

    </script>
</html>


