/*
 * IST 411 Lab 3
 * EchoServerMaster.java
 * Purpose: A Master for the EchoServer Class that will allow for 
 * multiple EchoClients to connect and be provided with service at the same time.
 *
 * @author Justin Lawson
 * @version 1.0 3/18/15
 */ 

package SourcePackages;

import java.net.*;
import java.io.*;

public class EchoServerMaster {
    public static void main(String[] args) throws IOException {

        int portNumber = 10001;     //sets the default port number
        boolean listening = true;   //listening for clients = true
        
        //creates a new ServerSocket at the correct port number
        try (ServerSocket serverSocket = new ServerSocket(portNumber)) { 
            //tries to listen for a client requesting service
            while (listening) {
	        //accepts new clients and creates an EchoServer for them    
                new EchoServer(serverSocket.accept()).start();
	        }//end while
	    } catch (IOException e) {
            System.err.println("Could not listen on port " + portNumber);
            System.exit(-1);
        }//end catch
    }//end main
}//end EchoServerMaster

