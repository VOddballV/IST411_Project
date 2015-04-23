/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SourcePackages;

import java.io.IOException;
import java.io.PrintWriter;
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

    
    public void doGet(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException  {

    try {
        
        String productID;
        productID = req.getParameter("IDnum");
        getServletConfig().getServletContext().getRequestDispatcher(
        "product.jsp").forward(req,res);

    } catch (ServletException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
  }
}
 
