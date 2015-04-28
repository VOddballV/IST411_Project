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
public class ConfirmServlet extends HttpServlet {

    
    public void doGet(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException  {

    try {
        
        String confirmationNum;
        confirmationNum = (String) req.getParameter("ConfirmationInfo");
        
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }   
  }
    
    
        public void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException  {
            
            
            
        }
}
 
