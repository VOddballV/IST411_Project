/**
 * IST 411 Lab #9
 * NewServlet.java
 * Purpose: Checks to see if there's a cookie if not then create one
 * @author Jon Carder
 * @version 1.0 3/24/2015
 */
package Servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class CheckoutCookie extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    //Set username and password
    private String productID;
    //DoGet method
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
            
            
                        productID = (String) req.getAttribute("productID");
                        //Creates an array of cookies
                        Cookie[] cookies = req.getCookies();
                        //Sets foundCookie to false
                        boolean foundCookie = false;
                        //We go throught the cookies in our array to find if
                        //a cookie is there right now
                        for(int i = 0; i < cookies.length; i++) { 
                            Cookie cookie1 = cookies[i];
                            //Find the cookie named UserInfo
                            if (cookie1.getName().equals("UserInfo")) {
                                //We found a cookie!
                                foundCookie = true;
                            }
                        }  
                        //If we don't find a cookie we create it
                        if (!foundCookie) {
                            //We create a new presistant cookie
                            Cookie cookie1 = new Cookie("UserInfo", productID);
                            //Setting the age of cookie
                            cookie1.setMaxAge(24*60*60);
                            //We added the cookie
                            resp.addCookie(cookie1); 
                        }
                        //Lets goooooo to the UserPage
                        resp.sendRedirect("checkout.jsp");
    }
}