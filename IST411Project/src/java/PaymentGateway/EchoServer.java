/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PaymentGateway;

import java.net.*;
import java.io.*;

public class EchoServer extends ClientServer {

    private ServerSocket port;
    private Socket socket;

    /**
     * EchoServer() constructor creates a server object given
     *  it port number and a number representing the number of
     *  clients it can backlog.
     * @param portNum -- an int giving the port number
     * @param nBacklog -- the number of clients that can backlog
     */    
    public EchoServer(int portNum, int nBacklog)  {
        try {
            port = new ServerSocket (portNum, nBacklog);
        } catch (IOException e) {
            e.printStackTrace();
        }     
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
                socket = port.accept();
                System.out.println("Echo Server at port number: " + port + " Accepted a connection from " + socket.getInetAddress());
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
        try {   
            System.out.println("providing service...");
            String str="";
                str = readFromSocket(socket);
                if (str.equals("1234567887654321"))
                    writeToSocket(socket, "valid");
                else
                    writeToSocket(socket, "invalid");
        } catch (IOException e) {
            e.printStackTrace();
        }
    } // provideServer()

     /** 
      *  main() creates an EchoServer at port 10001
      */
    public static void main(String args[]) {
        EchoServer server = new EchoServer(10001,5);
        server.start();
    } // main()
} // EchoServer