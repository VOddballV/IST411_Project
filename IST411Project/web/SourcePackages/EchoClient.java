package SourcePackages;
/*
 * IST 411 Lab 3
 * EchoClient.java
 *
 * @author Justin Lawson
 * @version 2.0 3/18/15
 *
 * File: EchoClient.java
 * Author: Java, Java, Java
 * Description: This class defines the client object of
 *  a simple client/server application. The application
 *  sets up a socket connection between the client and
 *  server and simply echos strings input by the user. 
 *  The client object serves as the user interface. It
 *  accepts user input and sends it to the server.
 */

import java.net.*;
import java.io.*;

public class EchoClient extends ClientServer {

     protected Socket socket;

     /**
      *  EchoClient() constructor creates a client object
      *   given the URL and port number of a server that this
      *   client will connect to
      *  @param url -- a String giving the server's URL
      *  @param url -- an int giving the server's port number
      */
     public EchoClient(String url, int port) {
         try {
             socket = new Socket(url, port);
             System.out.println("CLIENT: connected to " + url + ":" + " using Port: " + socket.getPort());
         } catch (Exception e) {
             e.printStackTrace();
             System.exit(1);
         }
     } // EchoClient()

     /**
      *  run() defines the client thread's main behavior which is
      *   simply to request service from its server. Since an I/O
      *   exception may result, it is handled here.
      */
     public void run() {
         try {
             requestService(socket);
             socket.close();
             System.out.println("CLIENT: connection closed");
         } catch (IOException e) { 
             System.out.println(e.getMessage());
             e.printStackTrace(); 
         }
     } // run()

    /**
     *  requestService() implements the details of the service
     *   request. In this case it accepts a line of input from
     *   the user and passes it along to the server. The protocol
     *   with the server requires that the server say "Hello" first.
     *  @param socket -- the Socket connection to the server
     */
    protected void requestService(Socket socket) throws IOException { 
        String servStr = readFromSocket(socket);          // Check for "Hello"
        System.out.println("SERVER: " + servStr);         // Report the server's response
        System.out.println("CLIENT: type a line or 'goodbye' to quit"); // Prompt the user
        if (servStr.substring(0,5).equals("Hello")) {
            String userStr = "";
            do {
                userStr = readFromKeyboard();                   // Get input from user
                writeToSocket(socket, userStr + "\n");          // Send it to server
                servStr = readFromSocket(socket);               // Read the server's response
                System.out.println("SERVER: " + servStr);       // Report the server's response
            } while (!userStr.toLowerCase().equals("goodbye")); // Until user says 'goodbye'
        }
    } // requestService()

    /**
     *  readFromKeyboard() reads a line of input from the keyboard
     */
    protected String readFromKeyboard( ) throws IOException {
        BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
        System.out.print("INPUT: ");
        String line = input.readLine();
        return line;
    } // readFromKeyboard()

    /**
     *  main() creates a client object given the URL and port number
     *   of the echo server
     */
    public static void main(String args[]) {
        //remote server at 128.118.31.237
        EchoClient client = new EchoClient("localhost",10001);
       client.start();
    } // main()
} // EchoClient
