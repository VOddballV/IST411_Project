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
                <br>
                <h1>Shopping Cart</h1>
                <br>
                <h1 id='cart' onLoad='getCookie()'></h1>
                <script src='Cookies.js' type="text/javascript">

                </script>
                <hr>
                <br>
                <h3>Choose Shipping:</h3><br>
                <form>
                    <input type="radio" name="shippingChoice" value="1" checked> Ground Shipping<br>
                    <input type="radio" name="shippingChoice" value="2"> 2 Day Shipping<br>
                    <input type="radio" name="shippingChoice" value="3"> Next Day Shipping<br><br>
                    <input type="text" name="cost" placeholder="Your Shipping Cost" readonly>
                    <button name="update" onclick="updateShippingCost()">Update</button>
                </form>
                <br>
                <hr>
                <br>
                <h3>Enter Information:</h3>
                <br>
                <h4 id="mistakes"></h4>
                <form name="frm" method="post" action="checkout.jsp">
                    <input type="text" placeholder="First Name" name="fName" id='fName'>
                    <input type="text" placeholder="Last Name" name="lName" id='lName'><br> 
                    <input type="text" placeholder="Street Address" name="street" id='street'>
                    <input type="text" placeholder="State" name="state" id='state'>
                    <input type="text" placeholder="Zipcode" name="zip" id='zip'><br>
                    <input type="text" placeholder="Phone ex:(717-873-5828)" name="phone" id='phone'><br>
                    <input type="text" placeholder="Email" name="email" id='email'><br><br>

                    <select>
                        <option value="Credit">Credit</option>
                    </select>
                    <input type="text" placeholder="Credit Card Number" name="cardNumber"><br><br>
                    <hr>
                    <br>
                    <button type="button" onclick="submitBtn()">Submit</button><br>
                </form>
            </div>
            <div id="footer">
                <p>Copyright &copy 2012 BoxPress by Youssef Nassim. All Rights Reserved.</p>
            </div>
        </div>
        <script>    
            /* This code will check to see if the user has given the required
            parameters. if any were not given, it will ask the user to enter
            all of the required fields */
            
            function submitBtn(){
             var fName = document.getElementById('fName').value;
             var lName = document.getElementById('lName').value;
             var street = document.getElementById('street').value;
             var state = document.getElementById('state').value;
             var zip = document.getElementById('zip').value;
             var phone = document.getElementById('phone').value;
             var email = document.getElementById('email').value;
             
             if (fName === ""){
                 document.getElementById('mistakes').textContent = "Please enter your first name";
                 return false;
             } else if (lName === ""){
                document.getElementById('mistakes').textContent = "Please Enter Your Last Name.";
                return false; 
             } else if (street === ""){
                document.getElementById('mistakes').textContent = "Please Enter Your Street Address.";
                return false;                 
             } else if (state === ""){
                document.getElementById('mistakes').textContent = "Please Enter Your State.";
                return false;                 
             } else if (zip === ""){
                document.getElementById('mistakes').textContent = "Please Enter Your Zip Code.";
                return false;                 
             } else if (phone === ""){
                document.getElementById('mistakes').textContent = "Please Enter Your Phone Number.";
                return false;                 
             } else if (email === ""){
                document.getElementById('mistakes').textContent = "Please Enter Your Email Address.";
                return false;                 
             } else {
                /*Send information to Echo Server using socket
                 *Read true, or false from socket
                 *If true, then go to confirmation page
                 *If flase, display invalid card number*/
                //document.forms[0].action = "ConfirmServlet";
                //document.forms[0].submit();

             } //end if else
            
            
            } // end submit button
            
            function updateShippingCost(){
                getShippingCost(value);
            }
            
            //function toCheckout() {
            //    window.document.location.href="checkout.jsp";
            //}
            //function toDBServlet(productNum) {
                //document.forms[0].createAttribute("ProductInfo");
                //document.forms[0].setAttribute("ProductInfo", productNum);
           //    document.forms[0].action = "DBServlet";
           //     document.forms[0].submit();
          //  }
            //function toProduct() {
            //window.document.location.href="product.jsp";
            //}
            
            //Gets the cookie that holds the users cart
            var myCart = Cookies.get('UserCart');
            document.getElementById('cart').textContent = myCart;

        </script>
    </body>  
</html>

