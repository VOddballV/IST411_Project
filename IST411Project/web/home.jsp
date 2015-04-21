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
                        <li><a href="#" id = "checkout" onclick = "toCheckout">Checkout</a></li>
                    </ul>
                </nav>
            </div>
            <div id="productWrapper">
                <product>
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                        <h1>Product 1</h1>
                        <p>Product description.</p>
                        <p>$9.99</p>
                        <a href="#" class="viewProduct" onclick = "toProduct()">View Product</a>
                </product>
                <product>
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                        <h1>Product 2</h1>
                        <p>Product description.</p>
                        <p>$9.99</p>
                        <a href="#" class="viewProduct">View Product</a>
                </product>
                <product class="rightcl">
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                        <h1>Product 3</h1>
                        <p>Product description.</p>
                        <p>$9.99</p>
                        <a href="#" class="viewProduct">View Product</a>
                </product>
                <product>
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                        <h1>Product 4</h1>
                        <p>Product description.</p>
                        <p>$9.99</p>
                        <a href="#" class="viewProduct">View Product</a>
                </product>
                <product>
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                        <h1>Product 5</h1>
                        <p>Product description.</p>
                        <p>$9.99</p>
                        <a href="#" class="viewProduct">View Product</a>
                </product>
                <product class="rightcl">
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                        <h1>Product 6</h1>
                        <p>Product description.</p>
                        <p>$9.99</p>
                        <a href="#" class="viewProduct">View Product</a>
                </product>
                <product>
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                        <h1>Product 7</h1>
                        <p>Product description.</p>
                        <p>$9.99</p>
                        <a href="#" class="viewProduct">View Product</a>
                </product>
                <product>
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                        <h1>Product 8</h1>
                        <p>Product description.</p>
                        <p>$9.99</p>
                        <a href="#" class="viewProduct">View Product</a>
                </product>
                <product class="rightcl">
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                        <h1>Product 9</h1>
                        <p>Product description.</p>
                        <p>$9.99</p>
                        <a href="#" class="viewProduct">View Product</a>
                </product>
            </div>
            <div id="footer">
                <p>Copyright &copy 2012 BoxPress by Youssef Nassim. All Rights Reserved.</p>
            </div>
	</div>
        <script>
                function toCheckout() {
                window.location = '/.jsp';
                }
                function toProduct() {
                window.document.location.href="product.jsp";
                }
</script>
    </body>
</html>



