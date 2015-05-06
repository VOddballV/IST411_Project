/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;


import ShippingClient.ShippingWebService_Service;
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
import javax.xml.ws.WebServiceRef;
import java.net.*;
import java.io.*;

/**
 *
 * @author JCarder
 */
//@WebServlet(urlPatterns = {"/DBServlet"})
public class ConfirmServlet extends HttpServlet {
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/ShippingWebService/ShippingWebService.wsdl")
    private ShippingWebService_Service service_2;
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/ShippingWebService/ShippingWebService.wsdl")
    private ShippingWebService_Service service_1;
    private ShippingWebService_Service service;
    public int myShippingCost;
    public Socket socket;
    
    public void doGet(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException  {

        try {
            String confirmationNum;
            confirmationNum = (String) req.getParameter("cardNumber");
           
            String url="localhost";
            int port =10001;
            socket = new Socket(url, port);
            
            PaymentGateway.ClientServer.staticWriteSocket(socket, confirmationNum);
            System.out.println("Wrote to Socket: " + confirmationNum + ".");
            
            String verify = PaymentGateway.ClientServer.staticReadSocket(socket);
            System.out.println("Read from socket: " + verify + ".");
            
            
            req.setAttribute("verify", verify);
            
            
            
            int choice = Integer.parseInt(req.getParameter("shippingChoice"));
            myShippingCost = getShippingCost(choice);
            req.setAttribute("myShippingCostJSP", myShippingCost);
            
            String fName = req.getParameter("fName");
            req.setAttribute("fName", fName);
            
            String lName = req.getParameter("lName");
            req.setAttribute("lName", lName);
            
            String street = req.getParameter("street");
            req.setAttribute("street", street);
            
            String state = req.getParameter("state");
            req.setAttribute("state", state);
            
            String zip = req.getParameter("zip");
            req.setAttribute("zip", zip);
            
            String phone = req.getParameter("phone");
            req.setAttribute("phone", phone);
            
            String email = req.getParameter("email");
            req.setAttribute("email", email);
            
            String paymentType = req.getParameter("paymentType");
            req.setAttribute("paymentType", paymentType);
            
            getServletContext().getRequestDispatcher("/confirmation.jsp").forward(req,res);

        } catch (Exception e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
        }   
    }
    
    
    public void doPost(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException  {



    }

    private int getShippingCost(int getShippingCost) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        ShippingClient.ShippingWebService port = service_2.getShippingWebServicePort();
        return port.getShippingCost(getShippingCost);
    }



    
    
   



}

