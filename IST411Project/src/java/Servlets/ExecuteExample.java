package Servlets;
import java.util.*;
import java.io.*;
import java.sql.*;

/**
 * IST 411 Lab #4
 * ExecuteExample.java
 * Purpose: Connect to derby database and return resultset to user
 * @author Jon Carder
 * @version 1.0 2/9/2015
 */ 

public class ExecuteExample  
{
    /**
    * The main method begins execution of the connecting to database and return
    * a result using resultset.
    * @param args not used
    */         
    public static String productName;
    public static String imageLink;
    public static String productDesc;
    public static ResultSet resultSet;
    
    public static List main (String productID) 
    {
        //className tells us what driver to use
        String className="org.apache.derby.jdbc.ClientDriver";
        //url tells us where to find the database
        String url="jdbc:derby://localhost:1527/EcommDB";
        //user assigns the user login for database
        String user = "IST411";
        //password assigns the password for the user login for database
        String password = "nioj";
        //usersStatement used for assigning what the user enters in console
        String usersStatement = "";
        /*resultset is used to collect that we receive from the database after
        * we send the query
        */
        try
        {
            //ResourceBundle resources;
            //InputStream in = null;
            //in = ClassLoader.getSystemResourceAsStream("db.properties");
            //resources = new PropertyResourceBundle(in);
            //in.close();
            //These items are receiving their information from db.properties
            className = "org.apache.derby.jdbc.ClientDriver";
            //url = resources.getString("jdbc.url");
            //System.out.println(url);
            //user = resources.getString("jdbc.user");
            //password = resources.getString("jdbc.password");
        }
        catch (Exception exp)
        {
            System.out.println("Couldn't load resources." + exp);
            System.exit(-1);
        }
        try
        {
            Class.forName(className);
        }
        catch (Exception e) 
        {
            System.out.println("Failed to load  driver.");
        }
        try
        {
            usersStatement = productID;//Assigns what user puts in for input
            //Connection con gets the connection to the database using driver
            Connection con = DriverManager.getConnection(url,user,password); 
            //Statement is allowing us to creat a query
            Statement stmt = con.createStatement();
            //Resultset gives us what the database gets as a resultn of query
            //Query contians SQL query
            resultSet = stmt.executeQuery(
                    "SELECT productname, productimagelink, productdesc FROM Products " +
                    "WHERE ProductID = " + productID);
            //Resultset.next converts result from database for each row
            while (resultSet.next()) {
            productName = resultSet.getString("productName");
            imageLink = resultSet.getString("productimageLink");
            productDesc = resultSet.getString("productdesc");
            }
            stmt.close();//Closes statement
            con.close();//Closes connection to database
        }
        catch (Exception e) 
        {
            System.out.println(e);
        }
        List myList = new ArrayList();
        myList.add(productName);
        myList.add(imageLink);
        myList.add(productDesc);
        return myList;
    }

}

