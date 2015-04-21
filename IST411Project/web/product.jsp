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
                    <a href="#"><img src="Resources/images/new_product.jpg"  alt=""/></a>
                    <h1>Product 1</h1>
                    <p>$9.99</p>
                </product>
                <productDescriptionBox>
                    <p>Bacon ipsum dolor amet prosciutto venison meatloaf spare ribs. Short loin pork belly tail sirloin bresaola kevin t-bone strip steak ball tip tongue ham turkey. Tongue strip steak cupim landjaeger beef ribs chuck, shoulder cow. Porchetta filet mignon tenderloin ribeye jowl meatloaf strip steak, ham hock bresaola fatback beef ribs chuck salami. Jowl t-bone ribeye turducken tri-tip, tongue shank. Beef landjaeger turducken ground round, drumstick corned beef andouille kevin t-bone sirloin tail. Doner short ribs spare ribs jowl, salami ball tip corned beef flank capicola frankfurter tongue boudin.
                        Meatball jerky short loin sausage doner. Short ribs flank filet mignon turducken brisket, corned beef turkey t-bone ham meatloaf pork chop. Pastrami salami sausage beef doner ground round ball tip andouille beef ribs cupim pancetta sirloin ribeye kielbasa. Shoulder ham hock jerky tongue ball tip ground round chicken pig flank spare ribs.
                    </p>
                </productDescriptionBox>
            </div>
            <div id="footer">
                <p>Copyright &copy 2012 BoxPress by Youssef Nassim. All Rights Reserved.</p>
            </div>
	</div>
    </body>
</html>


