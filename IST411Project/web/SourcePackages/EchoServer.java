/*
 * IST 411 Lab 3
 * EchoServer.java
 *
 * @author Justin Lawson
 * @version 2.0 3/18/15
 *
 * File: EchoServer.java
 * Author: Java, Java, Java
 * Description: This class defines the server object of
 *  a simple client/server application. The application
 *  sets up a socket connection between the client and 
 *  server and simply echos strings input by the user.
 *  The server object reads a string sent by a client
 *  and sends the same string back over the socket.
 */

package SourcePackages;

import java.net.*;
import java.io.*;

public class EchoServer extends ClientServer {

    private ServerSocket port;
    private Socket socket;

    /**
     * EchoServer() constructor creates a server object given
     *  a socket
     * @param socket -- socket information for the EchoServer
     */    
    public EchoServer(Socket socket)  {
        this.socket = socket;    
    } 
 
    /**
     *  run() defines the server thread's main behavior which is
     *   simply to provide service whenever it is requested by a client. 
     *   Since an I/O exception may result, it is handled here. The
     *   server repeatedly accepts a connection from a client and
     *   provides it whatever service is defined in provideService().
     */
    public void run() {
        try {
            System.out.println("Echo server at " 
                               + InetAddress.getLocalHost() + " waiting for connections ");
            while(true) {
                System.out.println("Accepted a connection from " + socket.getInetAddress() + " using Port: " + socket.getPort());
                provideService(socket);
                socket.close();
                System.out.println("Closed the connection\n");
            }
        } catch (IOException e) {
             e.printStackTrace();
        }
    } // run()

    /**
     *  provideService() defines this server's service, which consists
     *   of simply echoing whatever string it receives from the client.
     *  The server's protocol calls for it to begin by saying hello
     *  and end by saying goodbye. Isn't it polite?
     */
    protected void provideService (Socket socket) {
        String str="";
        try {
            writeToSocket(socket, "Hello, how may I help you?\n");
            do {     
                str = readFromSocket(socket);
                if (str.toLowerCase().equals("goodbye"))
                    writeToSocket(socket, "Goodbye\n");
                else
                    writeToSocket( socket, "You said '" + str + " using Port: " + socket.getPort());
            }  while (!str.toLowerCase().equals("goodbye"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    } // provideServer()

     /** 
      *  main() creates an EchoServer at port 10001
      */
//    public static void main(String args[]) {
//        EchoServer server = new EchoServer(10001,3);
//        server.start();
//    } // main()
} // EchoServer
