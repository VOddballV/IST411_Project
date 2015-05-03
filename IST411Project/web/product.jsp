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
                        <li><a href="#">Checkout</a></li>
                    </ul>
                </nav>
            </div>
            <div id="productWrapper">
                <product>
                <a href="#"><img src="Resources/<%= request.getAttribute("imageLinkJSP") %>"  alt=""/></a>
                    <h1><%= request.getAttribute("productNameJSP") %></h1>
                    <p>$9.99</p>
                </product>
                <productDescriptionBox>
                    <p><%= request.getAttribute("productDescJSP") %>
                    </p>
                </productDescriptionBox>
            </div>
            <div id="footer">
                <p>Copyright &copy 2012 BoxPress by Youssef Nassim. All Rights Reserved.</p>
            </div>
	</div>
    </body>
</html>


