/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PaymentGateway;

import java.io.*;    
import java.net.*;   

public class ClientServer extends Thread {

    protected InputStream iStream;            // Instance variables
    protected OutputStream oStream; 

    /**
     *  readFromSocket() reads one line of data from a socket and
     *   returns it as a cardNumbering
     *  @param sock -- a reference to the Socket object
     */
    protected String readFromSocket(Socket sock) throws IOException {
        iStream = sock.getInputStream();
        String cardNumber="";
        char c;
        while (  ( c = (char) iStream.read() ) != '\n') 
            cardNumber = cardNumber + c + "";
            return cardNumber;
        }

    /**
     *  writeToSocket() reads a String to a given socket
     *  @param sock -- a reference to the Socket object
     *  @param cardNumber -- the cardNumbering to be written
     */
    protected void writeToSocket(Socket sock, String cardNumber) throws IOException {
        oStream = sock.getOutputStream();
        if (cardNumber.charAt( cardNumber.length() - 1 ) != '\n')
            cardNumber = cardNumber + '\n';
        for (int k = 0; k < cardNumber.length() ; k++)
            oStream.write(cardNumber.charAt(k));
    } // writeToSocket()
} // ClientServer
