/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JCarder
 */
//@WebServlet(urlPatterns = {"/DBServlet"})
public class DBServlet extends HttpServlet {
        public String productName;
        String imageLink;
        String productdesc;
        String productID;
        String productPrice;
    
    public void doGet(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException  {

    try {
        

        productID = (String) req.getParameter("ProductInfo");

        List resultSet = Servlets.ExecuteExample.main(productID);
        //String resultSetString = resultSet.toString();
        int size = resultSet.size();
        for (int i=0; i<size-1; i++) {
            productName = resultSet.get(0).toString();
            imageLink = resultSet.get(1).toString();
            productdesc = resultSet.get(2).toString();
            productPrice = resultSet.get(3).toString();
        }    
        req.setAttribute("productIDJSP", productID);
        req.setAttribute("productNameJSP", productName);
        req.setAttribute("imageLinkJSP", imageLink);
        req.setAttribute("productDescJSP", productdesc);
        req.setAttribute("productPriceJSP", productPrice);
        //doPost(req, res);
        getServletContext().getRequestDispatcher("/product.jsp").forward(req,res);
        
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }   
  }
    
    
        public void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException  {
            

            
        }
}
 
