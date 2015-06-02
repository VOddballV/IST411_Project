<%-- 
    Document   : home
    Created on : Apr 14, 2015, 11:31:05 AM
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
                        <li><a href="#" id = "checkout" onclick = "toCheckout()">Checkout</a></li>
                    </ul>
                </nav>
            </div>
            <div id="productWrapper">
                <product>
                            <h1>Graphics Card</h1>
                            <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(0)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="1" >
                            </form>
                </product>
                <product>
                        <h1>Hard Drive</h1> 
                        <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(1)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="2" >
                        </form>
                </product>
                <product class="rightcl">
                        <h1>Case</h1>
                        <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(2)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="3" >
                        </form>
                </product>
                <product>
                        <h1>Bloodborne</h1>
                        <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(3)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="4" >
                        </form>
                </product>
                <product>
                        <h1>Fallout 4</h1>
                        <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(4)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="5" >
                        </form>
                </product>
                <product class="rightcl">
                        <h1>Spy Fox</h1>
                        <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(5)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="6" >
                        </form>
                </product>
                <product>
                        <h1>PC</h1>
                        <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(6)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="7" >
                        </form>
                </product>
                <product>
                        <h1>PS4</h1>
                        <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(7)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="8" >
                        </form>
                </product>
                <product class="rightcl">
                        <h1>XboxOne</h1>
                        <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(8)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="9" >
                        </form>
                </product>
                <product class="rightcl">
                        <h1>Atari</h1>
                        <form method="get">
                            <a href="#" class="viewProduct" onclick="toDBServlet(9)">View Product</a>
                            <input type="hidden" name="ProductInfo" parameter="ProductInfo" value="10" >
                        </form>
                </product>
            </div>
            <div id="footer">
                <p>Copyright &copy 2012 BoxPress by Youssef Nassim. All Rights Reserved.</p>
            </div>
	</div>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
                function toCheckout() {
                    window.document.location.href="checkout.jsp";
                }
<<<<<<< Updated upstream
                function toDBServlet(productNum) {
                    //integer productNumSend = productNum;
                    //document.forms[0].createAttribute("ProductInfo");
                    //document.forms[0].setAttribute("ProductInfo", productNum);
                    document.forms[productNum].action = "DBServlet";
                    document.forms[productNum].submit();
=======
                function toProduct(int IDnum) {
                        $.get('DBServlet', function(data) {
                        alert(data);
                        });
                //window.document.location.href="product.jsp";
>>>>>>> Stashed changes
                }
                //function toProduct() {
                //window.document.location.href="product.jsp";
                //}
</script>
    </body>
</html>



